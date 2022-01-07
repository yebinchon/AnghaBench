; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_cropcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_get_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32 }
%struct.v4l2_cropcap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_get_cropcap(%struct.pvr2_hdw* %0, %struct.v4l2_cropcap* %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.v4l2_cropcap*, align 8
  %5 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.v4l2_cropcap* %1, %struct.v4l2_cropcap** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @LOCK_TAKE(i32 %8)
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %11 = call i32 @pvr2_hdw_check_cropcap(%struct.pvr2_hdw* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  %18 = call i32 @memcpy(%struct.v4l2_cropcap* %15, i32* %17, i32 4)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @LOCK_GIVE(i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_check_cropcap(%struct.pvr2_hdw*) #1

declare dso_local i32 @memcpy(%struct.v4l2_cropcap*, i32*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
