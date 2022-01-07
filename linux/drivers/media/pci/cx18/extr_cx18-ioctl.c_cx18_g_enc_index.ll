; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_g_enc_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_g_enc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enc_idx = type { i64, i32, i32 }
%struct.cx18 = type { %struct.cx18_stream* }
%struct.cx18_stream = type { i32, i32, i32, i32, i32 }
%struct.cx18_mdl = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.cx18* }

@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enc_idx*)* @cx18_g_enc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_enc_index(%struct.file* %0, i8* %1, %struct.v4l2_enc_idx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enc_idx*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.cx18_stream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cx18_mdl*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enc_idx* %2, %struct.v4l2_enc_idx** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_2__* @fh2id(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %8, align 8
  %16 = load %struct.cx18*, %struct.cx18** %8, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 0
  %18 = load %struct.cx18_stream*, %struct.cx18_stream** %17, align 8
  %19 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %20 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %18, i64 %19
  store %struct.cx18_stream* %20, %struct.cx18_stream** %9, align 8
  %21 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %22 = call i32 @cx18_stream_enabled(%struct.cx18_stream* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %99

27:                                               ; preds = %3
  %28 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %29 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %32 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sub nsw i32 %30, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %43 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memset(i32 %56, i32 0, i32 4)
  br label %58

58:                                               ; preds = %90, %40
  %59 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %60 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %61 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %60, i32 0, i32 4
  %62 = call %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream* %59, i32* %61)
  store %struct.cx18_mdl* %62, %struct.cx18_mdl** %11, align 8
  %63 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %64 = icmp eq %struct.cx18_mdl* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %96

66:                                               ; preds = %58
  %67 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %68 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %69 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %70 = call i32 @cx18_process_idx_data(%struct.cx18_stream* %67, %struct.cx18_mdl* %68, %struct.v4l2_enc_idx* %69)
  %71 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %72 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %75 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %66
  %79 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %80 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %81 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %82 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %81, i32 0, i32 4
  %83 = call i32 @cx18_push(%struct.cx18_stream* %79, %struct.cx18_mdl* %80, i32* %82)
  br label %96

84:                                               ; preds = %66
  %85 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %86 = load %struct.cx18_mdl*, %struct.cx18_mdl** %11, align 8
  %87 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %88 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %87, i32 0, i32 3
  %89 = call i32 @cx18_enqueue(%struct.cx18_stream* %85, %struct.cx18_mdl* %86, i32* %88)
  br label %90

90:                                               ; preds = %84
  %91 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @V4L2_ENC_IDX_ENTRIES, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %58, label %96

96:                                               ; preds = %90, %78, %65
  %97 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %98 = call i32 @cx18_stream_load_fw_queue(%struct.cx18_stream* %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %24
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i32 @cx18_stream_enabled(%struct.cx18_stream*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.cx18_mdl* @cx18_dequeue(%struct.cx18_stream*, i32*) #1

declare dso_local i32 @cx18_process_idx_data(%struct.cx18_stream*, %struct.cx18_mdl*, %struct.v4l2_enc_idx*) #1

declare dso_local i32 @cx18_push(%struct.cx18_stream*, %struct.cx18_mdl*, i32*) #1

declare dso_local i32 @cx18_enqueue(%struct.cx18_stream*, %struct.cx18_mdl*, i32*) #1

declare dso_local i32 @cx18_stream_load_fw_queue(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
