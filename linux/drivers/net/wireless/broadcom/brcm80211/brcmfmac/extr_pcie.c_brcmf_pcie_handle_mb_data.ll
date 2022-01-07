; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_handle_mb_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_handle_mb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, %struct.TYPE_2__*, i32, %struct.brcmf_pcie_shared_info }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_pcie_shared_info = type { i32 }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"D2H_MB_DATA: 0x%04x\0A\00", align 1
@BRCMF_D2H_DEV_DS_ENTER_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"D2H_MB_DATA: DEEP SLEEP REQ\0A\00", align 1
@BRCMF_H2D_HOST_DS_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"D2H_MB_DATA: sent DEEP SLEEP ACK\0A\00", align 1
@BRCMF_D2H_DEV_DS_EXIT_NOTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"D2H_MB_DATA: DEEP SLEEP EXIT\0A\00", align 1
@BRCMF_D2H_DEV_D3_ACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"D2H_MB_DATA: D3 ACK\0A\00", align 1
@BRCMF_D2H_DEV_FWHALT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"D2H_MB_DATA: FW HALT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*)* @brcmf_pcie_handle_mb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_handle_mb_data(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca %struct.brcmf_pciedev_info*, align 8
  %3 = alloca %struct.brcmf_pcie_shared_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %2, align 8
  %6 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %6, i32 0, i32 3
  store %struct.brcmf_pcie_shared_info* %7, %struct.brcmf_pcie_shared_info** %3, align 8
  %8 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %18, i32 %19, i32 0)
  %21 = load i32, i32* @PCIE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BRCMF_D2H_DEV_DS_ENTER_REQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load i32, i32* @PCIE, align 4
  %30 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %32 = load i32, i32* @BRCMF_H2D_HOST_DS_ACK, align 4
  %33 = call i32 @brcmf_pcie_send_mb_data(%struct.brcmf_pciedev_info* %31, i32 %32)
  %34 = load i32, i32* @PCIE, align 4
  %35 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %28, %17
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BRCMF_D2H_DEV_DS_EXIT_NOTE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @PCIE, align 4
  %43 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @BRCMF_D2H_DEV_D3_ACK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* @PCIE, align 4
  %51 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %53 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %55 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %54, i32 0, i32 2
  %56 = call i32 @wake_up(i32* %55)
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @BRCMF_D2H_DEV_FWHALT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @PCIE, align 4
  %64 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %66 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @brcmf_fw_crashed(i32* %68)
  br label %70

70:                                               ; preds = %16, %62, %57
  ret void
}

declare dso_local i32 @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info*, i32, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_pcie_send_mb_data(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @brcmf_fw_crashed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
