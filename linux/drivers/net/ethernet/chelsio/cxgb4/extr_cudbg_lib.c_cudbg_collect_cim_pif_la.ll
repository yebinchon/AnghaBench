; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_cim_pif_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_cim_pif_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_cim_pif_la = type { i32, i64 }

@CIM_PIFLA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_cim_pif_la(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.cudbg_cim_pif_la*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.cudbg_buffer, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %13 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %14 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %9, align 8
  %16 = bitcast %struct.cudbg_buffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = mul nsw i32 %18, 6
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 16, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %25 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @cudbg_get_buff(%struct.cudbg_init* %24, %struct.cudbg_buffer* %25, i32 %26, %struct.cudbg_buffer* %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %10, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.cudbg_cim_pif_la*
  store %struct.cudbg_cim_pif_la* %35, %struct.cudbg_cim_pif_la** %8, align 8
  %36 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %37 = load %struct.cudbg_cim_pif_la*, %struct.cudbg_cim_pif_la** %8, align 8
  %38 = getelementptr inbounds %struct.cudbg_cim_pif_la, %struct.cudbg_cim_pif_la* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.adapter*, %struct.adapter** %9, align 8
  %40 = load %struct.cudbg_cim_pif_la*, %struct.cudbg_cim_pif_la** %8, align 8
  %41 = getelementptr inbounds %struct.cudbg_cim_pif_la, %struct.cudbg_cim_pif_la* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.cudbg_cim_pif_la*, %struct.cudbg_cim_pif_la** %8, align 8
  %45 = getelementptr inbounds %struct.cudbg_cim_pif_la, %struct.cudbg_cim_pif_la* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %49 = mul nsw i32 6, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i32 @t4_cim_read_pif_la(%struct.adapter* %39, i32* %43, i32* %51, i32* null, i32* null)
  %53 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %54 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %55 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %53, %struct.cudbg_buffer* %10, %struct.cudbg_buffer* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %32, %30
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_cim_read_pif_la(%struct.adapter*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
