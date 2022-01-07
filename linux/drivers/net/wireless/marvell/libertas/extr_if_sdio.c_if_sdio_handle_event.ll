; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i64, i32, i32 }

@MODEL_8385 = common dso_local global i64 0, align 8
@IF_SDIO_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"event packet too small (%d bytes)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*, i32*, i32)* @if_sdio_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_handle_event(%struct.if_sdio_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %10 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MODEL_8385, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %16 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IF_SDIO_EVENT, align 4
  %19 = call i32 @sdio_readb(i32 %17, i32 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %64

23:                                               ; preds = %14
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 3
  store i32 %25, i32* %8, align 4
  br label %57

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %64

34:                                               ; preds = %26
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 0
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %34, %23
  %58 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %59 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @lbs_queue_event(i32 %60, i32 %62)
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %57, %29, %22
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @lbs_queue_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
