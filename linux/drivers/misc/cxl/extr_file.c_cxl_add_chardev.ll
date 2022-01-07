; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_cxl_add_chardev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_file.c_cxl_add_chardev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdev = type { i32 }
%struct.device = type { i32 }
%struct.file_operations = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unable to add %s chardev: %i\0A\00", align 1
@cxl_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"afu%i.%i%s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to create %s chardev in sysfs: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, i32, %struct.cdev*, %struct.device**, i8*, i8*, %struct.file_operations*)* @cxl_add_chardev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_add_chardev(%struct.cxl_afu* %0, i32 %1, %struct.cdev* %2, %struct.device** %3, i8* %4, i8* %5, %struct.file_operations* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxl_afu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca %struct.device**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.file_operations*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.cdev* %2, %struct.cdev** %11, align 8
  store %struct.device** %3, %struct.device*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.file_operations* %6, %struct.file_operations** %15, align 8
  %18 = load %struct.cdev*, %struct.cdev** %11, align 8
  %19 = load %struct.file_operations*, %struct.file_operations** %15, align 8
  %20 = call i32 @cdev_init(%struct.cdev* %18, %struct.file_operations* %19)
  %21 = load %struct.cdev*, %struct.cdev** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @cdev_add(%struct.cdev* %21, i32 %22, i32 1)
  store i32 %23, i32* %17, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %7
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %27 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %26, i32 0, i32 0
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %17, align 4
  %30 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %8, align 4
  br label %66

32:                                               ; preds = %7
  %33 = load i32, i32* @cxl_class, align 4
  %34 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %35 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %34, i32 0, i32 0
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %38 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %39 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %44 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = call %struct.device* @device_create(i32 %33, i32* %35, i32 %36, %struct.cxl_afu* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i8* %46)
  store %struct.device* %47, %struct.device** %16, align 8
  %48 = load %struct.device*, %struct.device** %16, align 8
  %49 = call i64 @IS_ERR(%struct.device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load %struct.cxl_afu*, %struct.cxl_afu** %9, align 8
  %53 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %52, i32 0, i32 0
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load %struct.device*, %struct.device** %16, align 8
  %58 = call i32 @PTR_ERR(%struct.device* %57)
  store i32 %58, i32* %17, align 4
  br label %62

59:                                               ; preds = %32
  %60 = load %struct.device*, %struct.device** %16, align 8
  %61 = load %struct.device**, %struct.device*** %12, align 8
  store %struct.device* %60, %struct.device** %61, align 8
  store i32 0, i32* %8, align 4
  br label %66

62:                                               ; preds = %51
  %63 = load %struct.cdev*, %struct.cdev** %11, align 8
  %64 = call i32 @cdev_del(%struct.cdev* %63)
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %59, %25
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @cdev_init(%struct.cdev*, %struct.file_operations*) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, %struct.cxl_afu*, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @cdev_del(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
