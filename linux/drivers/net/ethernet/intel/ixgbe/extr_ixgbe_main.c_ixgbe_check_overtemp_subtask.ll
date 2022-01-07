; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_check_overtemp_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_check_overtemp_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, i32 }
%struct.ixgbe_hw = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.1 = type opaque

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IXGBE_FLAG2_TEMP_SENSOR_EVENT = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP0_8259X = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_ERR_OVERTEMP = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ixgbe_overheat_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_check_overtemp_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_check_overtemp_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @__IXGBE_DOWN, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %123

19:                                               ; preds = %1
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_EVENT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %123

27:                                               ; preds = %19
  %28 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_EVENT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %100 [
    i32 130, label %37
    i32 129, label %86
    i32 128, label %86
  ]

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IXGBE_EICR_GPI_SDP0_8259X, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %123

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %57, align 8
  %59 = icmp ne i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.0*
  %68 = call i32 %65(%struct.ixgbe_hw.0* %67, i32* %6, i32* %7, i32 0)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %123

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %53, %48
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.1*
  %81 = call i32 %78(%struct.ixgbe_hw.1* %80)
  %82 = load i32, i32* @IXGBE_ERR_OVERTEMP, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %123

85:                                               ; preds = %73
  br label %117

86:                                               ; preds = %27, %27
  %87 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %90, align 8
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = bitcast %struct.ixgbe_hw* %92 to %struct.ixgbe_hw.1*
  %94 = call i32 %91(%struct.ixgbe_hw.1* %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @IXGBE_ERR_OVERTEMP, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %123

99:                                               ; preds = %86
  br label %117

100:                                              ; preds = %27
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ixgbe_mac_X540, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %123

109:                                              ; preds = %100
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = call i32 @IXGBE_EICR_GPI_SDP0(%struct.ixgbe_hw* %111)
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %123

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %99, %85
  %118 = load i32, i32* @drv, align 4
  %119 = load i32, i32* @ixgbe_overheat_msg, align 4
  %120 = call i32 @e_crit(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %117, %115, %108, %98, %84, %71, %47, %26, %18
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IXGBE_EICR_GPI_SDP0(%struct.ixgbe_hw*) #1

declare dso_local i32 @e_crit(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
