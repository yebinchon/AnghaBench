; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_sg_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_vub300_sg_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@sg_transfer_timer = common dso_local global i32 0, align 4
@vub300 = common dso_local global %struct.vub300_mmc_host* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vub300_sg_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vub300_sg_timed_out(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vub300_mmc_host*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %5 = ptrtoint %struct.vub300_mmc_host* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @sg_transfer_timer, align 4
  %8 = call %struct.vub300_mmc_host* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.vub300_mmc_host* %8, %struct.vub300_mmc_host** %3, align 8
  %9 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %11, i32 0, i32 3
  %13 = call i32 @usb_sg_cancel(i32* %12)
  %14 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_unlink_urb(i32 %16)
  %18 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_unlink_urb(i32 %20)
  ret void
}

declare dso_local %struct.vub300_mmc_host* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @usb_sg_cancel(i32*) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
