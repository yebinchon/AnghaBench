; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54s_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.p54_hdr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SPI_ADRS_HOST_INTERRUPTS = common dso_local global i32 0, align 4
@SPI_HOST_INT_WR_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"WR_READY timeout\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54s_priv*, %struct.sk_buff*)* @p54spi_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_tx_frame(%struct.p54s_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p54s_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.p54_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.p54s_priv* %0, %struct.p54s_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.p54_hdr*
  store %struct.p54_hdr* %11, %struct.p54_hdr** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %13 = call i64 @p54spi_wakeup(%struct.p54s_priv* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %20 = load %struct.p54_hdr*, %struct.p54_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @p54spi_spi_write_dma(%struct.p54s_priv* %19, i32 %22, i64 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %61

33:                                               ; preds = %18
  %34 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %35 = load i32, i32* @SPI_ADRS_HOST_INTERRUPTS, align 4
  %36 = load i32, i32* @SPI_HOST_INT_WR_READY, align 4
  %37 = call i32 @p54spi_wait_bit(%struct.p54s_priv* %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %41 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %61

47:                                               ; preds = %33
  %48 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %49 = load i32, i32* @SPI_HOST_INT_WR_READY, align 4
  %50 = call i32 @p54spi_int_ack(%struct.p54s_priv* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i64 @FREE_AFTER_TX(%struct.sk_buff* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %56 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @p54_free_skb(i32 %57, %struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %39, %32
  %62 = load %struct.p54s_priv*, %struct.p54s_priv** %4, align 8
  %63 = call i32 @p54spi_sleep(%struct.p54s_priv* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @p54spi_wakeup(%struct.p54s_priv*) #1

declare dso_local i32 @p54spi_spi_write_dma(%struct.p54s_priv*, i32, i64, i32) #1

declare dso_local i32 @p54spi_wait_bit(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @p54spi_int_ack(%struct.p54s_priv*, i32) #1

declare dso_local i64 @FREE_AFTER_TX(%struct.sk_buff*) #1

declare dso_local i32 @p54_free_skb(i32, %struct.sk_buff*) #1

declare dso_local i32 @p54spi_sleep(%struct.p54s_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
