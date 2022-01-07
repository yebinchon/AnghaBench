; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.bnxt_pf_info, i32, i32 }
%struct.bnxt_pf_info = type { i32 }

@BNXT_STATE_ABORT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"A previous firmware reset did not complete, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BNXT_STATE_FW_RESET_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnxt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_pf_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnxt* @netdev_priv(%struct.net_device* %8)
  store %struct.bnxt* %9, %struct.bnxt** %4, align 8
  %10 = load i32, i32* @BNXT_STATE_ABORT_ERR, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netdev_err(i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %24 = call i32 @bnxt_hwrm_if_change(%struct.bnxt* %23, i32 1)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %64

29:                                               ; preds = %22
  %30 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %31 = call i32 @__bnxt_open_nic(%struct.bnxt* %30, i32 1, i32 1)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = call i32 @bnxt_hwrm_if_change(%struct.bnxt* %35, i32 0)
  br label %62

37:                                               ; preds = %29
  %38 = load i32, i32* @BNXT_STATE_FW_RESET_DET, align 4
  %39 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 1
  %41 = call i64 @test_and_clear_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %45 = call i64 @BNXT_PF(%struct.bnxt* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 0
  store %struct.bnxt_pf_info* %49, %struct.bnxt_pf_info** %6, align 8
  %50 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %6, align 8
  %51 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %57 = call i32 @bnxt_cfg_hw_sriov(%struct.bnxt* %56, i32* %7, i32 1)
  br label %58

58:                                               ; preds = %55, %47
  br label %59

59:                                               ; preds = %58, %43, %37
  %60 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %61 = call i32 @bnxt_hwmon_open(%struct.bnxt* %60)
  br label %62

62:                                               ; preds = %59, %34
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %27, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @bnxt_hwrm_if_change(%struct.bnxt*, i32) #1

declare dso_local i32 @__bnxt_open_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #1

declare dso_local i32 @bnxt_cfg_hw_sriov(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @bnxt_hwmon_open(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
