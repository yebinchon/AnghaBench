; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_le_tcam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_le_tcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_tcam = type { i32, i32, i32 }
%struct.cudbg_tid_data = type { i32 }

@CUDBG_STATUS_PARTIAL_DATA = common dso_local global i32 0, align 4
@CUDBG_T6_CLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_le_tcam(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_tcam, align 4
  %11 = alloca %struct.cudbg_tid_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca { i64, i32 }, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %17 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %18 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %8, align 8
  %20 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = bitcast %struct.cudbg_tcam* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  store i32 0, i32* %12, align 4
  %22 = load %struct.adapter*, %struct.adapter** %8, align 8
  %23 = call i32 @cudbg_fill_le_tcam_info(%struct.adapter* %22, %struct.cudbg_tcam* %10)
  %24 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %10, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 12
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %14, align 4
  %33 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %34 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @cudbg_get_buff(%struct.cudbg_init* %33, %struct.cudbg_buffer* %34, i32 %35, %struct.cudbg_buffer* %9)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %4, align 4
  br label %123

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i64 %43, %struct.cudbg_tcam* %10, i32 12)
  store i32 12, i32* %12, align 4
  %45 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = inttoptr i64 %49 to %struct.cudbg_tid_data*
  store %struct.cudbg_tid_data* %50, %struct.cudbg_tid_data** %11, align 8
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %111, %41
  %52 = load i32, i32* %15, align 4
  %53 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %118

56:                                               ; preds = %51
  %57 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %11, align 8
  %60 = call i32 @cudbg_read_tid(%struct.cudbg_init* %57, i32 %58, %struct.cudbg_tid_data* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* @CUDBG_STATUS_PARTIAL_DATA, align 4
  %65 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %66 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %15, align 4
  %68 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %10, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy(i64 %70, %struct.cudbg_tcam* %10, i32 12)
  br label %119

72:                                               ; preds = %56
  %73 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %11, align 8
  %74 = bitcast { i64, i32 }* %16 to i8*
  %75 = bitcast %struct.cudbg_tcam* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 12, i1 false)
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %77 = load i64, i64* %76, align 4
  %78 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @cudbg_is_ipv6_entry(%struct.cudbg_tid_data* %73, i64 %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %72
  %83 = load %struct.adapter*, %struct.adapter** %8, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @is_t6(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %10, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  %96 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CUDBG_T6_CLIP, align 4
  %99 = add nsw i32 %97, %98
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %15, align 4
  br label %107

104:                                              ; preds = %94, %89, %82
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %104, %101
  br label %111

108:                                              ; preds = %72
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %108, %107
  %112 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %11, align 8
  %113 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %112, i32 1
  store %struct.cudbg_tid_data* %113, %struct.cudbg_tid_data** %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  br label %51

118:                                              ; preds = %51
  br label %119

119:                                              ; preds = %118, %63
  %120 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %121 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %122 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %120, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %39
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_fill_le_tcam_info(%struct.adapter*, %struct.cudbg_tcam*) #2

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @memcpy(i64, %struct.cudbg_tcam*, i32) #2

declare dso_local i32 @cudbg_read_tid(%struct.cudbg_init*, i32, %struct.cudbg_tid_data*) #2

declare dso_local i64 @cudbg_is_ipv6_entry(%struct.cudbg_tid_data*, i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_t6(i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
