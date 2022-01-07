; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_cim_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_cim_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }

@UP_UP_DBG_LA_CFG_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_cim_la(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32 0, i32* %12, align 4
  %17 = load %struct.adapter*, %struct.adapter** %8, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_t6(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 10
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 40
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  br label %44

34:                                               ; preds = %3
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 32
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %34, %23
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %50 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @cudbg_get_buff(%struct.cudbg_init* %49, %struct.cudbg_buffer* %50, i32 %51, %struct.cudbg_buffer* %9)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %95

57:                                               ; preds = %44
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = load i32, i32* @UP_UP_DBG_LA_CFG_A, align 4
  %60 = call i32 @t4_cim_read(%struct.adapter* %58, i32 %59, i32 1, i32* %12)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %66 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %68 = call i32 @cudbg_put_buff(%struct.cudbg_init* %67, %struct.cudbg_buffer* %9)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %95

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @memcpy(i8* %73, i32* %12, i32 4)
  %75 = load %struct.adapter*, %struct.adapter** %8, align 8
  %76 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = bitcast i8* %79 to i32*
  %81 = call i32 @t4_cim_read_la(%struct.adapter* %75, i32* %80, i32* null)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %70
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %87 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %89 = call i32 @cudbg_put_buff(%struct.cudbg_init* %88, %struct.cudbg_buffer* %9)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %4, align 4
  br label %95

91:                                               ; preds = %70
  %92 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %93 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %94 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %92, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %84, %63, %55
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @is_t6(i32) #2

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_cim_read(%struct.adapter*, i32, i32, i32*) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @t4_cim_read_la(%struct.adapter*, i32*, i32*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
