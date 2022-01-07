; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hw_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hw_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp251x_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32, i64, i32 }

@SPI_TRANSFER_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot allocate RX skb\0A\00", align 1
@RXBSIDL_OFF = common dso_local global i64 0, align 8
@RXBSIDL_IDE = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@RXBSIDL_EID = common dso_local global i32 0, align 4
@RXBEID8_OFF = common dso_local global i64 0, align 8
@RXBEID0_OFF = common dso_local global i64 0, align 8
@RXBSIDH_OFF = common dso_local global i64 0, align 8
@RXBSIDH_SHIFT = common dso_local global i32 0, align 4
@RXBSIDL_SHIFT = common dso_local global i32 0, align 4
@RXBDLC_OFF = common dso_local global i64 0, align 8
@RXBDLC_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@RXBSIDL_SRR = common dso_local global i32 0, align 4
@RXBDLC_LEN_MASK = common dso_local global i32 0, align 4
@RXBDAT_OFF = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @mcp251x_hw_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp251x_hw_rx(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcp251x_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %11)
  store %struct.mcp251x_priv* %12, %struct.mcp251x_priv** %5, align 8
  %13 = load i32, i32* @SPI_TRANSFER_BUF_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__* %19, %struct.can_frame** %7)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %2
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  store i32 1, i32* %10, align 4
  br label %166

34:                                               ; preds = %2
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mcp251x_hw_rx_frame(%struct.spi_device* %35, i32* %16, i32 %36)
  %38 = load i64, i64* @RXBSIDL_OFF, align 8
  %39 = getelementptr inbounds i32, i32* %16, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RXBSIDL_IDE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %94

44:                                               ; preds = %34
  %45 = load i32, i32* @CAN_EFF_FLAG, align 4
  %46 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* @RXBSIDL_OFF, align 8
  %49 = getelementptr inbounds i32, i32* %16, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RXBSIDL_EID, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @SET_BYTE(i32 %52, i32 2)
  %54 = load i64, i64* @RXBEID8_OFF, align 8
  %55 = getelementptr inbounds i32, i32* %16, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SET_BYTE(i32 %56, i32 1)
  %58 = or i32 %53, %57
  %59 = load i64, i64* @RXBEID0_OFF, align 8
  %60 = getelementptr inbounds i32, i32* %16, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SET_BYTE(i32 %61, i32 0)
  %63 = or i32 %58, %62
  %64 = load i64, i64* @RXBSIDH_OFF, align 8
  %65 = getelementptr inbounds i32, i32* %16, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RXBSIDH_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i64, i64* @RXBSIDL_OFF, align 8
  %70 = getelementptr inbounds i32, i32* %16, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RXBSIDL_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = or i32 %68, %73
  %75 = shl i32 %74, 18
  %76 = or i32 %63, %75
  %77 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %78 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i64, i64* @RXBDLC_OFF, align 8
  %82 = getelementptr inbounds i32, i32* %16, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RXBDLC_RTR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %44
  %88 = load i32, i32* @CAN_RTR_FLAG, align 4
  %89 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %44
  br label %121

94:                                               ; preds = %34
  %95 = load i64, i64* @RXBSIDH_OFF, align 8
  %96 = getelementptr inbounds i32, i32* %16, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RXBSIDH_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i64, i64* @RXBSIDL_OFF, align 8
  %101 = getelementptr inbounds i32, i32* %16, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RXBSIDL_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = or i32 %99, %104
  %106 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %107 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* @RXBSIDL_OFF, align 8
  %109 = getelementptr inbounds i32, i32* %16, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RXBSIDL_SRR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %94
  %115 = load i32, i32* @CAN_RTR_FLAG, align 4
  %116 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %117 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %94
  br label %121

121:                                              ; preds = %120, %93
  %122 = load i64, i64* @RXBDLC_OFF, align 8
  %123 = getelementptr inbounds i32, i32* %16, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RXBDLC_LEN_MASK, align 4
  %126 = and i32 %124, %125
  %127 = call i64 @get_can_dlc(i32 %126)
  %128 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %129 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %131 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RXBDAT_OFF, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %16, i64 %134
  %136 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %137 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @memcpy(i32 %132, i32* %135, i64 %138)
  %140 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %141 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %140, i32 0, i32 0
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %148 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %151 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %149
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %5, align 8
  %160 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %163 = call i32 @can_led_event(%struct.TYPE_5__* %161, i32 %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = call i32 @netif_rx_ni(%struct.sk_buff* %164)
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %121, %23
  %167 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %10, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

declare dso_local %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_5__*, %struct.can_frame**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mcp251x_hw_rx_frame(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @SET_BYTE(i32, i32) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @can_led_event(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
