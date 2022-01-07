; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.dvb_usb_adapter*, %struct.lme2510_state* }
%struct.dvb_usb_adapter = type { i32 }
%struct.lme2510_state = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Interrupt Service Stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*)* @lme2510_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lme2510_exit(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.lme2510_state*, align 8
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %5 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %5, i32 0, i32 1
  %7 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  store %struct.lme2510_state* %7, %struct.lme2510_state** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 0
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %9, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i64 0
  store %struct.dvb_usb_adapter* %11, %struct.dvb_usb_adapter** %4, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %13 = icmp ne %struct.dvb_usb_adapter* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = call i32 @lme2510_kill_urb(i32* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %20 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %25 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @usb_kill_urb(i64 %26)
  %28 = load %struct.lme2510_state*, %struct.lme2510_state** %3, align 8
  %29 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @usb_free_urb(i64 %30)
  %32 = call i32 @info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @lme2510_kill_urb(i32*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @usb_free_urb(i64) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
