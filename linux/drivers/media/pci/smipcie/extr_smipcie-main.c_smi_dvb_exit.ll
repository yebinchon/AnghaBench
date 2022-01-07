; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_dvb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i32, %struct.dvb_demux, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_port*)* @smi_dvb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_dvb_exit(%struct.smi_port* %0) #0 {
  %2 = alloca %struct.smi_port*, align 8
  %3 = alloca %struct.dvb_demux*, align 8
  store %struct.smi_port* %0, %struct.smi_port** %2, align 8
  %4 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %5 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %4, i32 0, i32 1
  store %struct.dvb_demux* %5, %struct.dvb_demux** %3, align 8
  %6 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %7 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %6, i32 0, i32 5
  %8 = call i32 @dvb_net_release(i32* %7)
  %9 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %11, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  %15 = call i32 %12(%struct.TYPE_4__* %14)
  %16 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %18, align 8
  %20 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %20, i32 0, i32 0
  %22 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %23 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %22, i32 0, i32 4
  %24 = call i32 %19(%struct.TYPE_4__* %21, i32* %23)
  %25 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %27, align 8
  %29 = load %struct.dvb_demux*, %struct.dvb_demux** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %29, i32 0, i32 0
  %31 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %32 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %31, i32 0, i32 3
  %33 = call i32 %28(%struct.TYPE_4__* %30, i32* %32)
  %34 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %35 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %34, i32 0, i32 2
  %36 = call i32 @dvb_dmxdev_release(i32* %35)
  %37 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %38 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %37, i32 0, i32 1
  %39 = call i32 @dvb_dmx_release(%struct.dvb_demux* %38)
  %40 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %41 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %40, i32 0, i32 0
  %42 = call i32 @dvb_unregister_adapter(i32* %41)
  ret void
}

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
