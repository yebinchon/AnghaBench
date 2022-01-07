; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_setup_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_setup_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@e1000_pch_spt = common dso_local global i32 0, align 4
@FEXTNVM11 = common dso_local global i32 0, align 4
@E1000_FEXTNVM11_DISABLE_MULR_FIX = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_setup_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_loopback_test(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @e1000_pch_spt, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load i32, i32* @FEXTNVM11, align 4
  %18 = call i32 @er32(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @E1000_FEXTNVM11_DISABLE_MULR_FIX, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @FEXTNVM11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ew32(i32 %22, i32 %23)
  %25 = call i32 @TARC(i32 0)
  %26 = call i32 @er32(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -805306369
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 536870912
  store i32 %30, i32* %7, align 4
  %31 = call i32 @TARC(i32 0)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ew32(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %16, %1
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @e1000_media_type_fiber, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %41, %34
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %59 [
    i32 130, label %53
    i32 129, label %56
    i32 128, label %56
  ]

53:                                               ; preds = %48
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %55 = call i32 @e1000_set_es2lan_mac_loopback(%struct.e1000_adapter* %54)
  store i32 %55, i32* %2, align 4
  br label %80

56:                                               ; preds = %48, %48
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %58 = call i32 @e1000_set_82571_fiber_loopback(%struct.e1000_adapter* %57)
  store i32 %58, i32* %2, align 4
  br label %80

59:                                               ; preds = %48
  %60 = load i32, i32* @RCTL, align 4
  %61 = call i32 @er32(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @RCTL, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ew32(i32 %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %80

68:                                               ; preds = %41
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @e1000_media_type_copper, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %77 = call i32 @e1000_integrated_phy_loopback(%struct.e1000_adapter* %76)
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  store i32 7, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %75, %59, %56, %53
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TARC(i32) #1

declare dso_local i32 @e1000_set_es2lan_mac_loopback(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_set_82571_fiber_loopback(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_integrated_phy_loopback(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
