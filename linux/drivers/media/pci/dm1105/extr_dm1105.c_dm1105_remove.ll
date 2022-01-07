; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dm1105_dev = type { i32, i32, i32, i32, i32, i64, i32, %struct.dvb_demux, %struct.dvb_adapter }
%struct.dvb_demux = type { %struct.dmx_demux }
%struct.dmx_demux = type { i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)* }
%struct.dvb_adapter = type { i32 }

@dm1105_devcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @dm1105_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm1105_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.dm1105_dev*, align 8
  %4 = alloca %struct.dvb_adapter*, align 8
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca %struct.dmx_demux*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.dm1105_dev* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.dm1105_dev* %8, %struct.dm1105_dev** %3, align 8
  %9 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %10 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %9, i32 0, i32 8
  store %struct.dvb_adapter* %10, %struct.dvb_adapter** %4, align 8
  %11 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %12 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %11, i32 0, i32 7
  store %struct.dvb_demux* %12, %struct.dvb_demux** %5, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  store %struct.dmx_demux* %14, %struct.dmx_demux** %6, align 8
  %15 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %16 = call i32 @dm1105_ir_exit(%struct.dm1105_dev* %15)
  %17 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %18 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %17, i32 0, i32 2
  %19 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %18, align 8
  %20 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %21 = call i32 %19(%struct.dmx_demux* %20)
  %22 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %23 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %22, i32 0, i32 6
  %24 = call i32 @dvb_net_release(i32* %23)
  %25 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %26 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %31 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dvb_unregister_frontend(i64 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %36 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %35, i32 0, i32 1
  %37 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %36, align 8
  %38 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %39 = call i32 %37(%struct.dmx_demux* %38)
  %40 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %41 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %40, i32 0, i32 0
  %42 = load i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*, i32*)** %41, align 8
  %43 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %44 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %45 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %44, i32 0, i32 4
  %46 = call i32 %42(%struct.dmx_demux* %43, i32* %45)
  %47 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %48 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %47, i32 0, i32 0
  %49 = load i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*, i32*)** %48, align 8
  %50 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %51 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %52 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %51, i32 0, i32 3
  %53 = call i32 %49(%struct.dmx_demux* %50, i32* %52)
  %54 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %55 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %54, i32 0, i32 2
  %56 = call i32 @dvb_dmxdev_release(i32* %55)
  %57 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %58 = call i32 @dvb_dmx_release(%struct.dvb_demux* %57)
  %59 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %60 = call i32 @dvb_unregister_adapter(%struct.dvb_adapter* %59)
  %61 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %62 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %61, i32 0, i32 1
  %63 = call i32 @i2c_del_adapter(i32* %62)
  %64 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %65 = call i32 @dm1105_hw_exit(%struct.dm1105_dev* %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %70 = call i32 @free_irq(i32 %68, %struct.dm1105_dev* %69)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %73 = getelementptr inbounds %struct.dm1105_dev, %struct.dm1105_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_iounmap(%struct.pci_dev* %71, i32 %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = call i32 @pci_release_regions(%struct.pci_dev* %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = call i32 @pci_disable_device(%struct.pci_dev* %78)
  %80 = load i32, i32* @dm1105_devcount, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* @dm1105_devcount, align 4
  %82 = load %struct.dm1105_dev*, %struct.dm1105_dev** %3, align 8
  %83 = call i32 @kfree(%struct.dm1105_dev* %82)
  ret void
}

declare dso_local %struct.dm1105_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dm1105_ir_exit(%struct.dm1105_dev*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @dm1105_hw_exit(%struct.dm1105_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.dm1105_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.dm1105_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
