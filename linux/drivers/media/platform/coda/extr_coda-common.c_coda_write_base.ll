; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_write_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_write_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i32 }
%struct.coda_q_data = type { i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_write_base(%struct.coda_ctx* %0, %struct.coda_q_data* %1, %struct.vb2_v4l2_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.coda_ctx*, align 8
  %6 = alloca %struct.coda_q_data*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %5, align 8
  store %struct.coda_q_data* %1, %struct.coda_q_data** %6, align 8
  store %struct.vb2_v4l2_buffer* %2, %struct.vb2_v4l2_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %12, i32 0, i32 0
  %14 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %16 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 129, label %18
    i32 132, label %18
    i32 131, label %18
    i32 128, label %39
    i32 130, label %59
  ]

18:                                               ; preds = %4, %4, %4
  br label %19

19:                                               ; preds = %4, %18
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %22 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %25 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = add nsw i32 %20, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %31 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %34 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = sdiv i32 %36, 4
  %38 = add nsw i32 %29, %37
  store i32 %38, i32* %11, align 4
  br label %79

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %42 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %45 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %51 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %54 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = sdiv i32 %56, 4
  %58 = add nsw i32 %49, %57
  store i32 %58, i32* %10, align 4
  br label %79

59:                                               ; preds = %4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %62 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %65 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %60, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %71 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %74 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sdiv i32 %76, 2
  %78 = add nsw i32 %69, %77
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %59, %39, %19
  %80 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @coda_write(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 4
  %92 = call i32 @coda_write(i32 %88, i32 %89, i32 %91)
  %93 = load %struct.coda_ctx*, %struct.coda_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 8
  %99 = call i32 @coda_write(i32 %95, i32 %96, i32 %98)
  ret void
}

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @coda_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
