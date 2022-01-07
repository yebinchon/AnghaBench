; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_enc_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_enc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enc_idx = type { i32, i32, %struct.v4l2_enc_idx_entry* }
%struct.v4l2_enc_idx_entry = type { i32 }
%struct.ivtv = type { i32, i32, %struct.v4l2_enc_idx_entry*, i32 }
%struct.TYPE_2__ = type { %struct.ivtv* }

@IVTV_MAX_PGM_INDEX = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_ENTRIES = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_MASK = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enc_idx*)* @ivtv_g_enc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_enc_index(%struct.file* %0, i8* %1, %struct.v4l2_enc_idx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enc_idx*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.v4l2_enc_idx_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enc_idx* %2, %struct.v4l2_enc_idx** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_2__* @fh2id(i8* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %8, align 8
  %16 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %16, i32 0, i32 2
  %18 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %17, align 8
  store %struct.v4l2_enc_idx_entry* %18, %struct.v4l2_enc_idx_entry** %9, align 8
  %19 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @V4L2_ENC_IDX_ENTRIES, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @V4L2_ENC_IDX_ENTRIES, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %3
  %36 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %39 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 3
  %43 = call i32 @atomic_read(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %97

46:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %82, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %9, align 8
  %53 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %54 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %53, i32 0, i32 2
  %55 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %54, align 8
  %56 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %57 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %62 = srem i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %55, i64 %63
  %65 = bitcast %struct.v4l2_enc_idx_entry* %52 to i8*
  %66 = bitcast %struct.v4l2_enc_idx_entry* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @V4L2_ENC_IDX_FRAME_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @V4L2_ENC_IDX_FRAME_B, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %51
  %75 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %9, align 8
  %80 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %79, i32 1
  store %struct.v4l2_enc_idx_entry* %80, %struct.v4l2_enc_idx_entry** %9, align 8
  br label %81

81:                                               ; preds = %74, %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %47

85:                                               ; preds = %47
  %86 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %87 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  %93 = load i32, i32* @IVTV_MAX_PGM_INDEX, align 4
  %94 = srem i32 %92, %93
  %95 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %85, %45
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
