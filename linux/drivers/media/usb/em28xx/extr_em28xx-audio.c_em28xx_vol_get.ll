; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_vol_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_vol_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.em28xx = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"%sleft vol %d, right vol %d (0x%04x) from ac97 volume control 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"muted \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @em28xx_vol_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_vol_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.em28xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.em28xx* %11, %struct.em28xx** %6, align 8
  %12 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, align 8
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %25 = icmp ne %struct.snd_pcm_substream* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @O_NONBLOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 0
  %42 = call i32 @mutex_trylock(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %36
  %49 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  br label %52

52:                                               ; preds = %48, %47
  %53 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %54 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @em28xx_read_ac97(%struct.em28xx* %53, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %103

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 32768
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 31
  %74 = sub nsw i32 31, %73
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 31
  %77 = sub nsw i32 31, %76
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %80 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @dprintk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %74, i32 %77, i32 %78, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 31
  %86 = sub nsw i32 31, %85
  %87 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %88 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 31
  %96 = sub nsw i32 31, %95
  %97 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %98 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %96, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %65, %63, %44, %20
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.em28xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @em28xx_read_ac97(%struct.em28xx*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
