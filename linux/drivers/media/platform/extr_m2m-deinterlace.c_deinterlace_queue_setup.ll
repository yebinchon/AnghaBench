; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_m2m-deinterlace.c_deinterlace_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.deinterlace_ctx = type { i32 }
%struct.deinterlace_q_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"get %d buffer(s) of size %d each.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @deinterlace_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deinterlace_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device**, align 8
  %11 = alloca %struct.deinterlace_ctx*, align 8
  %12 = alloca %struct.deinterlace_q_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.device** %4, %struct.device*** %10, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %16 = call %struct.deinterlace_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.deinterlace_ctx* %16, %struct.deinterlace_ctx** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.deinterlace_q_data* @get_q_data(i32 %21)
  store %struct.deinterlace_q_data* %22, %struct.deinterlace_q_data** %12, align 8
  %23 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %12, align 8
  %24 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %39 [
    i32 129, label %28
    i32 128, label %38
  ]

28:                                               ; preds = %5
  %29 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %12, align 8
  %30 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %12, align 8
  %33 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = mul nsw i32 %35, 3
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %13, align 4
  br label %48

38:                                               ; preds = %5
  br label %39

39:                                               ; preds = %5, %38
  %40 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %12, align 8
  %41 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.deinterlace_q_data*, %struct.deinterlace_q_data** %12, align 8
  %44 = getelementptr inbounds %struct.deinterlace_q_data, %struct.deinterlace_q_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %39, %28
  %49 = load i32*, i32** %8, align 8
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @dprintk(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  ret i32 0
}

declare dso_local %struct.deinterlace_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.deinterlace_q_data* @get_q_data(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
