; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_alcor_pci.c_alcor_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.alcor_pci_priv = type { i32 }

@alcor_pci_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @alcor_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.alcor_pci_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.alcor_pci_priv* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.alcor_pci_priv* %5, %struct.alcor_pci_priv** %3, align 8
  %6 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %7 = call i32 @alcor_pci_aspm_ctrl(%struct.alcor_pci_priv* %6, i32 1)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i32 @mfd_remove_devices(i32* %9)
  %11 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %12 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ida_simple_remove(i32* @alcor_pci_idr, i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_release_regions(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_set_drvdata(%struct.pci_dev* %17, i32* null)
  ret void
}

declare dso_local %struct.alcor_pci_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @alcor_pci_aspm_ctrl(%struct.alcor_pci_priv*, i32) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
