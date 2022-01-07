; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_adapter_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-dvb.c_pvr2_dvb_adapter_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_dvb_adapter = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@PVR2_TRACE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unregistering DVB devices\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_dvb_adapter*)* @pvr2_dvb_adapter_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_dvb_adapter_exit(%struct.pvr2_dvb_adapter* %0) #0 {
  %2 = alloca %struct.pvr2_dvb_adapter*, align 8
  store %struct.pvr2_dvb_adapter* %0, %struct.pvr2_dvb_adapter** %2, align 8
  %3 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %4 = call i32 @pvr2_trace(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %5, i32 0, i32 3
  %7 = call i32 @dvb_net_release(i32* %6)
  %8 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %11, align 8
  %13 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 %12(%struct.TYPE_3__* %15)
  %17 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %17, i32 0, i32 2
  %19 = call i32 @dvb_dmxdev_release(i32* %18)
  %20 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %20, i32 0, i32 1
  %22 = call i32 @dvb_dmx_release(%struct.TYPE_4__* %21)
  %23 = load %struct.pvr2_dvb_adapter*, %struct.pvr2_dvb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_dvb_adapter, %struct.pvr2_dvb_adapter* %23, i32 0, i32 0
  %25 = call i32 @dvb_unregister_adapter(i32* %24)
  ret i32 0
}

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_4__*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
