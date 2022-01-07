; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_read_rx_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_read_rx_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i32, i32, i32 }

@IF_SDIO_RX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i32*)* @if_sdio_read_rx_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_read_rx_len(%struct.if_sdio_card* %0, i32* %1) #0 {
  %3 = alloca %struct.if_sdio_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %8 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %14 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %13
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %12 = call i32 @if_sdio_read_scratch(%struct.if_sdio_card* %11, i32* %5)
  store i32 %12, i32* %6, align 4
  br label %30

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %2, %13
  %15 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %16 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IF_SDIO_RX_LEN, align 4
  %19 = call i32 @sdio_readb(i32 %17, i32 %18, i32* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %24 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %29

28:                                               ; preds = %14
  store i32 65535, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %10
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @if_sdio_read_scratch(%struct.if_sdio_card*, i32*) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
