; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa6752hs.c_saa6752hs_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.saa6752hs_state = type { %struct.saa6752hs_mpeg_params }
%struct.saa6752hs_mpeg_params = type { i64, i32, i32, i64, i64, i64 }

@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i64 0, align 8
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i64 0, align 8
@V4L2_MPEG_AUDIO_AC3_BITRATE_384K = common dso_local global i64 0, align 8
@V4L2_MPEG_AUDIO_L2_BITRATE_384K = common dso_local global i64 0, align 8
@MPEG_TOTAL_TARGET_BITRATE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.saa6752hs_state*)* @saa6752hs_set_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_set_bitrate(%struct.i2c_client* %0, %struct.saa6752hs_state* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.saa6752hs_state*, align 8
  %5 = alloca %struct.saa6752hs_mpeg_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.saa6752hs_state* %1, %struct.saa6752hs_state** %4, align 8
  %8 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %4, align 8
  %9 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %8, i32 0, i32 0
  store %struct.saa6752hs_mpeg_params* %9, %struct.saa6752hs_mpeg_params** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %12 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @set_reg8(%struct.i2c_client* %10, i32 113, i32 %16)
  %18 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %19 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %26 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @set_reg16(%struct.i2c_client* %24, i32 128, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %31 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @set_reg16(%struct.i2c_client* %29, i32 129, i32 %32)
  %34 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %35 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %40 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @set_reg16(%struct.i2c_client* %38, i32 129, i32 %41)
  %43 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %44 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %37, %23
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %49 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @set_reg8(%struct.i2c_client* %47, i32 147, i32 %53)
  %55 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %56 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i64, i64* @V4L2_MPEG_AUDIO_AC3_BITRATE_384K, align 8
  %62 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %63 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %7, align 4
  br label %74

67:                                               ; preds = %46
  %68 = load i64, i64* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 8
  %69 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %5, align 8
  %70 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @set_reg8(%struct.i2c_client* %75, i32 148, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 384, i32 256
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 768
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MPEG_TOTAL_TARGET_BITRATE_MAX, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  %90 = load i32, i32* @MPEG_TOTAL_TARGET_BITRATE_MAX, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %74
  %92 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @set_reg16(%struct.i2c_client* %92, i32 177, i32 %93)
  ret i32 0
}

declare dso_local i32 @set_reg8(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @set_reg16(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
