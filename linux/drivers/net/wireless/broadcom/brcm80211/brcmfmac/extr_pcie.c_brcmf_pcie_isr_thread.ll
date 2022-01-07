; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BRCMF_PCIE_PCIE2REG_MAILBOXINT = common dso_local global i32 0, align 4
@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Enter %x\0A\00", align 1
@BRCMF_PCIE_MB_INT_FN0_0 = common dso_local global i32 0, align 4
@BRCMF_PCIE_MB_INT_FN0_1 = common dso_local global i32 0, align 4
@BRCMF_PCIE_MB_INT_D2H_DB = common dso_local global i32 0, align 4
@BRCMFMAC_PCIE_STATE_UP = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @brcmf_pcie_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_pciedev_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.brcmf_pciedev_info*
  store %struct.brcmf_pciedev_info* %8, %struct.brcmf_pciedev_info** %5, align 8
  %9 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %10 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %12 = load i32, i32* @BRCMF_PCIE_PCIE2REG_MAILBOXINT, align 4
  %13 = call i32 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @PCIE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @brcmf_dbg(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %21 = load i32, i32* @BRCMF_PCIE_PCIE2REG_MAILBOXINT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BRCMF_PCIE_MB_INT_FN0_0, align 4
  %26 = load i32, i32* @BRCMF_PCIE_MB_INT_FN0_1, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %32 = call i32 @brcmf_pcie_handle_mb_data(%struct.brcmf_pciedev_info* %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BRCMF_PCIE_MB_INT_D2H_DB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BRCMFMAC_PCIE_STATE_UP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %46 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @brcmf_proto_msgbuf_rx_trigger(i32* %48)
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %33
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %54 = call i32 @brcmf_pcie_bus_console_read(%struct.brcmf_pciedev_info* %53, i32 0)
  %55 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %56 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BRCMFMAC_PCIE_STATE_UP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %62 = call i32 @brcmf_pcie_intr_enable(%struct.brcmf_pciedev_info* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %5, align 8
  %65 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info*, i32, i32) #1

declare dso_local i32 @brcmf_pcie_handle_mb_data(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_proto_msgbuf_rx_trigger(i32*) #1

declare dso_local i32 @brcmf_pcie_bus_console_read(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_pcie_intr_enable(%struct.brcmf_pciedev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
