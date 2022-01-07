; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk809x_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk809x_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.dib0700_adapter_state* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* (i32*, i32, i32*)*, i32 (i32*, i32, i32, i32, i32)* }

@dib8000_attach = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIO6 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO9 = common dso_local global i32 0, align 4
@GPIO4 = common dso_local global i32 0, align 4
@GPIO7 = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@GPIO0 = common dso_local global i32 0, align 4
@dib809x_dib8000_config = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk809x_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk809x_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 2
  %7 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  store %struct.dib0700_adapter_state* %7, %struct.dib0700_adapter_state** %4, align 8
  %8 = load i32, i32* @dib8000_attach, align 4
  %9 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %10 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %9, i32 0, i32 0
  %11 = call i32 @dvb_attach(i32 %8, %struct.TYPE_6__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %104

16:                                               ; preds = %1
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* @GPIO6, align 4
  %21 = load i32, i32* @GPIO_OUT, align 4
  %22 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %19, i32 %20, i32 %21, i32 1)
  %23 = call i32 @msleep(i32 10)
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* @GPIO9, align 4
  %28 = load i32, i32* @GPIO_OUT, align 4
  %29 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %26, i32 %27, i32 %28, i32 1)
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* @GPIO4, align 4
  %34 = load i32, i32* @GPIO_OUT, align 4
  %35 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %32, i32 %33, i32 %34, i32 1)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* @GPIO7, align 4
  %40 = load i32, i32* @GPIO_OUT, align 4
  %41 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %38, i32 %39, i32 %40, i32 1)
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* @GPIO10, align 4
  %46 = load i32, i32* @GPIO_OUT, align 4
  %47 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @dib0700_ctrl_clock(%struct.TYPE_7__* %50, i32 72, i32 1)
  %52 = call i32 @msleep(i32 10)
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* @GPIO10, align 4
  %57 = load i32, i32* @GPIO_OUT, align 4
  %58 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %55, i32 %56, i32 %57, i32 1)
  %59 = call i32 @msleep(i32 10)
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* @GPIO0, align 4
  %64 = load i32, i32* @GPIO_OUT, align 4
  %65 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %62, i32 %63, i32 %64, i32 1)
  %66 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %67 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %68, align 8
  %70 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 %69(i32* %73, i32 1, i32 18, i32 128, i32 0)
  %75 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %76 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %77, align 8
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32*, i32** @dib809x_dib8000_config, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32* %78(i32* %82, i32 128, i32* %84)
  %86 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32* %85, i32** %90, align 8
  %91 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %16
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  br label %102

101:                                              ; preds = %16
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @dvb_attach(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0700_ctrl_clock(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
