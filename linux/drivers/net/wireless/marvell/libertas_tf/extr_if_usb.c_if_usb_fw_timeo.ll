; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_fw_timeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_fw_timeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@fw_timeout = common dso_local global i32 0, align 4
@LBTF_DEB_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Download timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Download complete, no event. Assuming success\0A\00", align 1
@cardp = common dso_local global %struct.if_usb_card* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @if_usb_fw_timeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_fw_timeo(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %5 = ptrtoint %struct.if_usb_card* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @fw_timeout, align 4
  %8 = call %struct.if_usb_card* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.if_usb_card* %8, %struct.if_usb_card** %3, align 8
  %9 = load i32, i32* @LBTF_DEB_USB, align 4
  %10 = call i32 @lbtf_deb_enter(i32 %9)
  %11 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %12 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %17 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @lbtf_deb_usb(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %25 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %24, i32 0, i32 0
  %26 = call i32 @wake_up(i32* %25)
  %27 = load i32, i32* @LBTF_DEB_USB, align 4
  %28 = call i32 @lbtf_deb_leave(i32 %27)
  ret void
}

declare dso_local %struct.if_usb_card* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lbtf_deb_usb(i8*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
