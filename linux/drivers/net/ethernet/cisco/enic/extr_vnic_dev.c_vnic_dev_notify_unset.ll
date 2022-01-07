; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_notify_unset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_notify_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_notify_unset(%struct.vnic_dev* %0) #0 {
  %2 = alloca %struct.vnic_dev*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %2, align 8
  %3 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %4 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %9 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %12 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %15 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_free_consistent(i32 %10, i32 4, i64 %13, i32 %16)
  br label %18

18:                                               ; preds = %7, %1
  %19 = load %struct.vnic_dev*, %struct.vnic_dev** %2, align 8
  %20 = call i32 @vnic_dev_notify_unsetcmd(%struct.vnic_dev* %19)
  ret i32 %20
}

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @vnic_dev_notify_unsetcmd(%struct.vnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
