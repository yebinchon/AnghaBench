; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_display_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_display_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.imon_context* }
%struct.imon_context = type { i32, i32, i32, i32 }
%struct.usb_interface = type { i32 }

@driver_lock = common dso_local global i32 0, align 4
@imon_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not find interface for minor %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"no context found for minor %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"display not supported by device\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"display port is already open\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"display port opened\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @display_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.imon_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.imon_context* null, %struct.imon_context** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @mutex_lock(i32* @driver_lock)
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.usb_interface* @usb_find_interface(i32* @imon_driver, i32 %12)
  store %struct.usb_interface* %13, %struct.usb_interface** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %15 = icmp ne %struct.usb_interface* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %23 = call %struct.imon_context* @usb_get_intfdata(%struct.usb_interface* %22)
  store %struct.imon_context* %23, %struct.imon_context** %6, align 8
  %24 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %25 = icmp ne %struct.imon_context* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %67

31:                                               ; preds = %21
  %32 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %33 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %36 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %63

43:                                               ; preds = %31
  %44 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %45 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %54 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %56 = load %struct.file*, %struct.file** %4, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  store %struct.imon_context* %55, %struct.imon_context** %57, align 8
  %58 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %59 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %52, %48
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %65 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %63, %26, %16
  %68 = call i32 @mutex_unlock(i32* @driver_lock)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.usb_interface* @usb_find_interface(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.imon_context* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
