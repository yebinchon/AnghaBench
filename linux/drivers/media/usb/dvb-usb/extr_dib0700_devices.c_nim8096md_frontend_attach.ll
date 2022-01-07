; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_nim8096md_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_nim8096md_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.dib0700_adapter_state* }
%struct.TYPE_5__ = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend*, %struct.dvb_frontend*)*, %struct.dvb_frontend* (i32*, i32, i32*)*, i32 (i32*, i32, i32, i32, i32)* }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @nim8096md_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nim8096md_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 2
  %8 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %7, align 8
  store %struct.dib0700_adapter_state* %8, %struct.dib0700_adapter_state** %5, align 8
  %9 = load i32, i32* @dib8000_attach, align 4
  %10 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %11 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %10, i32 0, i32 0
  %12 = call i32 @dvb_attach(i32 %9, %struct.TYPE_6__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %150

17:                                               ; preds = %1
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i32, i32* @GPIO6, align 4
  %22 = load i32, i32* @GPIO_OUT, align 4
  %23 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %20, i32 %21, i32 %22, i32 0)
  %24 = call i32 @msleep(i32 20)
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load i32, i32* @GPIO6, align 4
  %29 = load i32, i32* @GPIO_OUT, align 4
  %30 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %27, i32 %28, i32 %29, i32 1)
  %31 = call i32 @msleep(i32 1000)
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* @GPIO9, align 4
  %36 = load i32, i32* @GPIO_OUT, align 4
  %37 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %34, i32 %35, i32 %36, i32 1)
  %38 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* @GPIO4, align 4
  %42 = load i32, i32* @GPIO_OUT, align 4
  %43 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* @GPIO7, align 4
  %48 = load i32, i32* @GPIO_OUT, align 4
  %49 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* @GPIO10, align 4
  %54 = load i32, i32* @GPIO_OUT, align 4
  %55 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @dib0700_ctrl_clock(%struct.TYPE_7__* %58, i32 72, i32 1)
  %60 = call i32 @msleep(i32 20)
  %61 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* @GPIO10, align 4
  %65 = load i32, i32* @GPIO_OUT, align 4
  %66 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %63, i32 %64, i32 %65, i32 1)
  %67 = call i32 @msleep(i32 20)
  %68 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* @GPIO0, align 4
  %72 = load i32, i32* @GPIO_OUT, align 4
  %73 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %70, i32 %71, i32 %72, i32 1)
  %74 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %75 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32 (i32*, i32, i32, i32, i32)*, i32 (i32*, i32, i32, i32, i32)** %76, align 8
  %78 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 %77(i32* %81, i32 2, i32 18, i32 128, i32 0)
  %83 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %84 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.dvb_frontend* (i32*, i32, i32*)*, %struct.dvb_frontend* (i32*, i32, i32*)** %85, align 8
  %87 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32*, i32** @dib809x_dib8000_config, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = call %struct.dvb_frontend* %86(i32* %90, i32 128, i32* %92)
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store %struct.dvb_frontend* %93, %struct.dvb_frontend** %98, align 8
  %99 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load %struct.dvb_frontend*, %struct.dvb_frontend** %103, align 8
  %105 = icmp eq %struct.dvb_frontend* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %17
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %150

109:                                              ; preds = %17
  %110 = load i32, i32* @dib8000_attach, align 4
  %111 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %112 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %111, i32 0, i32 0
  %113 = call i32 @dvb_attach(i32 %110, %struct.TYPE_6__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %150

118:                                              ; preds = %109
  %119 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %120 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load %struct.dvb_frontend* (i32*, i32, i32*)*, %struct.dvb_frontend* (i32*, i32, i32*)** %121, align 8
  %123 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32*, i32** @dib809x_dib8000_config, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = call %struct.dvb_frontend* %122(i32* %126, i32 130, i32* %128)
  store %struct.dvb_frontend* %129, %struct.dvb_frontend** %4, align 8
  %130 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %131 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32 (%struct.dvb_frontend*, %struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend*)** %132, align 8
  %134 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load %struct.dvb_frontend*, %struct.dvb_frontend** %138, align 8
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %141 = call i32 %133(%struct.dvb_frontend* %139, %struct.dvb_frontend* %140)
  %142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %143 = icmp eq %struct.dvb_frontend* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %118
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  br label %148

147:                                              ; preds = %118
  br label %148

148:                                              ; preds = %147, %144
  %149 = phi i32 [ %146, %144 ], [ 0, %147 ]
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %115, %106, %14
  %151 = load i32, i32* %2, align 4
  ret i32 %151
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
