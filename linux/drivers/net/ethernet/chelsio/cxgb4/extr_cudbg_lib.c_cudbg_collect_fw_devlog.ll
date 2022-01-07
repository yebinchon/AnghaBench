; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_fw_devlog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_fw_devlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.devlog_params }
%struct.devlog_params = type { i64, i32, i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_fw_devlog(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.devlog_params*, align 8
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  %15 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  %16 = load %struct.adapter*, %struct.adapter** %8, align 8
  %17 = call i32 @t4_init_devlog_params(%struct.adapter* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %23 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load %struct.adapter*, %struct.adapter** %8, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store %struct.devlog_params* %28, %struct.devlog_params** %10, align 8
  %29 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %30 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %31 = load %struct.devlog_params*, %struct.devlog_params** %10, align 8
  %32 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cudbg_get_buff(%struct.cudbg_init* %29, %struct.cudbg_buffer* %30, i32 %33, %struct.cudbg_buffer* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %25
  %40 = load %struct.devlog_params*, %struct.devlog_params** %10, align 8
  %41 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %39
  %45 = load %struct.adapter*, %struct.adapter** %8, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.adapter*, %struct.adapter** %8, align 8
  %49 = load %struct.adapter*, %struct.adapter** %8, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.devlog_params*, %struct.devlog_params** %10, align 8
  %54 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.devlog_params*, %struct.devlog_params** %10, align 8
  %57 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.devlog_params*, %struct.devlog_params** %10, align 8
  %60 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = bitcast i8* %64 to i32*
  %66 = call i32 @t4_memory_rw(%struct.adapter* %48, i32 %52, i32 %55, i64 %58, i32 %61, i32* %65, i32 1)
  store i32 %66, i32* %11, align 4
  %67 = load %struct.adapter*, %struct.adapter** %8, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %44
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %75 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %77 = call i32 @cudbg_put_buff(%struct.cudbg_init* %76, %struct.cudbg_buffer* %9)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %84

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79, %39
  %81 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %82 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %83 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %81, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %72, %37, %20
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @t4_init_devlog_params(%struct.adapter*) #2

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i32, i64, i32, i32*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
