; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_get_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_api.c_cxl_get_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cxl_context = type { i32, i64 }
%struct.file_operations = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@open = common dso_local global i32 0, align 4
@poll = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@release = common dso_local global i32 0, align 4
@unlocked_ioctl = common dso_local global i32 0, align 4
@compat_ioctl = common dso_local global i32 0, align 4
@mmap = common dso_local global i32 0, align 4
@afu_fops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cxl:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @cxl_get_fd(%struct.cxl_context* %0, %struct.file_operations* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %5, align 8
  store %struct.file_operations* %1, %struct.file_operations** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %12, align 8
  %13 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %14 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @EEXIST, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.file* @ERR_PTR(i32 %19)
  store %struct.file* %20, %struct.file** %4, align 8
  br label %81

21:                                               ; preds = %3
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_CLOEXEC, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @get_unused_fd_flags(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.file* @ERR_PTR(i32 %30)
  store %struct.file* %31, %struct.file** %4, align 8
  br label %81

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %35 = icmp ne %struct.file_operations* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i32, i32* @open, align 4
  %38 = call i32 @PATCH_FOPS(i32 %37)
  %39 = load i32, i32* @poll, align 4
  %40 = call i32 @PATCH_FOPS(i32 %39)
  %41 = load i32, i32* @read, align 4
  %42 = call i32 @PATCH_FOPS(i32 %41)
  %43 = load i32, i32* @release, align 4
  %44 = call i32 @PATCH_FOPS(i32 %43)
  %45 = load i32, i32* @unlocked_ioctl, align 4
  %46 = call i32 @PATCH_FOPS(i32 %45)
  %47 = load i32, i32* @compat_ioctl, align 4
  %48 = call i32 @PATCH_FOPS(i32 %47)
  %49 = load i32, i32* @mmap, align 4
  %50 = call i32 @PATCH_FOPS(i32 %49)
  br label %52

51:                                               ; preds = %32
  store %struct.file_operations* bitcast (i32* @afu_fops to %struct.file_operations*), %struct.file_operations** %6, align 8
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %55 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @kasprintf(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i8* %57, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %60 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.file* @cxl_getfile(i8* %58, %struct.file_operations* %59, %struct.cxl_context* %60, i32 %61)
  store %struct.file* %62, %struct.file** %8, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @kfree(i8* %63)
  %65 = load %struct.file*, %struct.file** %8, align 8
  %66 = call i64 @IS_ERR(%struct.file* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %78

69:                                               ; preds = %52
  %70 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %71 = load %struct.file*, %struct.file** %8, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cxl_context_set_mapping(%struct.cxl_context* %70, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %77, %struct.file** %4, align 8
  br label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @put_unused_fd(i32 %79)
  store %struct.file* null, %struct.file** %4, align 8
  br label %81

81:                                               ; preds = %78, %69, %29, %17
  %82 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %82
}

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i32 @PATCH_FOPS(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local %struct.file* @cxl_getfile(i8*, %struct.file_operations*, %struct.cxl_context*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @cxl_context_set_mapping(%struct.cxl_context*, i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
