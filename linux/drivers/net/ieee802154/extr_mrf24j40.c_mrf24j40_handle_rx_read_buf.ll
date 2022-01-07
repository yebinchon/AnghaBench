; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_handle_rx_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_handle_rx_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { i32*, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE802154_MTU = common dso_local global i32 0, align 4
@REG_RX_FIFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to read rx buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mrf24j40_handle_rx_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_handle_rx_read_buf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mrf24j40*
  store %struct.mrf24j40* %7, %struct.mrf24j40** %3, align 8
  %8 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %9 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ieee802154_is_valid_psdu_len(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @IEEE802154_MTU, align 4
  %17 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %18 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i64, i64* @REG_RX_FIFO, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @MRF24J40_READLONG(i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 255
  %28 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %29 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %35 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %39 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %44 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %47 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %50 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %49, i32 0, i32 1
  %51 = call i32 @spi_async(i32 %48, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %21
  %55 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %56 = call i32 @printdev(%struct.mrf24j40* %55)
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %59 = call i32 @mrf24j40_handle_rx_read_buf_unlock(%struct.mrf24j40* %58)
  br label %60

60:                                               ; preds = %54, %21
  ret void
}

declare dso_local i32 @ieee802154_is_valid_psdu_len(i32) #1

declare dso_local i32 @MRF24J40_READLONG(i64) #1

declare dso_local i32 @spi_async(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @mrf24j40_handle_rx_read_buf_unlock(%struct.mrf24j40*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
