; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cobalt_card = type { %struct.cobalt_stream*, %struct.snd_card* }
%struct.cobalt_stream = type { i32, i32, %struct.TYPE_2__, %struct.cobalt* }
%struct.TYPE_2__ = type { i32 }
%struct.cobalt = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_pcm = type { i32, %struct.snd_cobalt_card*, i64 }

@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Cobalt PCM-In HDMI\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"snd_cobalt_pcm_create() failed for input with err %d\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_cobalt_pcm_capture_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"cobalt\00", align 1
@COBALT_SYS_CTRL_AUDIO_OPP_RESETN_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Cobalt PCM-Out HDMI\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"snd_cobalt_pcm_create() failed for output with err %d\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_cobalt_pcm_playback_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cobalt_pcm_create(%struct.snd_cobalt_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cobalt_card*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.cobalt_stream*, align 8
  %7 = alloca %struct.cobalt*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_cobalt_card* %0, %struct.snd_cobalt_card** %3, align 8
  %9 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %9, i32 0, i32 1
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %5, align 8
  %12 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %13 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %12, i32 0, i32 0
  %14 = load %struct.cobalt_stream*, %struct.cobalt_stream** %13, align 8
  store %struct.cobalt_stream* %14, %struct.cobalt_stream** %6, align 8
  %15 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %16 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %15, i32 0, i32 3
  %17 = load %struct.cobalt*, %struct.cobalt** %16, align 8
  store %struct.cobalt* %17, %struct.cobalt** %7, align 8
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %20 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 8
  %24 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %25 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %63, label %28

28:                                               ; preds = %1
  %29 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  %30 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %31 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @COBALT_SYS_CTRL_AUDIO_IPP_RESETN_BIT(i32 %32)
  %34 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %29, i32 %33, i32 0)
  %35 = call i32 @mdelay(i32 2)
  %36 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  %37 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %38 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @COBALT_SYS_CTRL_AUDIO_IPP_RESETN_BIT(i32 %39)
  %41 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %36, i32 %40, i32 1)
  %42 = call i32 @mdelay(i32 1)
  %43 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %44 = call i32 @snd_pcm_new(%struct.snd_card* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 1, %struct.snd_pcm** %4)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @cobalt_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %93

50:                                               ; preds = %28
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %52 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %53 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %51, i32 %52, i32* @snd_cobalt_pcm_capture_ops)
  %54 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 1
  store %struct.snd_cobalt_card* %56, %struct.snd_cobalt_card** %58, align 8
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strscpy(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %92

63:                                               ; preds = %1
  %64 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  %65 = load i32, i32* @COBALT_SYS_CTRL_AUDIO_OPP_RESETN_BIT, align 4
  %66 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %64, i32 %65, i32 0)
  %67 = call i32 @mdelay(i32 2)
  %68 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  %69 = load i32, i32* @COBALT_SYS_CTRL_AUDIO_OPP_RESETN_BIT, align 4
  %70 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %68, i32 %69, i32 1)
  %71 = call i32 @mdelay(i32 1)
  %72 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %73 = call i32 @snd_pcm_new(%struct.snd_card* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1, i32 0, %struct.snd_pcm** %4)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @cobalt_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %93

79:                                               ; preds = %63
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %81 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %82 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %80, i32 %81, i32* @snd_cobalt_pcm_playback_ops)
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %84 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %87 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %86, i32 0, i32 1
  store %struct.snd_cobalt_card* %85, %struct.snd_cobalt_card** %87, align 8
  %88 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %89 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strscpy(i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %92

92:                                               ; preds = %79, %50
  store i32 0, i32* %2, align 4
  br label %95

93:                                               ; preds = %76, %47
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @cobalt_s_bit_sysctrl(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @COBALT_SYS_CTRL_AUDIO_IPP_RESETN_BIT(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @cobalt_err(i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
