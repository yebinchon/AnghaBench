; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_debugfs.c_uvc_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_debugfs.c_uvc_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"uvcvideo\00", align 1
@usb_debug_root = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to create debugfs directory\0A\00", align 1
@uvc_debugfs_root_dir = common dso_local global %struct.dentry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uvc_debugfs_init() #0 {
  %1 = alloca %struct.dentry*, align 8
  %2 = load i32, i32* @usb_debug_root, align 4
  %3 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %2)
  store %struct.dentry* %3, %struct.dentry** %1, align 8
  %4 = load %struct.dentry*, %struct.dentry** %1, align 8
  %5 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @KERN_INFO, align 4
  %9 = call i32 @uvc_printk(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %12

10:                                               ; preds = %0
  %11 = load %struct.dentry*, %struct.dentry** %1, align 8
  store %struct.dentry* %11, %struct.dentry** @uvc_debugfs_root_dir, align 8
  br label %12

12:                                               ; preds = %10, %7
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i32 @uvc_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
