; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_debugfs.c_uvc_debugfs_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_debugfs.c_uvc_debugfs_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, %struct.dentry*, %struct.TYPE_4__* }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { %struct.usb_device* }
%struct.usb_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@uvc_debugfs_root_dir = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%u-%u-%u\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to create debugfs %s directory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@uvc_debugfs_stats_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to create debugfs stats file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_debugfs_init_stream(%struct.uvc_streaming* %0) #0 {
  %2 = alloca %struct.uvc_streaming*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [33 x i8], align 16
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %2, align 8
  %6 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %7 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %3, align 8
  %11 = load i32*, i32** @uvc_debugfs_root_dir, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %55

14:                                               ; preds = %1
  %15 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @snprintf(i8* %15, i32 33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %29 = load i32*, i32** @uvc_debugfs_root_dir, align 8
  %30 = call %struct.dentry* @debugfs_create_dir(i8* %28, i32* %29)
  store %struct.dentry* %30, %struct.dentry** %4, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %14
  %35 = load i32, i32* @KERN_INFO, align 4
  %36 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %37 = call i32 (i32, i8*, ...) @uvc_printk(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %55

38:                                               ; preds = %14
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %40, i32 0, i32 1
  store %struct.dentry* %39, %struct.dentry** %41, align 8
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %43 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %42, i32 0, i32 1
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %46 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %44, %struct.uvc_streaming* %45, i32* @uvc_debugfs_stats_fops)
  store %struct.dentry* %46, %struct.dentry** %4, align 8
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i32, i32* @KERN_INFO, align 4
  %52 = call i32 (i32, i8*, ...) @uvc_printk(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %54 = call i32 @uvc_debugfs_cleanup_stream(%struct.uvc_streaming* %53)
  br label %55

55:                                               ; preds = %13, %34, %50, %38
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i32 @uvc_printk(i32, i8*, ...) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.uvc_streaming*, i32*) #1

declare dso_local i32 @uvc_debugfs_cleanup_stream(%struct.uvc_streaming*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
