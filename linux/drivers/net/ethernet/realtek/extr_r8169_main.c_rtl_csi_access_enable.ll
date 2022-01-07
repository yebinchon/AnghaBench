; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_csi_access_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_csi_access_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"No native access to PCI extended config space, falling back to CSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32)* @rtl_csi_access_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_csi_access_enable(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1807
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @pci_write_config_byte(%struct.pci_dev* %15, i32 1807, i32 %16)
  %18 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %35

21:                                               ; preds = %14, %2
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_notice_once(i32 %24, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %27 = call i32 @rtl_csi_read(%struct.rtl8169_private* %26, i32 1804)
  %28 = and i32 %27, 16777215
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 24
  %33 = or i32 %30, %32
  %34 = call i32 @rtl_csi_write(%struct.rtl8169_private* %29, i32 1804, i32 %33)
  br label %35

35:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @netdev_notice_once(i32, i8*) #1

declare dso_local i32 @rtl_csi_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_csi_write(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
