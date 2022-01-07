; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk7700p_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk7700p_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.dib0700_adapter_state* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32*, i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* (i32*, i32, i32*)*, i64 (i32*)* }

@dib7000p_attach = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIO10 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO6 = common dso_local global i32 0, align 4
@GPIO9 = common dso_local global i32 0, align 4
@GPIO0 = common dso_local global i32 0, align 4
@stk7700p_dib7000p_config = common dso_local global i32 0, align 4
@dib7000m_attach = common dso_local global i32 0, align 4
@stk7700p_dib7000m_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk7700p_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk7700p_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  store %struct.dib0700_state* %10, %struct.dib0700_state** %4, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 2
  %13 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %12, align 8
  store %struct.dib0700_adapter_state* %13, %struct.dib0700_adapter_state** %5, align 8
  %14 = load i32, i32* @dib7000p_attach, align 4
  %15 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %15, i32 0, i32 0
  %17 = call i32* (i32, %struct.TYPE_7__*, ...) @dvb_attach(i32 %14, %struct.TYPE_7__* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* @GPIO10, align 4
  %27 = load i32, i32* @GPIO_OUT, align 4
  %28 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* @GPIO6, align 4
  %33 = load i32, i32* @GPIO_OUT, align 4
  %34 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %31, i32 %32, i32 %33, i32 0)
  %35 = call i32 @msleep(i32 50)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* @GPIO6, align 4
  %40 = load i32, i32* @GPIO_OUT, align 4
  %41 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %38, i32 %39, i32 %40, i32 1)
  %42 = call i32 @msleep(i32 10)
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* @GPIO9, align 4
  %47 = load i32, i32* @GPIO_OUT, align 4
  %48 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %45, i32 %46, i32 %47, i32 1)
  %49 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* @GPIO10, align 4
  %53 = load i32, i32* @GPIO_OUT, align 4
  %54 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %51, i32 %52, i32 %53, i32 0)
  %55 = call i32 @msleep(i32 10)
  %56 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @dib0700_ctrl_clock(%struct.TYPE_8__* %58, i32 72, i32 1)
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* @GPIO10, align 4
  %64 = load i32, i32* @GPIO_OUT, align 4
  %65 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %62, i32 %63, i32 %64, i32 1)
  %66 = call i32 @msleep(i32 100)
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* @GPIO0, align 4
  %71 = load i32, i32* @GPIO_OUT, align 4
  %72 = call i32 @dib0700_set_gpio(%struct.TYPE_8__* %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %74 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 1220, i32* %76, align 4
  %77 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %78 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64 (i32*)*, i64 (i32*)** %79, align 8
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = call i64 %80(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %22
  %88 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %89 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %90, align 8
  %92 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = call i32* %91(i32* %95, i32 18, i32* @stk7700p_dib7000p_config)
  %97 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32* %96, i32** %101, align 8
  %102 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %103 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %102, i32 0, i32 1
  store i32 1, i32* %103, align 8
  br label %120

104:                                              ; preds = %22
  %105 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %106 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %105, i32 0, i32 0
  %107 = call i32 @memset(%struct.TYPE_7__* %106, i32 0, i32 16)
  %108 = load i32, i32* @dib7000m_attach, align 4
  %109 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = bitcast i32* %112 to %struct.TYPE_7__*
  %114 = call i32* (i32, %struct.TYPE_7__*, ...) @dvb_attach(i32 %108, %struct.TYPE_7__* %113, i32 18, i32* @stk7700p_dib7000m_config)
  %115 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32* %114, i32** %119, align 8
  br label %120

120:                                              ; preds = %104, %87
  %121 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  br label %132

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %128
  %133 = phi i32 [ %130, %128 ], [ 0, %131 ]
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %19
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32* @dvb_attach(i32, %struct.TYPE_7__*, ...) #1

declare dso_local i32 @dib0700_set_gpio(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0700_ctrl_clock(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
