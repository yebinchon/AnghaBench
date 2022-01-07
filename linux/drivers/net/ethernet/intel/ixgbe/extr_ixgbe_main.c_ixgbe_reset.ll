; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.net_device*, i32, i32, %struct.ixgbe_hw }
%struct.net_device = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@IXGBE_FLAG2_SEARCH_FOR_SFP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_SFP_NEEDS_RESET = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"master disable timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [237 x i8] c"This device is a pre-production adapter/LOM. Please be aware there may be issues associated with your hardware.  If you are experiencing problems please contact your Intel or hardware representative who provided you with this hardware.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Hardware Error: %d\0A\00", align 1
@__IXGBE_PTP_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_reset(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 5
  store %struct.ixgbe_hw* %7, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ixgbe_removed(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %130

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 3
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %18

26:                                               ; preds = %18
  %27 = load i32, i32* @IXGBE_FLAG2_SEARCH_FOR_SFP, align 4
  %28 = load i32, i32* @IXGBE_FLAG2_SFP_NEEDS_RESET, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @IXGBE_FLAG_NEED_LINK_CONFIG, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.1*
  %48 = call i32 %45(%struct.ixgbe_hw.1* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %55 [
    i32 0, label %50
    i32 129, label %50
    i32 128, label %50
    i32 130, label %51
    i32 131, label %53
  ]

50:                                               ; preds = %26, %26, %26
  br label %58

51:                                               ; preds = %26
  %52 = call i32 (i8*, ...) @e_dev_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %58

53:                                               ; preds = %26
  %54 = call i32 @e_dev_warn(i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.1, i64 0, i64 0))
  br label %58

55:                                               ; preds = %26
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @e_dev_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %53, %51, %50
  %59 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 3
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %64 = call i32 @ixgbe_flush_sw_mac_table(%struct.ixgbe_adapter* %63)
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @__dev_uc_unsync(%struct.net_device* %65, i32* null)
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %68 = call i32 @ixgbe_mac_set_default_filter(%struct.ixgbe_adapter* %67)
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %58
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %78, align 8
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = bitcast %struct.ixgbe_hw* %80 to %struct.ixgbe_hw.2*
  %82 = call i32 @VMDQ_P(i32 0)
  %83 = call i32 %79(%struct.ixgbe_hw.2* %81, i32 %82)
  br label %84

84:                                               ; preds = %74, %58
  %85 = load i32, i32* @__IXGBE_PTP_RUNNING, align 4
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 3
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %92 = call i32 @ixgbe_ptp_reset(%struct.ixgbe_adapter* %91)
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.ixgbe_hw.0*, i32)* %98, null
  br i1 %99, label %100, label %130

100:                                              ; preds = %93
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 2
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  %104 = call i32 @netif_running(%struct.net_device* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %100
  %107 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %115, align 8
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %118 = bitcast %struct.ixgbe_hw* %117 to %struct.ixgbe_hw.0*
  %119 = call i32 %116(%struct.ixgbe_hw.0* %118, i32 0)
  br label %129

120:                                              ; preds = %106, %100
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %124, align 8
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %127 = bitcast %struct.ixgbe_hw* %126 to %struct.ixgbe_hw.0*
  %128 = call i32 %125(%struct.ixgbe_hw.0* %127, i32 1)
  br label %129

129:                                              ; preds = %120, %111
  br label %130

130:                                              ; preds = %16, %129, %93
  ret void
}

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dev_err(i8*, ...) #1

declare dso_local i32 @e_dev_warn(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_flush_sw_mac_table(%struct.ixgbe_adapter*) #1

declare dso_local i32 @__dev_uc_unsync(%struct.net_device*, i32*) #1

declare dso_local i32 @ixgbe_mac_set_default_filter(%struct.ixgbe_adapter*) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_ptp_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
