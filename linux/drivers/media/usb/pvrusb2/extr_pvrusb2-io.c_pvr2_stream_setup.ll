; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_stream_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-io.c_pvr2_stream_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_stream = type { i32, i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_stream_setup(%struct.pvr2_stream* %0, %struct.usb_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pvr2_stream*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pvr2_stream* %0, %struct.pvr2_stream** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %10 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  br label %12

12:                                               ; preds = %4
  %13 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %14 = call i32 @pvr2_stream_internal_flush(%struct.pvr2_stream* %13)
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %17 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %16, i32 0, i32 3
  store %struct.usb_device* %15, %struct.usb_device** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %20 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %23 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %12
  %25 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %26 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_stream_internal_flush(%struct.pvr2_stream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
