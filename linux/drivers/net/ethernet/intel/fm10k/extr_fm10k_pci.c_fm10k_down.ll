; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.TYPE_6__*, i32*, i32, %struct.fm10k_hw, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fm10k_hw.0*)* }
%struct.fm10k_hw.0 = type opaque
%struct.net_device = type { i32 }

@__FM10K_DOWN = common dso_local global i32 0, align 4
@__FM10K_UPDATING_STATS = common dso_local global i32 0, align 4
@FM10K_ERR_REQUESTS_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Tx queues failed to drain after %d tries. Tx DMA is probably hung.\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"due to pending requests hw was not shut down gracefully\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"stop_hw failed: %d\0A\00", align 1
@TX_DMA_DRAIN_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_down(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 5
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 4
  store %struct.fm10k_hw* %12, %struct.fm10k_hw** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @__FM10K_DOWN, align 4
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @test_and_set_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %145

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netif_tx_disable(%struct.net_device* %25)
  %27 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %28 = call i32 @fm10k_reset_rx_state(%struct.fm10k_intfc* %27)
  %29 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %30 = call i32 @fm10k_napi_disable_all(%struct.fm10k_intfc* %29)
  %31 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %32 = call i32 @fm10k_update_stats(%struct.fm10k_intfc* %31)
  br label %33

33:                                               ; preds = %40, %20
  %34 = load i32, i32* @__FM10K_UPDATING_STATS, align 4
  %35 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %36 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @test_and_set_bit(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %33

42:                                               ; preds = %33
  %43 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %44 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @FM10K_REMOVED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %111

49:                                               ; preds = %42
  %50 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %51 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %53, align 8
  %55 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %56 = bitcast %struct.fm10k_hw* %55 to %struct.fm10k_hw.0*
  %57 = call i32 %54(%struct.fm10k_hw.0* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FM10K_ERR_REQUESTS_PENDING, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %111

62:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %97, %62
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 25
  br i1 %65, label %66, label %100

66:                                               ; preds = %63
  %67 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %68

68:                                               ; preds = %86, %66
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %71 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %76 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @fm10k_get_tx_pending(i32 %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %89

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %68

89:                                               ; preds = %84, %68
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %92 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %100

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %63

100:                                              ; preds = %95, %63
  %101 = load i32, i32* %7, align 4
  %102 = icmp sge i32 %101, 25
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %105 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %103, %100
  br label %111

111:                                              ; preds = %110, %61, %48
  %112 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %113 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %115, align 8
  %117 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %118 = bitcast %struct.fm10k_hw* %117 to %struct.fm10k_hw.0*
  %119 = call i32 %116(%struct.fm10k_hw.0* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @FM10K_ERR_REQUESTS_PENDING, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %111
  %124 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %125 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %140

129:                                              ; preds = %111
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %134 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %129
  br label %140

140:                                              ; preds = %139, %123
  %141 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %142 = call i32 @fm10k_clean_all_tx_rings(%struct.fm10k_intfc* %141)
  %143 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %144 = call i32 @fm10k_clean_all_rx_rings(%struct.fm10k_intfc* %143)
  br label %145

145:                                              ; preds = %140, %19
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @fm10k_reset_rx_state(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_napi_disable_all(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_update_stats(%struct.fm10k_intfc*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @FM10K_REMOVED(i32) #1

declare dso_local i64 @fm10k_get_tx_pending(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @fm10k_clean_all_tx_rings(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clean_all_rx_rings(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
