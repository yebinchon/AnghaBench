; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pluto = type { i32, i32, i32, i32, i32, i64, i32, %struct.dvb_demux, %struct.dvb_adapter }
%struct.dvb_demux = type { %struct.dmx_demux }
%struct.dmx_demux = type { i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)* }
%struct.dvb_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pluto2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto2_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pluto*, align 8
  %4 = alloca %struct.dvb_adapter*, align 8
  %5 = alloca %struct.dvb_demux*, align 8
  %6 = alloca %struct.dmx_demux*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.pluto* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.pluto* %8, %struct.pluto** %3, align 8
  %9 = load %struct.pluto*, %struct.pluto** %3, align 8
  %10 = getelementptr inbounds %struct.pluto, %struct.pluto* %9, i32 0, i32 8
  store %struct.dvb_adapter* %10, %struct.dvb_adapter** %4, align 8
  %11 = load %struct.pluto*, %struct.pluto** %3, align 8
  %12 = getelementptr inbounds %struct.pluto, %struct.pluto* %11, i32 0, i32 7
  store %struct.dvb_demux* %12, %struct.dvb_demux** %5, align 8
  %13 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %13, i32 0, i32 0
  store %struct.dmx_demux* %14, %struct.dmx_demux** %6, align 8
  %15 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %16 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %15, i32 0, i32 2
  %17 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %16, align 8
  %18 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %19 = call i32 %17(%struct.dmx_demux* %18)
  %20 = load %struct.pluto*, %struct.pluto** %3, align 8
  %21 = getelementptr inbounds %struct.pluto, %struct.pluto* %20, i32 0, i32 6
  %22 = call i32 @dvb_net_release(i32* %21)
  %23 = load %struct.pluto*, %struct.pluto** %3, align 8
  %24 = getelementptr inbounds %struct.pluto, %struct.pluto* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.pluto*, %struct.pluto** %3, align 8
  %29 = getelementptr inbounds %struct.pluto, %struct.pluto* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dvb_unregister_frontend(i64 %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %34 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %33, i32 0, i32 1
  %35 = load i32 (%struct.dmx_demux*)*, i32 (%struct.dmx_demux*)** %34, align 8
  %36 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %37 = call i32 %35(%struct.dmx_demux* %36)
  %38 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %39 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %38, i32 0, i32 0
  %40 = load i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*, i32*)** %39, align 8
  %41 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %42 = load %struct.pluto*, %struct.pluto** %3, align 8
  %43 = getelementptr inbounds %struct.pluto, %struct.pluto* %42, i32 0, i32 4
  %44 = call i32 %40(%struct.dmx_demux* %41, i32* %43)
  %45 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %46 = getelementptr inbounds %struct.dmx_demux, %struct.dmx_demux* %45, i32 0, i32 0
  %47 = load i32 (%struct.dmx_demux*, i32*)*, i32 (%struct.dmx_demux*, i32*)** %46, align 8
  %48 = load %struct.dmx_demux*, %struct.dmx_demux** %6, align 8
  %49 = load %struct.pluto*, %struct.pluto** %3, align 8
  %50 = getelementptr inbounds %struct.pluto, %struct.pluto* %49, i32 0, i32 3
  %51 = call i32 %47(%struct.dmx_demux* %48, i32* %50)
  %52 = load %struct.pluto*, %struct.pluto** %3, align 8
  %53 = getelementptr inbounds %struct.pluto, %struct.pluto* %52, i32 0, i32 2
  %54 = call i32 @dvb_dmxdev_release(i32* %53)
  %55 = load %struct.dvb_demux*, %struct.dvb_demux** %5, align 8
  %56 = call i32 @dvb_dmx_release(%struct.dvb_demux* %55)
  %57 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %58 = call i32 @dvb_unregister_adapter(%struct.dvb_adapter* %57)
  %59 = load %struct.pluto*, %struct.pluto** %3, align 8
  %60 = getelementptr inbounds %struct.pluto, %struct.pluto* %59, i32 0, i32 1
  %61 = call i32 @i2c_del_adapter(i32* %60)
  %62 = load %struct.pluto*, %struct.pluto** %3, align 8
  %63 = call i32 @pluto_hw_exit(%struct.pluto* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pluto*, %struct.pluto** %3, align 8
  %68 = call i32 @free_irq(i32 %66, %struct.pluto* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %70 = load %struct.pluto*, %struct.pluto** %3, align 8
  %71 = getelementptr inbounds %struct.pluto, %struct.pluto* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pci_iounmap(%struct.pci_dev* %69, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = call i32 @pci_release_regions(%struct.pci_dev* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %77 = call i32 @pci_disable_device(%struct.pci_dev* %76)
  %78 = load %struct.pluto*, %struct.pluto** %3, align 8
  %79 = call i32 @kfree(%struct.pluto* %78)
  ret void
}

declare dso_local %struct.pluto* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.dvb_demux*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pluto_hw_exit(%struct.pluto*) #1

declare dso_local i32 @free_irq(i32, %struct.pluto*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pluto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
