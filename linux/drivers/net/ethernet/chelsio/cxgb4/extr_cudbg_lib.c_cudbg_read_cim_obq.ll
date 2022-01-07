; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_cim_obq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_cim_obq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }

@CUDBG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*, i32)* @cudbg_read_cim_obq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_read_cim_obq(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cudbg_init*, align 8
  %7 = alloca %struct.cudbg_buffer*, align 8
  %8 = alloca %struct.cudbg_error*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca %struct.cudbg_buffer, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %6, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %7, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %16 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %10, align 8
  %18 = bitcast %struct.cudbg_buffer* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %13, align 4
  %19 = load %struct.adapter*, %struct.adapter** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @cudbg_cim_obq_size(%struct.adapter* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %23 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @cudbg_get_buff(%struct.cudbg_init* %22, %struct.cudbg_buffer* %23, i32 %24, %struct.cudbg_buffer* %11)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %58

30:                                               ; preds = %4
  %31 = load %struct.adapter*, %struct.adapter** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %11, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @t4_read_cim_obq(%struct.adapter* %31, i32 %32, i32* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %44, i32* %13, align 4
  br label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.cudbg_error*, %struct.cudbg_error** %8, align 8
  %50 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %52 = call i32 @cudbg_put_buff(%struct.cudbg_init* %51, %struct.cudbg_buffer* %11)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %30
  %55 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %56 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %57 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %55, %struct.cudbg_buffer* %11, %struct.cudbg_buffer* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %47, %28
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_cim_obq_size(%struct.adapter*, i32) #2

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_read_cim_obq(%struct.adapter*, i32, i32*, i32) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
