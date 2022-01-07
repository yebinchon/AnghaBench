; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa-pcm.c_snd_cx18_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.cx18*, i32 }
%struct.cx18 = type { i32, i32, %struct.cx18_stream* }
%struct.cx18_stream = type { i32, i32 }
%struct.snd_cx18_card = type { %struct.snd_pcm_substream*, %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }
%struct.cx18_open_id = type { i32, i64, %struct.cx18* }

@CX18_ENC_STREAM_TYPE_PCM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CX18_F_S_STREAMOFF = common dso_local global i32 0, align 4
@CX18_F_S_STREAMING = common dso_local global i32 0, align 4
@snd_cx18_hw_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@cx18_alsa_announce_pcm_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx18_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx18_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_cx18_card*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca %struct.cx18_stream*, align 8
  %9 = alloca %struct.cx18_open_id, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_cx18_card* %12, %struct.snd_cx18_card** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %5, align 8
  %16 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %16, i32 0, i32 1
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %17, align 8
  store %struct.v4l2_device* %18, %struct.v4l2_device** %6, align 8
  %19 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %20 = call %struct.cx18* @to_cx18(%struct.v4l2_device* %19)
  store %struct.cx18* %20, %struct.cx18** %7, align 8
  %21 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %4, align 8
  %22 = call i32 @snd_cx18_lock(%struct.snd_cx18_card* %21)
  %23 = load %struct.cx18*, %struct.cx18** %7, align 8
  %24 = getelementptr inbounds %struct.cx18, %struct.cx18* %23, i32 0, i32 2
  %25 = load %struct.cx18_stream*, %struct.cx18_stream** %24, align 8
  %26 = load i64, i64* @CX18_ENC_STREAM_TYPE_PCM, align 8
  %27 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %25, i64 %26
  store %struct.cx18_stream* %27, %struct.cx18_stream** %8, align 8
  %28 = load %struct.cx18*, %struct.cx18** %7, align 8
  %29 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %9, i32 0, i32 2
  store %struct.cx18* %28, %struct.cx18** %29, align 8
  %30 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %31 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.cx18*, %struct.cx18** %7, align 8
  %35 = getelementptr inbounds %struct.cx18, %struct.cx18* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %9, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @cx18_claim_stream(%struct.cx18_open_id* %9, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %1
  %45 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %4, align 8
  %46 = call i32 @snd_cx18_unlock(%struct.snd_cx18_card* %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %89

49:                                               ; preds = %1
  %50 = load i32, i32* @CX18_F_S_STREAMOFF, align 4
  %51 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %52 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %57 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %58 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %57, i32 0, i32 0
  %59 = call i64 @test_and_set_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %49
  %62 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %4, align 8
  %63 = call i32 @snd_cx18_unlock(%struct.snd_cx18_card* %62)
  store i32 0, i32* %2, align 4
  br label %89

64:                                               ; preds = %55
  %65 = load i32, i32* @snd_cx18_hw_capture, align 4
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %70 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %68, i32 %69)
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %72 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %4, align 8
  %73 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %72, i32 0, i32 0
  store %struct.snd_pcm_substream* %71, %struct.snd_pcm_substream** %73, align 8
  %74 = load %struct.cx18*, %struct.cx18** %7, align 8
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  store %struct.cx18* %74, %struct.cx18** %76, align 8
  %77 = load i32, i32* @cx18_alsa_announce_pcm_data, align 4
  %78 = load %struct.cx18*, %struct.cx18** %7, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @CX18_F_S_STREAMING, align 4
  %81 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %82 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  %84 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %85 = call i32 @cx18_start_v4l2_encode_stream(%struct.cx18_stream* %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %4, align 8
  %87 = call i32 @snd_cx18_unlock(%struct.snd_cx18_card* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %64, %61, %44
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.snd_cx18_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.cx18* @to_cx18(%struct.v4l2_device*) #1

declare dso_local i32 @snd_cx18_lock(%struct.snd_cx18_card*) #1

declare dso_local i64 @cx18_claim_stream(%struct.cx18_open_id*, i32) #1

declare dso_local i32 @snd_cx18_unlock(%struct.snd_cx18_card*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_start_v4l2_encode_stream(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
