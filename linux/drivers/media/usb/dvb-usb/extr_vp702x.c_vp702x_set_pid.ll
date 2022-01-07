; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_set_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_set_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, %struct.vp702x_adapter_state* }
%struct.TYPE_2__ = type { %struct.vp702x_device_state* }
%struct.vp702x_device_state = type { i32*, i32 }
%struct.vp702x_adapter_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* @vp702x_set_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_set_pid(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vp702x_adapter_state*, align 8
  %10 = alloca %struct.vp702x_device_state*, align 8
  %11 = alloca i32*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 1
  %14 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %13, align 8
  store %struct.vp702x_adapter_state* %14, %struct.vp702x_adapter_state** %9, align 8
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %18, align 8
  store %struct.vp702x_device_state* %19, %struct.vp702x_device_state** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %9, align 8
  %26 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %37

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %9, align 8
  %34 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  store i32 65535, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 16, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %42 = load %struct.vp702x_adapter_state*, %struct.vp702x_adapter_state** %9, align 8
  %43 = getelementptr inbounds %struct.vp702x_adapter_state, %struct.vp702x_adapter_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vp702x_set_pld_state(%struct.dvb_usb_adapter* %41, i32 %44)
  %46 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %10, align 8
  %47 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %10, align 8
  %50 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @memset(i32* %52, i32 0, i32 16)
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %60, %61
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %56, i32 224, i32 %62, i32 0, i32* %63, i32 16)
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 255
  %70 = shl i32 %69, 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = or i32 %70, %72
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @vp702x_usb_in_op(%struct.TYPE_2__* %67, i32 224, i32 %73, i32 0, i32* %74, i32 16)
  %76 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %10, align 8
  %77 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  ret i32 0
}

declare dso_local i32 @vp702x_set_pld_state(%struct.dvb_usb_adapter*, i32) #1

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
