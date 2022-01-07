; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_alloc_generic_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_alloc_generic_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { %struct.device** }
%struct.device = type { i32 }
%struct.s5p_mfc_priv_buf = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Allocating generic buf: %zu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Allocated addr %p %pad\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Allocating generic buffer of size %zu failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_alloc_generic_buf(%struct.s5p_mfc_dev* %0, i32 %1, %struct.s5p_mfc_priv_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5p_mfc_priv_buf*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.s5p_mfc_priv_buf* %2, %struct.s5p_mfc_priv_buf** %7, align 8
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %9, i32 0, i32 0
  %11 = load %struct.device**, %struct.device*** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.device*, %struct.device** %11, i64 %13
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %27, i32 0, i32 2
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @dma_alloc_coherent(%struct.device* %23, i32 %26, i32* %28, i32 %29)
  %31 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %45

38:                                               ; preds = %3
  %39 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %42, i32 0, i32 2
  %44 = call i32 (i32, i8*, i32, ...) @mfc_debug(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32* %43)
  store i32 0, i32* %4, align 4
  br label %52

45:                                               ; preds = %37
  %46 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %7, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mfc_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @mfc_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @mfc_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
