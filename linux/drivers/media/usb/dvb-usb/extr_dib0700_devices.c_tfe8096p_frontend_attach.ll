; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_tfe8096p_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_tfe8096p_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.dib0700_adapter_state* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* (i32*, i32, i32*)*, i32 (i32*, i32, i32, i32, i32)* }

@dib8000_attach = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIO6 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO9 = common dso_local global i32 0, align 4
@GPIO4 = common dso_local global i32 0, align 4
@GPIO7 = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@GPIO0 = common dso_local global i32 0, align 4
@tfe8096p_dib8000_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @tfe8096p_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfe8096p_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib0700_adapter_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  store %struct.dib0700_state* %11, %struct.dib0700_state** %4, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 2
  %14 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %13, align 8
  store %struct.dib0700_adapter_state* %14, %struct.dib0700_adapter_state** %6, align 8
  %15 = load i32, i32* @dib8000_attach, align 4
  %16 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  %17 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %16, i32 0, i32 0
  %18 = call i32 @dvb_attach(i32 %15, %struct.TYPE_7__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %119

23:                                               ; preds = %1
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @dib0700_get_version(%struct.TYPE_8__* %26, i32* null, i32* null, i32* %5, i32* null)
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 66048
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %32 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* @GPIO6, align 4
  %38 = load i32, i32* @GPIO_OUT, align 4
  %39 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %36, i32 %37, i32 %38, i32 1)
  %40 = call i32 @msleep(i32 20)
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* @GPIO9, align 4
  %45 = load i32, i32* @GPIO_OUT, align 4
  %46 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %43, i32 %44, i32 %45, i32 1)
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* @GPIO4, align 4
  %51 = load i32, i32* @GPIO_OUT, align 4
  %52 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %49, i32 %50, i32 %51, i32 1)
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load i32, i32* @GPIO7, align 4
  %57 = load i32, i32* @GPIO_OUT, align 4
  %58 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %55, i32 %56, i32 %57, i32 1)
  %59 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* @GPIO10, align 4
  %63 = load i32, i32* @GPIO_OUT, align 4
  %64 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %61, i32 %62, i32 %63, i32 0)
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @dib0700_ctrl_clock(%struct.TYPE_8__* %67, i32 72, i32 1)
  %69 = call i32 @msleep(i32 20)
  %70 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* @GPIO10, align 4
  %74 = load i32, i32* @GPIO_OUT, align 4
  %75 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %72, i32 %73, i32 %74, i32 1)
  %76 = call i32 @msleep(i32 20)
  %77 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* @GPIO0, align 4
  %81 = load i32, i32* @GPIO_OUT, align 4
  %82 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %79, i32 %80, i32 %81, i32 1)
  %83 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  %84 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %85, align 8
  %87 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 %86(i32* %90, i32 1, i32 16, i32 128, i32 1)
  %92 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  %93 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %94, align 8
  %96 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32* %95(i32* %99, i32 128, i32* @tfe8096p_dib8000_config)
  %101 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32* %100, i32** %105, align 8
  %106 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %33
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  br label %117

116:                                              ; preds = %33
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi i32 [ %115, %113 ], [ 0, %116 ]
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %20
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @dvb_attach(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @dib0700_get_version(%struct.TYPE_8__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0700_ctrl_clock(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
