; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XCAN_IXR_RXOK_MASK = common dso_local global i32 0, align 4
@XCAN_FLAG_RX_FIFO_MULTI = common dso_local global i32 0, align 4
@XCAN_FSR_OFFSET = common dso_local global i32 0, align 4
@XCAN_FSR_IRI_MASK = common dso_local global i32 0, align 4
@XCAN_ICR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_RXNEMP_MASK = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@XCAN_IER_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @xcan_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_rx_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xcan_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.xcan_priv* %14, %struct.xcan_priv** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %71, %2
  %16 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %17 = call i32 @xcan_rx_fifo_get_next_frame(%struct.xcan_priv* %16)
  store i32 %17, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %72

25:                                               ; preds = %23
  %26 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %27 = call i32 @xcan_rx_int_mask(%struct.xcan_priv* %26)
  %28 = load i32, i32* @XCAN_IXR_RXOK_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @xcanfd_rx(%struct.net_device* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %47

39:                                               ; preds = %25
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @xcan_rx(%struct.net_device* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %49 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @XCAN_FLAG_RX_FIFO_MULTI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %57 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %56, i32 0, i32 1
  %58 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %57, align 8
  %59 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %60 = load i32, i32* @XCAN_FSR_OFFSET, align 4
  %61 = load i32, i32* @XCAN_FSR_IRI_MASK, align 4
  %62 = call i32 %58(%struct.xcan_priv* %59, i32 %60, i32 %61)
  br label %71

63:                                               ; preds = %47
  %64 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %65 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %64, i32 0, i32 1
  %66 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %65, align 8
  %67 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %68 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %69 = load i32, i32* @XCAN_IXR_RXNEMP_MASK, align 4
  %70 = call i32 %66(%struct.xcan_priv* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %63, %55
  br label %15

72:                                               ; preds = %23
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %78 = call i32 @can_led_event(%struct.net_device* %76, i32 %77)
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call i32 @xcan_update_error_state_after_rxtx(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @napi_complete_done(%struct.napi_struct* %86, i32 %87)
  %89 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %90 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %89, i32 0, i32 0
  %91 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %90, align 8
  %92 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %93 = load i32, i32* @XCAN_IER_OFFSET, align 4
  %94 = call i32 %91(%struct.xcan_priv* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %96 = call i32 @xcan_rx_int_mask(%struct.xcan_priv* %95)
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %100 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %99, i32 0, i32 1
  %101 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %100, align 8
  %102 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %103 = load i32, i32* @XCAN_IER_OFFSET, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 %101(%struct.xcan_priv* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %85, %81
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xcan_rx_fifo_get_next_frame(%struct.xcan_priv*) #1

declare dso_local i32 @xcan_rx_int_mask(%struct.xcan_priv*) #1

declare dso_local i64 @xcanfd_rx(%struct.net_device*, i32) #1

declare dso_local i64 @xcan_rx(%struct.net_device*, i32) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @xcan_update_error_state_after_rxtx(%struct.net_device*) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
