; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_eee_config_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_eee_config_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_link_info, %struct.ethtool_eee }
%struct.bnxt_link_info = type { i32, i32 }
%struct.ethtool_eee = type { i32, i32, i64 }

@BNXT_FLAG_EEE_CAP = common dso_local global i32 0, align 4
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_eee_config_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_eee_config_ok(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.ethtool_eee*, align 8
  %5 = alloca %struct.bnxt_link_info*, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 2
  store %struct.ethtool_eee* %8, %struct.ethtool_eee** %4, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  store %struct.bnxt_link_info* %10, %struct.bnxt_link_info** %5, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BNXT_FLAG_EEE_CAP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  %19 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %25 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @_bnxt_fw_to_ethtool_adv_spds(i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  store i32 0, i32* %2, align 4
  br label %55

37:                                               ; preds = %23
  %38 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %55

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %18
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %45, %34, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @_bnxt_fw_to_ethtool_adv_spds(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
