; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_eee_i350.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_set_eee_i350.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@e1000_i350 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_IPCNFG = common dso_local global i32 0, align 4
@E1000_EEER = common dso_local global i32 0, align 4
@E1000_EEE_SU = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_100M_AN = common dso_local global i32 0, align 4
@E1000_IPCNFG_EEE_1G_AN = common dso_local global i32 0, align 4
@E1000_EEER_TX_LPI_EN = common dso_local global i32 0, align 4
@E1000_EEER_RX_LPI_EN = common dso_local global i32 0, align 4
@E1000_EEER_LPI_FC = common dso_local global i32 0, align 4
@E1000_EEE_SU_LPI_CLK_STP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"LPI Clock Stop Bit should not be set!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_set_eee_i350(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_i350, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_media_type_copper, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  br label %102

24:                                               ; preds = %16
  %25 = load i32, i32* @E1000_IPCNFG, align 4
  %26 = call i32 @rd32(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @E1000_EEER, align 4
  %28 = call i32 @rd32(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @E1000_EEE_SU, align 4
  %37 = call i32 @rd32(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %63 = load i32, i32* @E1000_EEER_RX_LPI_EN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @E1000_EEER_LPI_FC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @E1000_EEE_SU_LPI_CLK_STP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %61
  br label %91

76:                                               ; preds = %24
  %77 = load i32, i32* @E1000_IPCNFG_EEE_1G_AN, align 4
  %78 = load i32, i32* @E1000_IPCNFG_EEE_100M_AN, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @E1000_EEER_TX_LPI_EN, align 4
  %84 = load i32, i32* @E1000_EEER_RX_LPI_EN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @E1000_EEER_LPI_FC, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %76, %75
  %92 = load i32, i32* @E1000_IPCNFG, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @wr32(i32 %92, i32 %93)
  %95 = load i32, i32* @E1000_EEER, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @wr32(i32 %95, i32 %96)
  %98 = load i32, i32* @E1000_IPCNFG, align 4
  %99 = call i32 @rd32(i32 %98)
  %100 = load i32, i32* @E1000_EEER, align 4
  %101 = call i32 @rd32(i32 %100)
  br label %102

102:                                              ; preds = %91, %23
  ret i32 0
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
