; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-alsa-pcm.c_snd_ivtv_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-alsa-pcm.c_snd_ivtv_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.ivtv*, i32 }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, i32, i32 }
%struct.snd_ivtv_card = type { %struct.snd_pcm_substream*, %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }
%struct.ivtv_open_id = type { i32, i32, %struct.ivtv* }

@ENXIO = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@snd_ivtv_hw_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@ivtv_alsa_announce_pcm_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ivtv_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ivtv_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ivtv_card*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  %9 = alloca %struct.ivtv_open_id, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_ivtv_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_ivtv_card* %12, %struct.snd_ivtv_card** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %5, align 8
  %16 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ivtv_card, %struct.snd_ivtv_card* %16, i32 0, i32 1
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %17, align 8
  store %struct.v4l2_device* %18, %struct.v4l2_device** %6, align 8
  %19 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %20 = call %struct.ivtv* @to_ivtv(%struct.v4l2_device* %19)
  store %struct.ivtv* %20, %struct.ivtv** %7, align 8
  %21 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %22 = call i32 @snd_ivtv_lock(%struct.snd_ivtv_card* %21)
  %23 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %24 = call i64 @ivtv_init_on_first_open(%struct.ivtv* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %28 = call i32 @snd_ivtv_unlock(%struct.snd_ivtv_card* %27)
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %98

31:                                               ; preds = %1
  %32 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 1
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %33, align 8
  %35 = load i64, i64* @IVTV_ENC_STREAM_TYPE_PCM, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i64 %35
  store %struct.ivtv_stream* %36, %struct.ivtv_stream** %8, align 8
  %37 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 0
  %38 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %39 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %38, i32 0, i32 2
  %40 = call i32 @v4l2_fh_init(i32* %37, i32* %39)
  %41 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %42 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 2
  store %struct.ivtv* %41, %struct.ivtv** %42, align 8
  %43 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %44 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ivtv_claim_stream(%struct.ivtv_open_id* %9, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 0
  %53 = call i32 @v4l2_fh_exit(i32* %52)
  %54 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %55 = call i32 @snd_ivtv_unlock(%struct.snd_ivtv_card* %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %98

58:                                               ; preds = %31
  %59 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %60 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %61 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %66 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %67 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %66, i32 0, i32 0
  %68 = call i64 @test_and_set_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %58
  %71 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %72 = call i32 @snd_ivtv_unlock(%struct.snd_ivtv_card* %71)
  store i32 0, i32* %2, align 4
  br label %98

73:                                               ; preds = %64
  %74 = load i32, i32* @snd_ivtv_hw_capture, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %78 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %79 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %77, i32 %78)
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %81 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ivtv_card, %struct.snd_ivtv_card* %81, i32 0, i32 0
  store %struct.snd_pcm_substream* %80, %struct.snd_pcm_substream** %82, align 8
  %83 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %84 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %84, i32 0, i32 0
  store %struct.ivtv* %83, %struct.ivtv** %85, align 8
  %86 = load i32, i32* @ivtv_alsa_announce_pcm_data, align 4
  %87 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %88 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %90 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %91 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  %93 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %94 = call i32 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream* %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %4, align 8
  %96 = call i32 @snd_ivtv_unlock(%struct.snd_ivtv_card* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %73, %70, %51, %26
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.snd_ivtv_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ivtv* @to_ivtv(%struct.v4l2_device*) #1

declare dso_local i32 @snd_ivtv_lock(%struct.snd_ivtv_card*) #1

declare dso_local i64 @ivtv_init_on_first_open(%struct.ivtv*) #1

declare dso_local i32 @snd_ivtv_unlock(%struct.snd_ivtv_card*) #1

declare dso_local i32 @v4l2_fh_init(i32*, i32*) #1

declare dso_local i64 @ivtv_claim_stream(%struct.ivtv_open_id*, i32) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
