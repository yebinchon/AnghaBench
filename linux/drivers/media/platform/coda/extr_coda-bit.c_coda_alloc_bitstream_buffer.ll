; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_alloc_bitstream_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_alloc_bitstream_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.coda_q_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to allocate bitstream ringbuffer\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.coda_q_data*)* @coda_alloc_bitstream_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_alloc_bitstream_buffer(%struct.coda_ctx* %0, %struct.coda_q_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.coda_q_data*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.coda_q_data* %1, %struct.coda_q_data** %5, align 8
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load %struct.coda_q_data*, %struct.coda_q_data** %5, align 8
  %14 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = call i32 @roundup_pow_of_two(i32 %16)
  %18 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64 @dma_alloc_wc(i32 %25, i32 %29, i32* %32, i32 %33)
  %35 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %12
  %44 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @v4l2_err(i32* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %12
  %52 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %52, i32 0, i32 1
  %54 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kfifo_init(i32* %53, i64 %57, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %51, %43, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i64 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @kfifo_init(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
