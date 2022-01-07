; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_vol_put_mute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_vol_put_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.em28xx = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%sleft vol %d, right vol %d (0x%04x) to ac97 volume control 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"muted \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @em28xx_vol_put_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_vol_put_mute(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.em28xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.em28xx* %12, %struct.em28xx** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %21 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %22, align 8
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %33 = icmp ne %struct.snd_pcm_substream* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %34, %31
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 0
  %50 = call i32 @mutex_trylock(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %112

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %62 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %63 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @em28xx_read_ac97(%struct.em28xx* %61, i64 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %107

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 7967
  store i32 %74, i32* %10, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, 32768
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %80 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %81 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @em28xx_write_ac97(%struct.em28xx* %79, i64 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %107

88:                                               ; preds = %78
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 32768
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i32, i32* %7, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 31
  %97 = sub nsw i32 31, %96
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 31
  %100 = sub nsw i32 31, %99
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %103 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @dprintk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %93, i32 %97, i32 %100, i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %88, %87, %68
  %108 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %109 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %52, %28
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.em28xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @em28xx_read_ac97(%struct.em28xx*, i64) #1

declare dso_local i32 @em28xx_write_ac97(%struct.em28xx*, i64, i32) #1

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
