; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i64, i32 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enter: request %s currently %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WAKE\00", align 1
@SBSDIO_FUNC1_CHIPCLKCSR = common dso_local global i32 0, align 4
@SBSDIO_CSR_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"no clock, set ALP\0A\00", align 1
@SBSDIO_ALP_AVAIL_REQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"error while changing bus sleep state %d\0A\00", align 1
@CLK_NONE = common dso_local global i32 0, align 4
@CLK_AVAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"new state %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Exit: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, i32, i32)* @brcmf_sdio_bus_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_bus_sleep(%struct.brcmf_sdio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_sdio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @SDIO, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %14 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %19)
  %21 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %28 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %68

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %40 = call i32 @brcmf_sdiod_readb(i32 %38, i32 %39, i32* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SBSDIO_CSR_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load i32, i32* @SDIO, align 4
  %47 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SBSDIO_FUNC1_CHIPCLKCSR, align 4
  %52 = load i32, i32* @SBSDIO_ALP_AVAIL_REQ, align 4
  %53 = call i32 @brcmf_sdiod_writeb(i32 %50, i32 %51, i32 %52, i32* %7)
  br label %54

54:                                               ; preds = %45, %35
  %55 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %56 = call i32 @brcmf_sdio_kso_control(%struct.brcmf_sdio* %55, i32 0)
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %32
  %58 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %59 = call i32 @brcmf_sdio_kso_control(%struct.brcmf_sdio* %58, i32 1)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @brcmf_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %99

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %3
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %73 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %78 = load i32, i32* @CLK_NONE, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %89

82:                                               ; preds = %68
  %83 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %84 = load i32, i32* @CLK_AVAIL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio* %83, i32 %84, i32 %85)
  %87 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %88 = call i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio* %87, i32 1)
  br label %89

89:                                               ; preds = %82, %81
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %92 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @SDIO, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %98 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %89, %63
  %100 = load i32, i32* @SDIO, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_sdiod_readb(i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdio_kso_control(%struct.brcmf_sdio*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

declare dso_local i32 @brcmf_sdio_clkctl(%struct.brcmf_sdio*, i32, i32) #1

declare dso_local i32 @brcmf_sdio_wd_timer(%struct.brcmf_sdio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
