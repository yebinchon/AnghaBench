; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i32, i32, i32, i64, i32, %struct.pvr2_stream* }
%struct.pvr2_stream = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@buffer_complete = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_buffer_queue(%struct.pvr2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %7 = icmp ne %struct.pvr2_buffer* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %12, i32 0, i32 5
  %14 = load %struct.pvr2_stream*, %struct.pvr2_stream** %13, align 8
  store %struct.pvr2_stream* %14, %struct.pvr2_stream** %5, align 8
  %15 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %16 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  br label %18

18:                                               ; preds = %11
  %19 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %20 = call i32 @pvr2_buffer_wipe(%struct.pvr2_buffer* %19)
  %21 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %22 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %30 = call i32 @pvr2_buffer_set_queued(%struct.pvr2_buffer* %29)
  %31 = load i32, i32* @EINPROGRESS, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %39 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %42 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %45 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_rcvbulkpipe(i32 %43, i32 %46)
  %48 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @buffer_complete, align 4
  %55 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %56 = call i32 @usb_fill_bulk_urb(i32 %37, i32 %40, i32 %47, i64 %50, i32 %53, i32 %54, %struct.pvr2_buffer* %55)
  %57 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @usb_submit_urb(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %28, %25
  %63 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %64 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_buffer_wipe(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_buffer_set_queued(%struct.pvr2_buffer*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i64, i32, i32, %struct.pvr2_buffer*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
