; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_ctl_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_ctl_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdw_timer = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32, i32, i64, i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global %struct.hdw_timer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pvr2_ctl_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_ctl_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.hdw_timer*, align 8
  %4 = alloca %struct.pvr2_hdw*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.hdw_timer*, %struct.hdw_timer** %3, align 8
  %6 = ptrtoint %struct.hdw_timer* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load %struct.hdw_timer*, %struct.hdw_timer** %3, align 8
  %9 = ptrtoint %struct.hdw_timer* %8 to i32
  %10 = call %struct.hdw_timer* @from_timer(i32 %6, %struct.timer_list* %7, i32 %9)
  store %struct.hdw_timer* %10, %struct.hdw_timer** %3, align 8
  %11 = load %struct.hdw_timer*, %struct.hdw_timer** %3, align 8
  %12 = getelementptr inbounds %struct.hdw_timer, %struct.hdw_timer* %11, i32 0, i32 0
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %12, align 8
  store %struct.pvr2_hdw* %13, %struct.pvr2_hdw** %4, align 8
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18, %1
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %27 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_unlink_urb(i32 %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %37 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_unlink_urb(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %18
  ret void
}

declare dso_local %struct.hdw_timer* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
