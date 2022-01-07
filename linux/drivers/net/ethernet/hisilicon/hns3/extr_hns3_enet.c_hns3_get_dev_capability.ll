; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_dev_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_dev_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hnae3_ae_dev = type { i32 }

@HNAE3_DEV_SUPPORT_FD_B = common dso_local global i32 0, align 4
@HNAE3_DEV_SUPPORT_GRO_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hnae3_ae_dev*)* @hns3_get_dev_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_get_dev_capability(%struct.pci_dev* %0, %struct.hnae3_ae_dev* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 33
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HNAE3_DEV_SUPPORT_FD_B, align 4
  %14 = call i32 @hnae3_set_bit(i32 %12, i32 %13, i32 1)
  %15 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HNAE3_DEV_SUPPORT_GRO_B, align 4
  %19 = call i32 @hnae3_set_bit(i32 %17, i32 %18, i32 1)
  br label %20

20:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
