; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c__cx18_process_idx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c__cx18_process_idx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_buffer = type { i32, i32, i32* }
%struct.v4l2_enc_idx = type { i64, %struct.v4l2_enc_idx_entry* }
%struct.v4l2_enc_idx_entry = type { i32, i32, i32, i32, i64* }
%struct.cx18_enc_idx_entry = type { i32, i32, i32, i32, i32, i32 }

@V4L2_ENC_IDX_FRAME_I = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_P = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_FRAME_B = common dso_local global i32 0, align 4
@V4L2_ENC_IDX_ENTRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_buffer*, %struct.v4l2_enc_idx*)* @_cx18_process_idx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cx18_process_idx_data(%struct.cx18_buffer* %0, %struct.v4l2_enc_idx* %1) #0 {
  %3 = alloca %struct.cx18_buffer*, align 8
  %4 = alloca %struct.v4l2_enc_idx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_enc_idx_entry*, align 8
  %8 = alloca %struct.cx18_enc_idx_entry*, align 8
  %9 = alloca [8 x i32], align 16
  store %struct.cx18_buffer* %0, %struct.cx18_buffer** %3, align 8
  store %struct.v4l2_enc_idx* %1, %struct.v4l2_enc_idx** %4, align 8
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 -1, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* @V4L2_ENC_IDX_FRAME_I, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @V4L2_ENC_IDX_FRAME_P, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* @V4L2_ENC_IDX_FRAME_B, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 -1, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 -1, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.cx18_buffer*, %struct.cx18_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cx18_buffer*, %struct.cx18_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %28 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %28, i32 0, i32 1
  %30 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %29, align 8
  %31 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %30, i64 %33
  store %struct.v4l2_enc_idx_entry* %34, %struct.v4l2_enc_idx_entry** %7, align 8
  %35 = load %struct.cx18_buffer*, %struct.cx18_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.cx18_buffer*, %struct.cx18_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = bitcast i32* %42 to %struct.cx18_enc_idx_entry*
  store %struct.cx18_enc_idx_entry* %43, %struct.cx18_enc_idx_entry** %8, align 8
  br label %44

44:                                               ; preds = %56, %2
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 24
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_ENC_IDX_ENTRIES, align 8
  %53 = icmp ult i64 %51, %52
  br label %54

54:                                               ; preds = %48, %44
  %55 = phi i1 [ false, %44 ], [ %53, %48 ]
  br i1 %55, label %56, label %127

56:                                               ; preds = %54
  %57 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %58 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = shl i32 %60, 32
  %62 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %63 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = or i32 %61, %65
  %67 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %70 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = and i32 %72, 1
  %74 = shl i32 %73, 32
  %75 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %76 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = or i32 %74, %78
  %80 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %83 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %89 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = and i32 %91, 7
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %98, i32 0, i32 4
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %4, align 8
  %107 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %4, align 8
  %111 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %110, i32 0, i32 1
  %112 = load %struct.v4l2_enc_idx_entry*, %struct.v4l2_enc_idx_entry** %111, align 8
  %113 = load %struct.v4l2_enc_idx*, %struct.v4l2_enc_idx** %4, align 8
  %114 = getelementptr inbounds %struct.v4l2_enc_idx, %struct.v4l2_enc_idx* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.v4l2_enc_idx_entry, %struct.v4l2_enc_idx_entry* %112, i64 %115
  store %struct.v4l2_enc_idx_entry* %116, %struct.v4l2_enc_idx_entry** %7, align 8
  %117 = load %struct.cx18_enc_idx_entry*, %struct.cx18_enc_idx_entry** %8, align 8
  %118 = getelementptr inbounds %struct.cx18_enc_idx_entry, %struct.cx18_enc_idx_entry* %117, i32 1
  store %struct.cx18_enc_idx_entry* %118, %struct.cx18_enc_idx_entry** %8, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, 24
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 24
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  br label %44

127:                                              ; preds = %54
  %128 = load i32, i32* %6, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %132, 24
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %130, %127
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.cx18_buffer*, %struct.cx18_buffer** %3, align 8
  %141 = getelementptr inbounds %struct.cx18_buffer, %struct.cx18_buffer* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
