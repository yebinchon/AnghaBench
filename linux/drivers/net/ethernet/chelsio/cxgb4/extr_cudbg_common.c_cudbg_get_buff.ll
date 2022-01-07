; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_common.c_cudbg_get_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_common.c_cudbg_get_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { i64, i64, i64 }
%struct.cudbg_buffer = type { i64, i64, i8* }

@CUDBG_STATUS_NO_MEM = common dso_local global i32 0, align 4
@CUDBG_COMPRESSION_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_get_buff(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, i64 %2, %struct.cudbg_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cudbg_init*, align 8
  %7 = alloca %struct.cudbg_buffer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cudbg_buffer*, align 8
  %10 = alloca i64, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %6, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.cudbg_buffer* %3, %struct.cudbg_buffer** %9, align 8
  %11 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %12 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @CUDBG_STATUS_NO_MEM, align 4
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  %24 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %25 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CUDBG_COMPRESSION_NONE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %32 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @CUDBG_STATUS_NO_MEM, align 4
  store i32 %36, i32* %5, align 4
  br label %63

37:                                               ; preds = %29
  %38 = load %struct.cudbg_init*, %struct.cudbg_init** %6, align 8
  %39 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %43 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %45 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %48 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %5, align 4
  br label %63

49:                                               ; preds = %23
  %50 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %59 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %49, %37, %35, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
