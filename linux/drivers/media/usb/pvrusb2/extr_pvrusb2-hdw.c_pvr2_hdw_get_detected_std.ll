; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_detected_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_detected_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64 }

@video = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pvr2_hdw*)* @pvr2_hdw_get_detected_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pvr2_hdw_get_detected_std(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i64, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %8 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %7, i32 0, i32 0
  %9 = load i32, i32* @video, align 4
  %10 = load i32, i32* @querystd, align 4
  %11 = call i32 @v4l2_device_call_all(i32* %8, i32 0, i32 %9, i32 %10, i64* %3)
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
