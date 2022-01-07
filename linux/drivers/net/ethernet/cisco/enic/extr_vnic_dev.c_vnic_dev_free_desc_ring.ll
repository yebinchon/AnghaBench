; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_free_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_free_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.vnic_dev_ring = type { i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_dev_free_desc_ring(%struct.vnic_dev* %0, %struct.vnic_dev_ring* %1) #0 {
  %3 = alloca %struct.vnic_dev*, align 8
  %4 = alloca %struct.vnic_dev_ring*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %3, align 8
  store %struct.vnic_dev_ring* %1, %struct.vnic_dev_ring** %4, align 8
  %5 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %6 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %14 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %17 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %20 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pci_free_consistent(i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.vnic_dev_ring*, %struct.vnic_dev_ring** %4, align 8
  %24 = getelementptr inbounds %struct.vnic_dev_ring, %struct.vnic_dev_ring* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
