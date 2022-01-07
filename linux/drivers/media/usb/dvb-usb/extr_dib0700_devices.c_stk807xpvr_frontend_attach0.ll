; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk807xpvr_frontend_attach0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk807xpvr_frontend_attach0.c"
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
@dib807x_dib8000_config = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk807xpvr_frontend_attach0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk807xpvr_frontend_attach0(%struct.dvb_usb_adapter* %0) #0 {
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
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* @GPIO6, align 4
  %21 = load i32, i32* @GPIO_OUT, align 4
  %22 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %19, i32 %20, i32 %21, i32 0)
  %23 = call i32 @msleep(i32 30)
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* @GPIO6, align 4
  %28 = load i32, i32* @GPIO_OUT, align 4
  %29 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %26, i32 %27, i32 %28, i32 1)
  %30 = call i32 @msleep(i32 500)
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* @GPIO9, align 4
  %35 = load i32, i32* @GPIO_OUT, align 4
  %36 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %33, i32 %34, i32 %35, i32 1)
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* @GPIO4, align 4
  %41 = load i32, i32* @GPIO_OUT, align 4
  %42 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %39, i32 %40, i32 %41, i32 1)
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* @GPIO7, align 4
  %47 = load i32, i32* @GPIO_OUT, align 4
  %48 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %45, i32 %46, i32 %47, i32 1)
  %49 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* @GPIO10, align 4
  %53 = load i32, i32* @GPIO_OUT, align 4
  %54 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call i32 @dib0700_ctrl_clock(%struct.TYPE_7__* %57, i32 72, i32 1)
  %59 = call i32 @msleep(i32 10)
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* @GPIO10, align 4
  %64 = load i32, i32* @GPIO_OUT, align 4
  %65 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %62, i32 %63, i32 %64, i32 1)
  %66 = call i32 @msleep(i32 10)
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* @GPIO0, align 4
  %71 = load i32, i32* @GPIO_OUT, align 4
  %72 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %74 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %75, align 8
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i32 %76(i32* %80, i32 1, i32 34, i32 128, i32 0)
  %82 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %83 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %84, align 8
  %86 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32*, i32** @dib807x_dib8000_config, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = call i32* %85(i32* %89, i32 128, i32* %91)
  %93 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32* %92, i32** %97, align 8
  %98 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %16
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  br label %109

108:                                              ; preds = %16
  br label %109

109:                                              ; preds = %108, %105
  %110 = phi i32 [ %107, %105 ], [ 0, %108 ]
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %13
  %112 = load i32, i32* %2, align 4
  ret i32 %112
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
