; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_cim_qcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_cim_qcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_cim_qcfg = type { i32, i32, i32, i32, i32, i32 }

@UP_IBQ_0_RDADDR_A = common dso_local global i32 0, align 4
@UP_OBQ_0_REALADDR_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_cim_qcfg(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_cim_qcfg*, align 8
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
  %16 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %18 = call i32 @cudbg_get_buff(%struct.cudbg_init* %16, %struct.cudbg_buffer* %17, i32 24, %struct.cudbg_buffer* %9)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.cudbg_cim_qcfg*
  store %struct.cudbg_cim_qcfg* %26, %struct.cudbg_cim_qcfg** %10, align 8
  %27 = load %struct.adapter*, %struct.adapter** %8, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %32 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.adapter*, %struct.adapter** %8, align 8
  %34 = load i32, i32* @UP_IBQ_0_RDADDR_A, align 4
  %35 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %36 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %40 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @t4_cim_read(%struct.adapter* %33, i32 %34, i32 %38, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %23
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %48 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %50 = call i32 @cudbg_put_buff(%struct.cudbg_init* %49, %struct.cudbg_buffer* %9)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %87

52:                                               ; preds = %23
  %53 = load %struct.adapter*, %struct.adapter** %8, align 8
  %54 = load i32, i32* @UP_OBQ_0_REALADDR_A, align 4
  %55 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %56 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %60 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @t4_cim_read(%struct.adapter* %53, i32 %54, i32 %58, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %68 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %70 = call i32 @cudbg_put_buff(%struct.cudbg_init* %69, %struct.cudbg_buffer* %9)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %87

72:                                               ; preds = %52
  %73 = load %struct.adapter*, %struct.adapter** %8, align 8
  %74 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %75 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %78 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cudbg_cim_qcfg*, %struct.cudbg_cim_qcfg** %10, align 8
  %81 = getelementptr inbounds %struct.cudbg_cim_qcfg, %struct.cudbg_cim_qcfg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @t4_read_cimq_cfg(%struct.adapter* %73, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %85 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %86 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %84, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %72, %65, %45, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_cim_read(%struct.adapter*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_read_cimq_cfg(%struct.adapter*, i32, i32, i32) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
