; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_buscoreprep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_buscoreprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i32 }

@SBSDIO_FORCE_HW_CLKREQ_OFF = common dso_local global i32 0, align 4
@SBSDIO_ALP_AVAIL_REQ = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"error writing for HT off\0A\00", align 1
@SBSDIO_AVBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ChipClkCSR access: wrote 0x%02x read 0x%02x\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@PMU_MAX_TRANSITION_DLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"timeout on ALPAV wait, clkval 0x%02x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SBSDIO_FORCE_ALP = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SDIOPULLUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @brcmf_sdio_buscoreprep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_buscoreprep(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.brcmf_sdio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.brcmf_sdio_dev*
  store %struct.brcmf_sdio_dev* %9, %struct.brcmf_sdio_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @SBSDIO_FORCE_HW_CLKREQ_OFF, align 4
  %11 = load i32, i32* @SBSDIO_ALP_AVAIL_REQ, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %14 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %13, i32 %14, i32 %15, i32* %5)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %24 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %25 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %23, i32 %24, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SBSDIO_AVBITS, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EACCES, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %69

38:                                               ; preds = %22
  %39 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %40 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %41 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %39, i32 %40, i32* null)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SBSDIO_ALPAV(i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @PMU_MAX_TRANSITION_DLY, align 4
  %48 = call i32 @SPINWAIT(i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @SBSDIO_ALPAV(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @brcmf_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %38
  %58 = load i32, i32* @SBSDIO_FORCE_HW_CLKREQ_OFF, align 4
  %59 = load i32, i32* @SBSDIO_FORCE_ALP, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %62 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %61, i32 %62, i32 %63, i32* %5)
  %65 = call i32 @udelay(i32 65)
  %66 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %67 = load i32, i32* @SBSDIO_FUNC1_SDIOPULLUP, align 4
  %68 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %66, i32 %67, i32 0, i32* null)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %57, %52, %32, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @SBSDIO_ALPAV(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
