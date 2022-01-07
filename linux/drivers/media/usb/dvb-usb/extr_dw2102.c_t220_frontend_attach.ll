; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_t220_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_t220_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, %struct.dvb_usb_device* }
%struct.TYPE_2__ = type { i32* }
%struct.dvb_usb_device = type { i32, i32, %struct.dw2102_state* }
%struct.dw2102_state = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"command 0x0e transfer failed.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"command 0x51 transfer failed.\00", align 1
@cxd2820r_attach = common dso_local global i32 0, align 4
@cxd2820r_config = common dso_local global i32 0, align 4
@tda18271_attach = common dso_local global i32 0, align 4
@tda18271_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Attached TDA18271HD/CXD2820R!\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to attach TDA18271HD/CXD2820R!\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @t220_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t220_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.dw2102_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %4, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 2
  %11 = load %struct.dw2102_state*, %struct.dw2102_state** %10, align 8
  store %struct.dw2102_state* %11, %struct.dw2102_state** %5, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %16 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 14, i32* %18, align 4
  %19 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %20 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 135, i32* %22, align 4
  %23 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %24 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %28 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %29 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %32 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %27, i32* %30, i32 3, i32* %33, i32 1, i32 0)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %40 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 14, i32* %42, align 4
  %43 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %44 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 134, i32* %46, align 4
  %47 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %48 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 1, i32* %50, align 4
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %52 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %53 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %56 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %51, i32* %54, i32 3, i32* %57, i32 1, i32 0)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %38
  %63 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %64 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 14, i32* %66, align 4
  %67 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %68 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 128, i32* %70, align 4
  %71 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %72 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 0, i32* %74, align 4
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %76 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %77 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %80 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %75, i32* %78, i32 3, i32* %81, i32 1, i32 0)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %62
  %85 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %62
  %87 = call i32 @msleep(i32 50)
  %88 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %89 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 14, i32* %91, align 4
  %92 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %93 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 128, i32* %95, align 4
  %96 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %97 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 1, i32* %99, align 4
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %101 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %102 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %105 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %100, i32* %103, i32 3, i32* %106, i32 1, i32 0)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %86
  %110 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %86
  %112 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %113 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 81, i32* %115, align 4
  %116 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %117 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %118 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %121 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %116, i32* %119, i32 1, i32* %122, i32 1, i32 0)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %111
  %128 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %129 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %128, i32 0, i32 1
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* @cxd2820r_attach, align 4
  %132 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %133 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %132, i32 0, i32 0
  %134 = ptrtoint i32* %133 to i32
  %135 = call i32* (i32, i32*, i32, i32*, ...) @dvb_attach(i32 %131, i32* @cxd2820r_config, i32 %134, i32* null)
  %136 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32* %135, i32** %140, align 8
  %141 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %163

148:                                              ; preds = %127
  %149 = load i32, i32* @tda18271_attach, align 4
  %150 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %157 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %156, i32 0, i32 0
  %158 = call i32* (i32, i32*, i32, i32*, ...) @dvb_attach(i32 %149, i32* %155, i32 96, i32* %157, i32* @tda18271_config)
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = call i32 @info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %167

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %127
  %164 = call i32 @info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %163, %160
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32, i32*, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
