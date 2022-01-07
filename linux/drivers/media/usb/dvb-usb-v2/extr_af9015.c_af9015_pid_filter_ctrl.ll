; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_pid_filter_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_pid_filter_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, i32* }
%struct.af9015_state = type { i32, %struct.af9013_platform_data* }
%struct.af9013_platform_data = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32)* @af9015_pid_filter_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_pid_filter_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.af9015_state*, align 8
  %6 = alloca %struct.af9013_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = call %struct.af9015_state* @adap_to_priv(%struct.dvb_usb_adapter* %8)
  store %struct.af9015_state* %9, %struct.af9015_state** %5, align 8
  %10 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %11 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %10, i32 0, i32 1
  %12 = load %struct.af9013_platform_data*, %struct.af9013_platform_data** %11, align 8
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.af9013_platform_data, %struct.af9013_platform_data* %12, i64 %15
  store %struct.af9013_platform_data* %16, %struct.af9013_platform_data** %6, align 8
  %17 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %18 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.af9013_platform_data*, %struct.af9013_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.af9013_platform_data, %struct.af9013_platform_data* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %22(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.af9015_state*, %struct.af9015_state** %5, align 8
  %31 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local %struct.af9015_state* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
