; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cb710/extr_core.c_cb710_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cb710_chip = type { i32, i32 }

@CB710_SLOT_SM = common dso_local global i32 0, align 4
@CB710_SLOT_MS = common dso_local global i32 0, align 4
@CB710_SLOT_MMC = common dso_local global i32 0, align 4
@cb710_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cb710_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cb710_chip*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.cb710_chip* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.cb710_chip* %5, %struct.cb710_chip** %3, align 8
  %6 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %7 = load i32, i32* @CB710_SLOT_SM, align 4
  %8 = call i32 @cb710_unregister_slot(%struct.cb710_chip* %6, i32 %7)
  %9 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %10 = load i32, i32* @CB710_SLOT_MS, align 4
  %11 = call i32 @cb710_unregister_slot(%struct.cb710_chip* %9, i32 %10)
  %12 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %13 = load i32, i32* @CB710_SLOT_MMC, align 4
  %14 = call i32 @cb710_unregister_slot(%struct.cb710_chip* %12, i32 %13)
  %15 = load %struct.cb710_chip*, %struct.cb710_chip** %3, align 8
  %16 = getelementptr inbounds %struct.cb710_chip, %struct.cb710_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ida_free(i32* @cb710_ida, i32 %17)
  ret void
}

declare dso_local %struct.cb710_chip* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cb710_unregister_slot(%struct.cb710_chip*, i32) #1

declare dso_local i32 @ida_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
