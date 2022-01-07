; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hw_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hw_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mcp251x_priv = type { i32, i32* }

@RXBDAT_OFF = common dso_local global i32 0, align 4
@RXBDLC_OFF = common dso_local global i64 0, align 8
@RXBDLC_LEN_MASK = common dso_local global i32 0, align 4
@RXBCTRL_OFF = common dso_local global i64 0, align 8
@SPI_TRANSFER_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32*, i32)* @mcp251x_hw_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp251x_hw_rx_frame(%struct.spi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mcp251x_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %11 = call %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.mcp251x_priv* %11, %struct.mcp251x_priv** %7, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = call i64 @mcp251x_is_2510(%struct.spi_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @RXBDAT_OFF, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @RXBCTRL(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @mcp251x_read_reg(%struct.spi_device* %21, i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* @RXBDLC_OFF, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RXBDLC_LEN_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @get_can_dlc(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %61, %35
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RXBDAT_OFF, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @RXBCTRL(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @mcp251x_read_reg(%struct.spi_device* %50, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %43

64:                                               ; preds = %43
  br label %82

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @INSTRUCTION_READ_RXB(i32 %66)
  %68 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %69 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @RXBCTRL_OFF, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %74 = load i32, i32* @SPI_TRANSFER_BUF_LEN, align 4
  %75 = call i32 @mcp251x_spi_trans(%struct.spi_device* %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %7, align 8
  %78 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SPI_TRANSFER_BUF_LEN, align 4
  %81 = call i32 @memcpy(i32* %76, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %65, %64
  ret void
}

declare dso_local %struct.mcp251x_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i64 @mcp251x_is_2510(%struct.spi_device*) #1

declare dso_local i32 @mcp251x_read_reg(%struct.spi_device*, i64) #1

declare dso_local i64 @RXBCTRL(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @INSTRUCTION_READ_RXB(i32) #1

declare dso_local i32 @mcp251x_spi_trans(%struct.spi_device*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
