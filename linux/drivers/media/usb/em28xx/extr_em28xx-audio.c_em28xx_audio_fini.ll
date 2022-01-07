; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_audio_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_audio_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@EM28XX_USB_AUDIO_VENDOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Closing audio extension\0A\00", align 1
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_audio_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_audio_fini(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %4 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %5 = icmp ne %struct.em28xx* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

7:                                                ; preds = %1
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EM28XX_USB_AUDIO_VENDOR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %50

14:                                               ; preds = %7
  %15 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_info(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %14
  %26 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @snd_card_disconnect(i32* %29)
  %31 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %32 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @flush_work(i32* %33)
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = call i32 @em28xx_audio_free_urb(%struct.em28xx* %35)
  %37 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @snd_card_free(i32* %40)
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %25, %14
  %46 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 1
  %48 = load i32, i32* @em28xx_free_device, align 4
  %49 = call i32 @kref_put(i32* %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %13, %6
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @snd_card_disconnect(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @em28xx_audio_free_urb(%struct.em28xx*) #1

declare dso_local i32 @snd_card_free(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
