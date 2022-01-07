; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-audio.c_cx231xx_isoc_audio_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-audio.c_cx231xx_isoc_audio_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32**, i32** }

@.str = private unnamed_addr constant [15 x i8] c"Stopping isoc\0A\00", align 1
@CX231XX_AUDIO_BUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*)* @cx231xx_isoc_audio_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_isoc_audio_deinit(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %4 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %79, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CX231XX_AUDIO_BUFS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %82

12:                                               ; preds = %8
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %12
  %23 = call i32 (...) @irqs_disabled()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @usb_kill_urb(i32* %33)
  br label %45

35:                                               ; preds = %22
  %36 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @usb_unlink_urb(i32* %43)
  br label %45

45:                                               ; preds = %35, %25
  %46 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @usb_free_urb(i32* %53)
  %55 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %56 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* null, i32** %61, align 8
  %62 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %63 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %72 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %45, %12
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %8

82:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_unlink_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
