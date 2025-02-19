; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_settings_link_up_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_settings_link_up_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_link_ksettings = type { i32 }

@supported = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@FEC_BASER = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_REQUEST_RS = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_REQUEST_KR = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ethtool_link_ksettings*)* @i40e_get_settings_link_up_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_settings_link_up_fec(i32 %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %5 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load i32, i32* @supported, align 4
  %7 = load i32, i32* @FEC_NONE, align 4
  %8 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %5, i32 %6, i32 %7)
  %9 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %10 = load i32, i32* @supported, align 4
  %11 = load i32, i32* @FEC_RS, align 4
  %12 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %9, i32 %10, i32 %11)
  %13 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %14 = load i32, i32* @supported, align 4
  %15 = load i32, i32* @FEC_BASER, align 4
  %16 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @I40E_AQ_SET_FEC_REQUEST_RS, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %23 = load i32, i32* @advertising, align 4
  %24 = load i32, i32* @FEC_RS, align 4
  %25 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %22, i32 %23, i32 %24)
  br label %56

26:                                               ; preds = %2
  %27 = load i32, i32* @I40E_AQ_SET_FEC_REQUEST_KR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %33 = load i32, i32* @advertising, align 4
  %34 = load i32, i32* @FEC_BASER, align 4
  %35 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %32, i32 %33, i32 %34)
  br label %55

36:                                               ; preds = %26
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %38 = load i32, i32* @advertising, align 4
  %39 = load i32, i32* @FEC_NONE, align 4
  %40 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @I40E_AQ_SET_FEC_AUTO, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %47 = load i32, i32* @advertising, align 4
  %48 = load i32, i32* @FEC_RS, align 4
  %49 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %46, i32 %47, i32 %48)
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %51 = load i32, i32* @advertising, align 4
  %52 = load i32, i32* @FEC_BASER, align 4
  %53 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54, %31
  br label %56

56:                                               ; preds = %55, %21
  ret void
}

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
