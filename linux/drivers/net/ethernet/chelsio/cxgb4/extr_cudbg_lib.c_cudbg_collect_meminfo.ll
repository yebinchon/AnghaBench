; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_meminfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_meminfo = type { i32 }
%struct.cudbg_ver_hdr = type { i32, i32, i32 }

@CUDBG_ENTITY_SIGNATURE = common dso_local global i32 0, align 4
@CUDBG_MEMINFO_REV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_meminfo(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_meminfo*, align 8
  %11 = alloca %struct.cudbg_ver_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %13 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %14 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %8, align 8
  %16 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %18 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %19 = call i32 @cudbg_get_buff(%struct.cudbg_init* %17, %struct.cudbg_buffer* %18, i32 16, %struct.cudbg_buffer* %9)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.cudbg_ver_hdr*
  store %struct.cudbg_ver_hdr* %27, %struct.cudbg_ver_hdr** %11, align 8
  %28 = load i32, i32* @CUDBG_ENTITY_SIGNATURE, align 4
  %29 = load %struct.cudbg_ver_hdr*, %struct.cudbg_ver_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.cudbg_ver_hdr, %struct.cudbg_ver_hdr* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @CUDBG_MEMINFO_REV, align 4
  %32 = load %struct.cudbg_ver_hdr*, %struct.cudbg_ver_hdr** %11, align 8
  %33 = getelementptr inbounds %struct.cudbg_ver_hdr, %struct.cudbg_ver_hdr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cudbg_ver_hdr*, %struct.cudbg_ver_hdr** %11, align 8
  %35 = getelementptr inbounds %struct.cudbg_ver_hdr, %struct.cudbg_ver_hdr* %34, i32 0, i32 0
  store i32 4, i32* %35, align 4
  %36 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 12
  %39 = inttoptr i64 %38 to %struct.cudbg_meminfo*
  store %struct.cudbg_meminfo* %39, %struct.cudbg_meminfo** %10, align 8
  %40 = load %struct.adapter*, %struct.adapter** %8, align 8
  %41 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %10, align 8
  %42 = call i32 @cudbg_fill_meminfo(%struct.adapter* %40, %struct.cudbg_meminfo* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %24
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %48 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %50 = call i32 @cudbg_put_buff(%struct.cudbg_init* %49, %struct.cudbg_buffer* %9)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %24
  %53 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %54 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %55 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %53, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %45, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_fill_meminfo(%struct.adapter*, %struct.cudbg_meminfo*) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
