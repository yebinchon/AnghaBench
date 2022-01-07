; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_mps_tcam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_mps_tcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_mps_tcam = type { i32 }

@CUDBG_SYSTEM_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_mps_tcam(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cudbg_mps_tcam*, align 8
  %15 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %16 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %17 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  %19 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.adapter*, %struct.adapter** %8, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %30 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @cudbg_get_buff(%struct.cudbg_init* %29, %struct.cudbg_buffer* %30, i32 %31, %struct.cudbg_buffer* %9)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %4, align 4
  br label %84

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.cudbg_mps_tcam*
  store %struct.cudbg_mps_tcam* %40, %struct.cudbg_mps_tcam** %14, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %66, %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %47 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %14, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @cudbg_collect_tcam_index(%struct.cudbg_init* %46, %struct.cudbg_mps_tcam* %47, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %55 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %57 = call i32 @cudbg_put_buff(%struct.cudbg_init* %56, %struct.cudbg_buffer* %9)
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %4, align 4
  br label %84

59:                                               ; preds = %45
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %14, align 8
  %65 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %64, i32 1
  store %struct.cudbg_mps_tcam* %65, %struct.cudbg_mps_tcam** %14, align 8
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %76 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %78 = call i32 @cudbg_put_buff(%struct.cudbg_init* %77, %struct.cudbg_buffer* %9)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %69
  %81 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %82 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %83 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %81, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %72, %52, %35
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_collect_tcam_index(%struct.cudbg_init*, %struct.cudbg_mps_tcam*, i32) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
