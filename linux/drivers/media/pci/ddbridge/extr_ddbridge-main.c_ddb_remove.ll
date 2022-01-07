; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-main.c_ddb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-main.c_ddb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ddb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ddb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ddb*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i64 @pci_get_drvdata(%struct.pci_dev* %4)
  %6 = inttoptr i64 %5 to %struct.ddb*
  store %struct.ddb* %6, %struct.ddb** %3, align 8
  %7 = load %struct.ddb*, %struct.ddb** %3, align 8
  %8 = call i32 @ddb_device_destroy(%struct.ddb* %7)
  %9 = load %struct.ddb*, %struct.ddb** %3, align 8
  %10 = call i32 @ddb_ports_detach(%struct.ddb* %9)
  %11 = load %struct.ddb*, %struct.ddb** %3, align 8
  %12 = call i32 @ddb_i2c_release(%struct.ddb* %11)
  %13 = load %struct.ddb*, %struct.ddb** %3, align 8
  %14 = call i32 @ddb_irq_exit(%struct.ddb* %13)
  %15 = load %struct.ddb*, %struct.ddb** %3, align 8
  %16 = call i32 @ddb_msi_exit(%struct.ddb* %15)
  %17 = load %struct.ddb*, %struct.ddb** %3, align 8
  %18 = call i32 @ddb_ports_release(%struct.ddb* %17)
  %19 = load %struct.ddb*, %struct.ddb** %3, align 8
  %20 = call i32 @ddb_buffers_free(%struct.ddb* %19)
  %21 = load %struct.ddb*, %struct.ddb** %3, align 8
  %22 = call i32 @ddb_unmap(%struct.ddb* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @pci_set_drvdata(%struct.pci_dev* %23, i32* null)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i32 @pci_disable_device(%struct.pci_dev* %25)
  ret void
}

declare dso_local i64 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ddb_device_destroy(%struct.ddb*) #1

declare dso_local i32 @ddb_ports_detach(%struct.ddb*) #1

declare dso_local i32 @ddb_i2c_release(%struct.ddb*) #1

declare dso_local i32 @ddb_irq_exit(%struct.ddb*) #1

declare dso_local i32 @ddb_msi_exit(%struct.ddb*) #1

declare dso_local i32 @ddb_ports_release(%struct.ddb*) #1

declare dso_local i32 @ddb_buffers_free(%struct.ddb*) #1

declare dso_local i32 @ddb_unmap(%struct.ddb*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
