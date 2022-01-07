; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_intel_vr_nor.c_vr_nor_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vr_nor_mtd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vr_nor_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_nor_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vr_nor_mtd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.vr_nor_mtd* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.vr_nor_mtd* %5, %struct.vr_nor_mtd** %3, align 8
  %6 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %7 = call i32 @vr_nor_destroy_partitions(%struct.vr_nor_mtd* %6)
  %8 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %9 = call i32 @vr_nor_destroy_mtd_setup(%struct.vr_nor_mtd* %8)
  %10 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %11 = call i32 @vr_nor_destroy_maps(%struct.vr_nor_mtd* %10)
  %12 = load %struct.vr_nor_mtd*, %struct.vr_nor_mtd** %3, align 8
  %13 = call i32 @kfree(%struct.vr_nor_mtd* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_release_regions(%struct.pci_dev* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = call i32 @pci_disable_device(%struct.pci_dev* %16)
  ret void
}

declare dso_local %struct.vr_nor_mtd* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @vr_nor_destroy_partitions(%struct.vr_nor_mtd*) #1

declare dso_local i32 @vr_nor_destroy_mtd_setup(%struct.vr_nor_mtd*) #1

declare dso_local i32 @vr_nor_destroy_maps(%struct.vr_nor_mtd*) #1

declare dso_local i32 @kfree(%struct.vr_nor_mtd*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
