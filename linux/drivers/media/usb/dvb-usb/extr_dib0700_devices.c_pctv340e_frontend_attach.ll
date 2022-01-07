; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_pctv340e_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_pctv340e_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.dib0700_adapter_state* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 (i32*)*, i32* (i32*, i32, i32*)*, i32 }

@dib7000p_attach = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIO6 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@GPIO8 = common dso_local global i32 0, align 4
@GPIO2 = common dso_local global i32 0, align 4
@pctv_340e_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @pctv340e_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pctv340e_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  store %struct.dib0700_state* %10, %struct.dib0700_state** %4, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 2
  %13 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %12, align 8
  store %struct.dib0700_adapter_state* %13, %struct.dib0700_adapter_state** %5, align 8
  %14 = load i32, i32* @dib7000p_attach, align 4
  %15 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %15, i32 0, i32 0
  %17 = call i32 @dvb_attach(i32 %14, %struct.TYPE_6__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %115

22:                                               ; preds = %1
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* @GPIO6, align 4
  %27 = load i32, i32* @GPIO_OUT, align 4
  %28 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %25, i32 %26, i32 %27, i32 0)
  %29 = call i32 @msleep(i32 50)
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* @GPIO6, align 4
  %34 = load i32, i32* @GPIO_OUT, align 4
  %35 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %32, i32 %33, i32 %34, i32 1)
  %36 = call i32 @msleep(i32 100)
  %37 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* @GPIO10, align 4
  %41 = load i32, i32* @GPIO_OUT, align 4
  %42 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %39, i32 %40, i32 %41, i32 0)
  %43 = call i32 @msleep(i32 1)
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* @GPIO10, align 4
  %48 = load i32, i32* @GPIO_OUT, align 4
  %49 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* @GPIO8, align 4
  %54 = load i32, i32* @GPIO_OUT, align 4
  %55 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* @GPIO2, align 4
  %60 = load i32, i32* @GPIO_OUT, align 4
  %61 = call i32 @dib0700_set_gpio(%struct.TYPE_7__* %58, i32 %59, i32 %60, i32 1)
  %62 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @dib0700_ctrl_clock(%struct.TYPE_7__* %64, i32 72, i32 1)
  %66 = call i32 @msleep(i32 500)
  %67 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %68 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64 (i32*)*, i64 (i32*)** %69, align 8
  %71 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i64 %70(i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %22
  %78 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %79 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dvb_detach(i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %115

85:                                               ; preds = %22
  %86 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %87 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %88, align 8
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = call i32* %89(i32* %93, i32 18, i32* @pctv_340e_config)
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32* %94, i32** %99, align 8
  %100 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %101 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %85
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  br label %113

112:                                              ; preds = %85
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i32 [ %111, %109 ], [ 0, %112 ]
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %77, %19
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dvb_attach(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0700_ctrl_clock(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dvb_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
