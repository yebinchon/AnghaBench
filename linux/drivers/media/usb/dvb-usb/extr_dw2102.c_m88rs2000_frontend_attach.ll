; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_m88rs2000_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_m88rs2000_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, %struct.dvb_usb_device* }
%struct.TYPE_2__ = type { i32* }
%struct.dvb_usb_device = type { i32, i32, %struct.dw2102_state* }
%struct.dw2102_state = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"command 0x51 transfer failed.\00", align 1
@m88rs2000_attach = common dso_local global i32 0, align 4
@s421_m88rs2000_config = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ts2020_attach = common dso_local global i32 0, align 4
@dw2104_ts2020_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Attached RS2000/TS2020!\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to attach RS2000/TS2020!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @m88rs2000_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
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
  store i32 81, i32* %18, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %21 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.dw2102_state*, %struct.dw2102_state** %5, align 8
  %24 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @dvb_usb_generic_rw(%struct.dvb_usb_device* %19, i32* %22, i32 1, i32* %25, i32 1, i32 0)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %1
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @m88rs2000_attach, align 4
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 0
  %37 = call i32* (i32, i32*, i32*, ...) @dvb_attach(i32 %34, i32* @s421_m88rs2000_config, i32* %36)
  %38 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* %37, i32** %42, align 8
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %71

53:                                               ; preds = %30
  %54 = load i32, i32* @ts2020_attach, align 4
  %55 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 0
  %63 = call i32* (i32, i32*, i32*, ...) @dvb_attach(i32 %54, i32* %60, i32* @dw2104_ts2020_config, i32* %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %53
  %68 = call i32 @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %65, %50
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32*, ...) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
