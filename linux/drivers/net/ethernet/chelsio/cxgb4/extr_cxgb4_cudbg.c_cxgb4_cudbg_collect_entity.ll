; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cxgb4_cudbg_collect_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cxgb4_cudbg_collect_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i32 }
%struct.cudbg_buffer = type { i32 }
%struct.cxgb4_collect_entity = type { i32 (%struct.cudbg_init.0*, %struct.cudbg_buffer.1*, %struct.cudbg_error*)*, i32 }
%struct.cudbg_init.0 = type opaque
%struct.cudbg_buffer.1 = type opaque
%struct.cudbg_error = type opaque
%struct.cudbg_error.2 = type { i32, i64, i32 }
%struct.cudbg_entity_hdr = type { i64, i32, i32, i64, i32, i32 }

@CUDBG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cxgb4_collect_entity*, i64, i8*, i64*)* @cxgb4_cudbg_collect_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_cudbg_collect_entity(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cxgb4_collect_entity* %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca %struct.cudbg_init*, align 8
  %8 = alloca %struct.cudbg_buffer*, align 8
  %9 = alloca %struct.cxgb4_collect_entity*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.cudbg_error.2, align 8
  %14 = alloca %struct.cudbg_entity_hdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.cxgb4_collect_entity*, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %7, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %8, align 8
  store %struct.cxgb4_collect_entity* %2, %struct.cxgb4_collect_entity** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %19 = bitcast %struct.cudbg_error.2* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %20

20:                                               ; preds = %90, %6
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %20
  %25 = load %struct.cxgb4_collect_entity*, %struct.cxgb4_collect_entity** %9, align 8
  %26 = load i64, i64* %15, align 8
  %27 = getelementptr inbounds %struct.cxgb4_collect_entity, %struct.cxgb4_collect_entity* %25, i64 %26
  store %struct.cxgb4_collect_entity* %27, %struct.cxgb4_collect_entity** %18, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.cxgb4_collect_entity*, %struct.cxgb4_collect_entity** %18, align 8
  %30 = getelementptr inbounds %struct.cxgb4_collect_entity, %struct.cxgb4_collect_entity* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.cudbg_entity_hdr* @cudbg_get_entity_hdr(i8* %28, i32 %31)
  store %struct.cudbg_entity_hdr* %32, %struct.cudbg_entity_hdr** %14, align 8
  %33 = load %struct.cxgb4_collect_entity*, %struct.cxgb4_collect_entity** %18, align 8
  %34 = getelementptr inbounds %struct.cxgb4_collect_entity, %struct.cxgb4_collect_entity* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %37 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %42 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = call i32 @memset(%struct.cudbg_error.2* %13, i32 0, i32 24)
  %44 = load %struct.cxgb4_collect_entity*, %struct.cxgb4_collect_entity** %18, align 8
  %45 = getelementptr inbounds %struct.cxgb4_collect_entity, %struct.cxgb4_collect_entity* %44, i32 0, i32 0
  %46 = load i32 (%struct.cudbg_init.0*, %struct.cudbg_buffer.1*, %struct.cudbg_error*)*, i32 (%struct.cudbg_init.0*, %struct.cudbg_buffer.1*, %struct.cudbg_error*)** %45, align 8
  %47 = load %struct.cudbg_init*, %struct.cudbg_init** %7, align 8
  %48 = bitcast %struct.cudbg_init* %47 to %struct.cudbg_init.0*
  %49 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %50 = bitcast %struct.cudbg_buffer* %49 to %struct.cudbg_buffer.1*
  %51 = bitcast %struct.cudbg_error.2* %13 to %struct.cudbg_error*
  %52 = call i32 %46(%struct.cudbg_init.0* %48, %struct.cudbg_buffer.1* %50, %struct.cudbg_error* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %24
  %56 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %57 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %59 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %62 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %67

63:                                               ; preds = %24
  %64 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %8, align 8
  %65 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %66 = call i32 @cudbg_align_debug_buffer(%struct.cudbg_buffer* %64, %struct.cudbg_entity_hdr* %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = getelementptr inbounds %struct.cudbg_error.2, %struct.cudbg_error.2* %13, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %76 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds %struct.cudbg_error.2, %struct.cudbg_error.2* %13, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %80 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = getelementptr inbounds %struct.cudbg_error.2, %struct.cudbg_error.2* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %84 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.cudbg_entity_hdr*, %struct.cudbg_entity_hdr** %14, align 8
  %86 = getelementptr inbounds %struct.cudbg_entity_hdr, %struct.cudbg_entity_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %73
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %15, align 8
  br label %20

93:                                               ; preds = %20
  %94 = load i64, i64* %16, align 8
  %95 = load i64*, i64** %12, align 8
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %94
  store i64 %97, i64* %95, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.cudbg_entity_hdr* @cudbg_get_entity_hdr(i8*, i32) #2

declare dso_local i32 @memset(%struct.cudbg_error.2*, i32, i32) #2

declare dso_local i32 @cudbg_align_debug_buffer(%struct.cudbg_buffer*, %struct.cudbg_entity_hdr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
