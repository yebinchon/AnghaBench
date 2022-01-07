; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_init_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_init_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, %struct.vp702x_adapter_state* }
%struct.TYPE_2__ = type { %struct.vp702x_device_state* }
%struct.vp702x_device_state = type { i32, i32* }
%struct.vp702x_adapter_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @vp702x_init_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_init_pid_filter(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.vp702x_adapter_state*, align 8
  %4 = alloca %struct.vp702x_device_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 1
  %9 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %8, align 8
  store %struct.vp702x_adapter_state* %9, %struct.vp702x_adapter_state** %3, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %13, align 8
  store %struct.vp702x_device_state* %14, %struct.vp702x_device_state** %4, align 8
  %15 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %3, align 8
  %16 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %15, i32 0, i32 0
  store i32 8, i32* %16, align 4
  %17 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %3, align 8
  %18 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %3, align 8
  %20 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %22 = call i32 @vp702x_set_pld_mode(%struct.dvb_usb_adapter* %21, i32 1)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %33, %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %3, align 8
  %26 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @vp702x_set_pid(%struct.dvb_usb_adapter* %30, i32 65535, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %4, align 8
  %38 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %4, align 8
  %41 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @memset(i32* %43, i32 0, i32 10)
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %47, i32 181, i32 3, i32 0, i32* %48, i32 10)
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %52, i32 181, i32 0, i32 0, i32* %53, i32 10)
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %57, i32 181, i32 1, i32 0, i32* %58, i32 10)
  %60 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %4, align 8
  %61 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  ret i32 0
}

declare dso_local i32 @vp702x_set_pld_mode(%struct.dvb_usb_adapter*, i32) #1

declare dso_local i32 @vp702x_set_pid(%struct.dvb_usb_adapter*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vp702x_usb_in_op(%struct.TYPE_2__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
