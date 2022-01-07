; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u.c_dtt200u_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dtt200u.c_dtt200u_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32, %struct.dtt200u_state* }
%struct.dtt200u_state = type { i32* }

@SET_PID_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* @dtt200u_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtt200u_pid_filter(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca %struct.dtt200u_state*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 0
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %9, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = load %struct.dtt200u_state*, %struct.dtt200u_state** %16, align 8
  store %struct.dtt200u_state* %17, %struct.dtt200u_state** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* @SET_PID_FILTER, align 4
  %29 = load %struct.dtt200u_state*, %struct.dtt200u_state** %10, align 8
  %30 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dtt200u_state*, %struct.dtt200u_state** %10, align 8
  %35 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.dtt200u_state*, %struct.dtt200u_state** %10, align 8
  %41 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 31
  %47 = load %struct.dtt200u_state*, %struct.dtt200u_state** %10, align 8
  %48 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %46, i32* %50, align 4
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 0
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %52, align 8
  %54 = load %struct.dtt200u_state*, %struct.dtt200u_state** %10, align 8
  %55 = getelementptr inbounds %struct.dtt200u_state, %struct.dtt200u_state* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dvb_usb_generic_write(%struct.dvb_usb_device* %53, i32* %56, i32 4)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_write(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
