; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_set_tx_pkt_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_set_tx_pkt_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PCI_SUBSYSTEM_ID = common dso_local global i32 0, align 4
@PCI_SUBSYS_DEVID_81XX_NIC_PF = common dso_local global i64 0, align 8
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@NIC_PF_LMAC_0_7_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32)* @nic_set_tx_pkt_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_set_tx_pkt_pad(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 52
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 52, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PCI_SUBSYSTEM_ID, align 4
  %17 = call i32 @pci_read_config_word(i32 %15, i32 %16, i64* %7)
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @PCI_SUBSYS_DEVID_81XX_NIC_PF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %23 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %12
  %32 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %33 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %21
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %46 = load i32, i32* @NIC_PF_LMAC_0_7_CFG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %47, 3
  %49 = or i32 %46, %48
  %50 = call i32 @nic_reg_read(%struct.nicpf* %45, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, -61
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sdiv i32 %53, 4
  %55 = shl i32 %54, 2
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %59 = load i32, i32* @NIC_PF_LMAC_0_7_CFG, align 4
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 %60, 3
  %62 = or i32 %59, %61
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @nic_reg_write(%struct.nicpf* %58, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %40

68:                                               ; preds = %40
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i64*) #1

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
