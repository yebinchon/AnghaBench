; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_debugfs.c_uvc_debugfs_stats_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_debugfs.c_uvc_debugfs_stats_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32 }
%struct.file = type { %struct.uvc_debugfs_buffer* }
%struct.uvc_debugfs_buffer = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @uvc_debugfs_stats_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_debugfs_stats_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca %struct.uvc_debugfs_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  store %struct.uvc_streaming* %10, %struct.uvc_streaming** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.uvc_debugfs_buffer* @kmalloc(i32 8, i32 %11)
  store %struct.uvc_debugfs_buffer* %12, %struct.uvc_debugfs_buffer** %7, align 8
  %13 = load %struct.uvc_debugfs_buffer*, %struct.uvc_debugfs_buffer** %7, align 8
  %14 = icmp eq %struct.uvc_debugfs_buffer* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %20 = load %struct.uvc_debugfs_buffer*, %struct.uvc_debugfs_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.uvc_debugfs_buffer, %struct.uvc_debugfs_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @uvc_video_stats_dump(%struct.uvc_streaming* %19, i32 %22, i32 4)
  %24 = load %struct.uvc_debugfs_buffer*, %struct.uvc_debugfs_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.uvc_debugfs_buffer, %struct.uvc_debugfs_buffer* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.uvc_debugfs_buffer*, %struct.uvc_debugfs_buffer** %7, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.uvc_debugfs_buffer* %26, %struct.uvc_debugfs_buffer** %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.uvc_debugfs_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @uvc_video_stats_dump(%struct.uvc_streaming*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
