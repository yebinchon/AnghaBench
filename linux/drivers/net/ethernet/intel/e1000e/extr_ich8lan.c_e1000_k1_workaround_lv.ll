; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_k1_workaround_lv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_k1_workaround_lv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_pch2lan = common dso_local global i64 0, align 8
@HV_M_STATUS = common dso_local global i32 0, align 4
@HV_M_STATUS_LINK_UP = common dso_local global i32 0, align 4
@HV_M_STATUS_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_K1_ENABLE = common dso_local global i32 0, align 4
@FEXTNVM4 = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_MASK = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_16USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_k1_workaround_lv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_workaround_lv(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_pch2lan, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @HV_M_STATUS, align 4
  %18 = call i64 @e1e_rphy(%struct.e1000_hw* %16, i32 %17, i32* %5)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %2, align 8
  br label %78

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %26 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %30 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HV_M_STATUS_SPEED_1000, align 4
  %36 = load i32, i32* @HV_M_STATUS_SPEED_100, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @HV_PM_CTRL, align 4
  %43 = call i64 @e1e_rphy(%struct.e1000_hw* %41, i32 %42, i32* %6)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %78

48:                                               ; preds = %40
  %49 = load i32, i32* @HV_PM_CTRL_K1_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = load i32, i32* @HV_PM_CTRL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @e1e_wphy(%struct.e1000_hw* %53, i32 %54, i32 %55)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %2, align 8
  br label %78

61:                                               ; preds = %48
  br label %75

62:                                               ; preds = %33
  %63 = load i32, i32* @FEXTNVM4, align 4
  %64 = call i32 @er32(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_16USEC, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @FEXTNVM4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ew32(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %61
  br label %76

76:                                               ; preds = %75, %23
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %76, %59, %46, %21, %14
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
