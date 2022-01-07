; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_alloc_aux_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_alloc_aux_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_dev = type { i32, i32 }
%struct.coda_aux_buf = type { i64, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate %s buffer of size %zu\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to create debugfs entry %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_alloc_aux_buf(%struct.coda_dev* %0, %struct.coda_aux_buf* %1, i64 %2, i8* %3, %struct.dentry* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.coda_dev*, align 8
  %8 = alloca %struct.coda_aux_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.coda_dev* %0, %struct.coda_dev** %7, align 8
  store %struct.coda_aux_buf* %1, %struct.coda_aux_buf** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.dentry* %4, %struct.dentry** %11, align 8
  %12 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %13 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %17 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %16, i32 0, i32 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @dma_alloc_coherent(i32 %14, i64 %15, i32* %17, i32 %18)
  %20 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %21 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %23 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %28 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %27, i32 0, i32 1
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @v4l2_err(i32* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %29, i64 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %73

34:                                               ; preds = %5
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %37 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load %struct.dentry*, %struct.dentry** %11, align 8
  %42 = icmp ne %struct.dentry* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %45 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %48 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %52 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %57 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %56, i32 0, i32 2
  %58 = call i32 @debugfs_create_blob(i8* %54, i32 420, %struct.dentry* %55, %struct.TYPE_2__* %57)
  %59 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %60 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.coda_aux_buf*, %struct.coda_aux_buf** %8, align 8
  %62 = getelementptr inbounds %struct.coda_aux_buf, %struct.coda_aux_buf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %43
  %66 = load %struct.coda_dev*, %struct.coda_dev** %7, align 8
  %67 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @dev_warn(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %65, %43
  br label %72

72:                                               ; preds = %71, %40, %34
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i8*, i64) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, %struct.dentry*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
