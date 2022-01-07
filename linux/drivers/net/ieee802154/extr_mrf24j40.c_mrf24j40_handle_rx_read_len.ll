; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_handle_rx_read_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_handle_rx_read_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { i32*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@mrf24j40_handle_rx_read_buf = common dso_local global i32 0, align 4
@REG_RX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to read rx buffer length\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mrf24j40_handle_rx_read_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_handle_rx_read_len(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mrf24j40*
  store %struct.mrf24j40* %7, %struct.mrf24j40** %3, align 8
  %8 = load i32, i32* @mrf24j40_handle_rx_read_buf, align 4
  %9 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %10 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %13 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 3, i32* %14, align 8
  %15 = load i32, i32* @REG_RX_FIFO, align 4
  %16 = call i32 @MRF24J40_READLONG(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %21 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %27 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %31 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %34 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %33, i32 0, i32 1
  %35 = call i32 @spi_async(i32 %32, %struct.TYPE_4__* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %40 = call i32 @printdev(%struct.mrf24j40* %39)
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %43 = call i32 @mrf24j40_handle_rx_read_buf_unlock(%struct.mrf24j40* %42)
  br label %44

44:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @MRF24J40_READLONG(i32) #1

declare dso_local i32 @spi_async(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @mrf24j40_handle_rx_read_buf_unlock(%struct.mrf24j40*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
