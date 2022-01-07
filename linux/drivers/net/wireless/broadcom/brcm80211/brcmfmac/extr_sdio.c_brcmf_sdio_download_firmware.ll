; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@CLK_AVAIL = common dso_local global i32 0, align 4
@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"firmware rstvec: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"dongle image file download failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"dongle nvram file download failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"error getting out of ARM core reset\0A\00", align 1
@CLK_SDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, %struct.firmware*, i8*, i32)* @brcmf_sdio_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_download_firmware(%struct.brcmf_sdio* %0, %struct.firmware* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.brcmf_sdio*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sdio_claim_host(i32 %15)
  %17 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %18 = load i32, i32* @CLK_AVAIL, align 4
  %19 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %17, i32 %18, i32 0)
  %20 = load %struct.firmware*, %struct.firmware** %6, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_unaligned_le32(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @SDIO, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @brcmf_dbg(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %28 = load %struct.firmware*, %struct.firmware** %6, align 8
  %29 = call i32 @brcmf_sdio_download_code_file(%struct.brcmf_sdio* %27, %struct.firmware* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.firmware*, %struct.firmware** %6, align 8
  %31 = call i32 @release_firmware(%struct.firmware* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = call i32 @brcmf_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @brcmf_fw_nvram_free(i8* %36)
  br label %59

38:                                               ; preds = %4
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @brcmf_sdio_download_nvram(%struct.brcmf_sdio* %39, i8* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @brcmf_fw_nvram_free(i8* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @brcmf_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %59

49:                                               ; preds = %38
  %50 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %51 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @brcmf_chip_set_active(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = call i32 @brcmf_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56, %47, %34
  %60 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %61 = load i32, i32* @CLK_SDONLY, align 4
  %62 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %60, i32 %61, i32 0)
  %63 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %64 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sdio_release_host(i32 %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmf_sdio_download_code_file(%struct.brcmf_sdio*, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_fw_nvram_free(i8*) #1

declare dso_local i32 @brcmf_sdio_download_nvram(%struct.brcmf_sdio*, i8*, i32) #1

declare dso_local i32 @brcmf_chip_set_active(i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
