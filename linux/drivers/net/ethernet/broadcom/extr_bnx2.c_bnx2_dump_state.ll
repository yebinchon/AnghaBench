; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_dump_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_dump_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@PCI_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"DEBUG: intr_sem[%x] PCI_CMD[%08x]\0A\00", align 1
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@BNX2_PCICFG_MISC_CONFIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"DEBUG: PCI_PM[%08x] PCI_MISC_CFG[%08x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"DEBUG: EMAC_TX_STATUS[%08x] EMAC_RX_STATUS[%08x]\0A\00", align 1
@BNX2_EMAC_TX_STATUS = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"DEBUG: RPM_MGMT_PKT_CTRL[%08x]\0A\00", align 1
@BNX2_RPM_MGMT_PKT_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"DEBUG: HC_STATS_INTERRUPT_STATUS[%08x]\0A\00", align 1
@BNX2_HC_STATS_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"DEBUG: PBA[%08x]\0A\00", align 1
@BNX2_PCI_GRC_WINDOW3_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_dump_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_dump_state(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %6 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @PCI_COMMAND, align 8
  %13 = call i32 @pci_read_config_dword(i32 %11, i64 %12, i32* %4)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 3
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_PM_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @pci_read_config_dword(i32 %22, i64 %27, i32* %4)
  %29 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @BNX2_PCICFG_MISC_CONFIG, align 8
  %33 = call i32 @pci_read_config_dword(i32 %31, i64 %32, i32* %5)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %40 = load i32, i32* @BNX2_EMAC_TX_STATUS, align 4
  %41 = call i32 @BNX2_RD(%struct.bnx2* %39, i32 %40)
  %42 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %43 = load i32, i32* @BNX2_EMAC_RX_STATUS, align 4
  %44 = call i32 @BNX2_RD(%struct.bnx2* %42, i32 %43)
  %45 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %48 = load i32, i32* @BNX2_RPM_MGMT_PKT_CTRL, align 4
  %49 = call i32 @BNX2_RD(%struct.bnx2* %47, i32 %48)
  %50 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %53 = load i32, i32* @BNX2_HC_STATS_INTERRUPT_STATUS, align 4
  %54 = call i32 @BNX2_RD(%struct.bnx2* %52, i32 %53)
  %55 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BNX2_FLAG_USING_MSIX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %1
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %65 = load i32, i32* @BNX2_PCI_GRC_WINDOW3_BASE, align 4
  %66 = call i32 @BNX2_RD(%struct.bnx2* %64, i32 %65)
  %67 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %1
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i64, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
