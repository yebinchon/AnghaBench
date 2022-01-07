; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_sr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_sr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@SBSDIO_FUNC1_WCTRL_ALPWAIT_SHIFT = common dso_local global i32 0, align 4
@SBSDIO_HT_AVAIL_REQ = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_WCTRL_HTWAIT_SHIFT = common dso_local global i32 0, align 4
@SBSDIO_FORCE_HT = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_CARDCAP_CMD_NODEC = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_CARDCAP_CMD14_SUPPORT = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_CARDCAP_CMD14_EXT = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_WAKEUPCTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"error reading SBSDIO_FUNC1_WAKEUPCTRL\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"error writing SBSDIO_FUNC1_WAKEUPCTRL\0A\00", align 1
@SDIO_CCCR_BRCM_CARDCAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"error writing SDIO_CCCR_BRCM_CARDCAP\0A\00", align 1
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"error writing SBSDIO_FUNC1_CHIPCLKCSR\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"SR enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*)* @brcmf_sdio_sr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_sr_init(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @TRACE, align 4
  %9 = call i32 @brcmf_dbg(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @brcmf_chip_is_ulp(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @SBSDIO_FUNC1_WCTRL_ALPWAIT_SHIFT, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @SBSDIO_HT_AVAIL_REQ, align 4
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @SBSDIO_FUNC1_WCTRL_HTWAIT_SHIFT, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @SBSDIO_FORCE_HT, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %23 = call i64 @brcmf_sdio_aos_no_decode(%struct.brcmf_sdio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SDIO_CCCR_BRCM_CARDCAP_CMD_NODEC, align 4
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @SDIO_CCCR_BRCM_CARDCAP_CMD14_SUPPORT, align 4
  %29 = load i32, i32* @SDIO_CCCR_BRCM_CARDCAP_CMD14_EXT, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %33 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SBSDIO_FUNC1_WAKEUPCTRL, align 4
  %36 = call i32 @brcmf_sdiod_readb(i32 %34, i32 %35, i32* %3)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @brcmf_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %83

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %47 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SBSDIO_FUNC1_WAKEUPCTRL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @brcmf_sdiod_writeb(i32 %48, i32 %49, i32 %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = call i32 @brcmf_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %83

56:                                               ; preds = %41
  %57 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %58 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDIO_CCCR_BRCM_CARDCAP, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @brcmf_sdiod_func0_wb(i32 %59, i32 %60, i32 %61, i32* %3)
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 @brcmf_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %83

67:                                               ; preds = %56
  %68 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @brcmf_sdiod_writeb(i32 %70, i32 %71, i32 %72, i32* %3)
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 @brcmf_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %83

78:                                               ; preds = %67
  %79 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %80 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @INFO, align 4
  %82 = call i32 @brcmf_dbg(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %76, %65, %54, %39
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i64 @brcmf_chip_is_ulp(i32) #1

declare dso_local i64 @brcmf_sdio_aos_no_decode(%struct.brcmf_sdio*) #1

declare dso_local i32 @brcmf_sdiod_readb(i32, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_sdiod_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_func0_wb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
