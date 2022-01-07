; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_read_scratch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_read_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i32*)* @if_sdio_read_scratch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_read_scratch(%struct.if_sdio_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %9 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %12 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sdio_readb(i32 %10, i64 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %19 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %22 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @sdio_readb(i32 %20, i64 %24, i32* %6)
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %17, %2
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 65535, i32* %3, align 4
  br label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @sdio_readb(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
