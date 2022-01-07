; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_afu_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_debugfs.c_cxl_debugfs_afu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, %struct.TYPE_6__*, %struct.dentry* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.cxl_afu*, %struct.dentry*)* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"psl%i.%i\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@CXL_PSL_SR_An = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dsisr\00", align 1
@CXL_PSL_DSISR_An = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"dar\00", align 1
@CXL_PSL_DAR_An = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"err_status\00", align 1
@CXL_PSL_ErrStat_An = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_debugfs_afu_add(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca [32 x i8], align 16
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %6 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %80

12:                                               ; preds = %1
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %14 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %15 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %20 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snprintf(i8* %13, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %25 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.dentry* @debugfs_create_dir(i8* %23, i32 %28)
  store %struct.dentry* %29, %struct.dentry** %3, align 8
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %32 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %31, i32 0, i32 2
  store %struct.dentry* %30, %struct.dentry** %32, align 8
  %33 = load i32, i32* @S_IRUSR, align 4
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %36 = load i32, i32* @CXL_PSL_SR_An, align 4
  %37 = call i32 @_cxl_p1n_addr(%struct.cxl_afu* %35, i32 %36)
  %38 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33, %struct.dentry* %34, i32 %37)
  %39 = load i32, i32* @S_IRUSR, align 4
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %42 = load i32, i32* @CXL_PSL_DSISR_An, align 4
  %43 = call i32 @_cxl_p2n_addr(%struct.cxl_afu* %41, i32 %42)
  %44 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %39, %struct.dentry* %40, i32 %43)
  %45 = load i32, i32* @S_IRUSR, align 4
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %48 = load i32, i32* @CXL_PSL_DAR_An, align 4
  %49 = call i32 @_cxl_p2n_addr(%struct.cxl_afu* %47, i32 %48)
  %50 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %45, %struct.dentry* %46, i32 %49)
  %51 = load i32, i32* @S_IRUSR, align 4
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %54 = load i32, i32* @CXL_PSL_ErrStat_An, align 4
  %55 = call i32 @_cxl_p2n_addr(%struct.cxl_afu* %53, i32 %54)
  %56 = call i32 @debugfs_create_io_x64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %51, %struct.dentry* %52, i32 %55)
  %57 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %58 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.cxl_afu*, %struct.dentry*)*, i32 (%struct.cxl_afu*, %struct.dentry*)** %64, align 8
  %66 = icmp ne i32 (%struct.cxl_afu*, %struct.dentry*)* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %12
  %68 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %69 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.cxl_afu*, %struct.dentry*)*, i32 (%struct.cxl_afu*, %struct.dentry*)** %75, align 8
  %77 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %78 = load %struct.dentry*, %struct.dentry** %3, align 8
  %79 = call i32 %76(%struct.cxl_afu* %77, %struct.dentry* %78)
  br label %80

80:                                               ; preds = %11, %67, %12
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_io_x64(i8*, i32, %struct.dentry*, i32) #1

declare dso_local i32 @_cxl_p1n_addr(%struct.cxl_afu*, i32) #1

declare dso_local i32 @_cxl_p2n_addr(%struct.cxl_afu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
