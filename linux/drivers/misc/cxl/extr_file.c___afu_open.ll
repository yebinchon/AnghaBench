; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c___afu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c___afu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl*, %struct.cxl_afu*)* }
%struct.cxl = type { i32, i32, i32, %struct.cxl_afu** }
%struct.cxl_afu = type { i32 }
%struct.inode = type { i32, i32 }
%struct.file = type { %struct.cxl_context* }
%struct.cxl_context = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"afu_open afu%i.%i\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"afu_open pe: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32)* @__afu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__afu_open(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxl*, align 8
  %9 = alloca %struct.cxl_afu*, align 8
  %10 = alloca %struct.cxl_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CXL_DEVT_ADAPTER(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CXL_DEVT_AFU(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.cxl* @get_cxl_adapter(i32 %27)
  store %struct.cxl* %28, %struct.cxl** %8, align 8
  %29 = icmp ne %struct.cxl* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %113

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.cxl*, %struct.cxl** %8, align 8
  %36 = getelementptr inbounds %struct.cxl, %struct.cxl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %108

40:                                               ; preds = %33
  %41 = load %struct.cxl*, %struct.cxl** %8, align 8
  %42 = getelementptr inbounds %struct.cxl, %struct.cxl* %41, i32 0, i32 2
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.cxl*, %struct.cxl** %8, align 8
  %45 = getelementptr inbounds %struct.cxl, %struct.cxl* %44, i32 0, i32 3
  %46 = load %struct.cxl_afu**, %struct.cxl_afu*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cxl_afu*, %struct.cxl_afu** %46, i64 %48
  %50 = load %struct.cxl_afu*, %struct.cxl_afu** %49, align 8
  store %struct.cxl_afu* %50, %struct.cxl_afu** %9, align 8
  %51 = icmp ne %struct.cxl_afu* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load %struct.cxl*, %struct.cxl** %8, align 8
  %54 = getelementptr inbounds %struct.cxl, %struct.cxl* %53, i32 0, i32 2
  %55 = call i32 @spin_unlock(i32* %54)
  br label %108

56:                                               ; preds = %40
  %57 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %58 = call i32 @cxl_afu_get(%struct.cxl_afu* %57)
  %59 = load %struct.cxl*, %struct.cxl** %8, align 8
  %60 = getelementptr inbounds %struct.cxl, %struct.cxl* %59, i32 0, i32 2
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %63 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %105

67:                                               ; preds = %56
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.cxl*, %struct.cxl_afu*)*, i32 (%struct.cxl*, %struct.cxl_afu*)** %69, align 8
  %71 = load %struct.cxl*, %struct.cxl** %8, align 8
  %72 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %73 = call i32 %70(%struct.cxl* %71, %struct.cxl_afu* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %105

78:                                               ; preds = %67
  %79 = call %struct.cxl_context* (...) @cxl_context_alloc()
  store %struct.cxl_context* %79, %struct.cxl_context** %10, align 8
  %80 = icmp ne %struct.cxl_context* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  br label %105

84:                                               ; preds = %78
  %85 = load %struct.cxl_context*, %struct.cxl_context** %10, align 8
  %86 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @cxl_context_init(%struct.cxl_context* %85, %struct.cxl_afu* %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %105

92:                                               ; preds = %84
  %93 = load %struct.cxl_context*, %struct.cxl_context** %10, align 8
  %94 = load %struct.inode*, %struct.inode** %5, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cxl_context_set_mapping(%struct.cxl_context* %93, i32 %96)
  %98 = load %struct.cxl_context*, %struct.cxl_context** %10, align 8
  %99 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.cxl_context*, %struct.cxl_context** %10, align 8
  %103 = load %struct.file*, %struct.file** %6, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  store %struct.cxl_context* %102, %struct.cxl_context** %104, align 8
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %92, %91, %81, %75, %66
  %106 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %107 = call i32 @cxl_afu_put(%struct.cxl_afu* %106)
  br label %108

108:                                              ; preds = %105, %52, %39
  %109 = load %struct.cxl*, %struct.cxl** %8, align 8
  %110 = getelementptr inbounds %struct.cxl, %struct.cxl* %109, i32 0, i32 1
  %111 = call i32 @put_device(i32* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %30
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @CXL_DEVT_ADAPTER(i32) #1

declare dso_local i32 @CXL_DEVT_AFU(i32) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local %struct.cxl* @get_cxl_adapter(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cxl_afu_get(%struct.cxl_afu*) #1

declare dso_local %struct.cxl_context* @cxl_context_alloc(...) #1

declare dso_local i32 @cxl_context_init(%struct.cxl_context*, %struct.cxl_afu*, i32) #1

declare dso_local i32 @cxl_context_set_mapping(%struct.cxl_context*, i32) #1

declare dso_local i32 @cxl_afu_put(%struct.cxl_afu*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
