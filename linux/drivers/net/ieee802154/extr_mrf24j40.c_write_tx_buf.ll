; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_write_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_write_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { i32*, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@TX_FIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"write_tx_buf() was passed too large a buffer. Performing short write.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SPI write Failed for TX buf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrf24j40*, i32, i32*, i64)* @write_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tx_buf(%struct.mrf24j40* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.mrf24j40*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mrf24j40* %0, %struct.mrf24j40** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i32, i32* @TX_FIFO_SIZE, align 4
  %13 = sub nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %18 = call i32 @printdev(%struct.mrf24j40* %17)
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @TX_FIFO_SIZE, align 4
  %21 = sub nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %16, %4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @MRF24J40_WRITELONG(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %30 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %36 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %40 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 0, i32* %42, align 4
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %46 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %51 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* %49, i32** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %55 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %58 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %61 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %60, i32 0, i32 2
  %62 = call i32 @spi_async(i32 %59, i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %23
  %66 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %67 = call i32 @printdev(%struct.mrf24j40* %66)
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %23
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @MRF24J40_WRITELONG(i32) #1

declare dso_local i32 @spi_async(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
