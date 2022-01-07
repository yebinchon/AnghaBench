; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_dumpregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { %struct.TYPE_2__*, %struct.mmc_host* }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*)* }
%struct.mmc_host = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"============ CQHCI REGISTER DUMP ===========\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Caps:      0x%08x | Version:  0x%08x\0A\00", align 1
@CQHCI_CAP = common dso_local global i32 0, align 4
@CQHCI_VER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Config:    0x%08x | Control:  0x%08x\0A\00", align 1
@CQHCI_CFG = common dso_local global i32 0, align 4
@CQHCI_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Int stat:  0x%08x | Int enab: 0x%08x\0A\00", align 1
@CQHCI_IS = common dso_local global i32 0, align 4
@CQHCI_ISTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Int sig:   0x%08x | Int Coal: 0x%08x\0A\00", align 1
@CQHCI_ISGE = common dso_local global i32 0, align 4
@CQHCI_IC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"TDL base:  0x%08x | TDL up32: 0x%08x\0A\00", align 1
@CQHCI_TDLBA = common dso_local global i32 0, align 4
@CQHCI_TDLBAU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Doorbell:  0x%08x | TCN:      0x%08x\0A\00", align 1
@CQHCI_TDBR = common dso_local global i32 0, align 4
@CQHCI_TCN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Dev queue: 0x%08x | Dev Pend: 0x%08x\0A\00", align 1
@CQHCI_DQS = common dso_local global i32 0, align 4
@CQHCI_DPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Task clr:  0x%08x | SSC1:     0x%08x\0A\00", align 1
@CQHCI_TCLR = common dso_local global i32 0, align 4
@CQHCI_SSC1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"SSC2:      0x%08x | DCMD rsp: 0x%08x\0A\00", align 1
@CQHCI_SSC2 = common dso_local global i32 0, align 4
@CQHCI_CRDCT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"RED mask:  0x%08x | TERRI:    0x%08x\0A\00", align 1
@CQHCI_RMEM = common dso_local global i32 0, align 4
@CQHCI_TERRI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"Resp idx:  0x%08x | Resp arg: 0x%08x\0A\00", align 1
@CQHCI_CRI = common dso_local global i32 0, align 4
@CQHCI_CRA = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c": ===========================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cqhci_host*)* @cqhci_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cqhci_dumpregs(%struct.cqhci_host* %0) #0 {
  %2 = alloca %struct.cqhci_host*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  store %struct.cqhci_host* %0, %struct.cqhci_host** %2, align 8
  %4 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %4, i32 0, i32 1
  %6 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %9 = load i32, i32* @CQHCI_CAP, align 4
  %10 = call i32 @cqhci_readl(%struct.cqhci_host* %8, i32 %9)
  %11 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %12 = load i32, i32* @CQHCI_VER, align 4
  %13 = call i32 @cqhci_readl(%struct.cqhci_host* %11, i32 %12)
  %14 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %16 = load i32, i32* @CQHCI_CFG, align 4
  %17 = call i32 @cqhci_readl(%struct.cqhci_host* %15, i32 %16)
  %18 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %19 = load i32, i32* @CQHCI_CTL, align 4
  %20 = call i32 @cqhci_readl(%struct.cqhci_host* %18, i32 %19)
  %21 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %23 = load i32, i32* @CQHCI_IS, align 4
  %24 = call i32 @cqhci_readl(%struct.cqhci_host* %22, i32 %23)
  %25 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %26 = load i32, i32* @CQHCI_ISTE, align 4
  %27 = call i32 @cqhci_readl(%struct.cqhci_host* %25, i32 %26)
  %28 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %30 = load i32, i32* @CQHCI_ISGE, align 4
  %31 = call i32 @cqhci_readl(%struct.cqhci_host* %29, i32 %30)
  %32 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %33 = load i32, i32* @CQHCI_IC, align 4
  %34 = call i32 @cqhci_readl(%struct.cqhci_host* %32, i32 %33)
  %35 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %37 = load i32, i32* @CQHCI_TDLBA, align 4
  %38 = call i32 @cqhci_readl(%struct.cqhci_host* %36, i32 %37)
  %39 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %40 = load i32, i32* @CQHCI_TDLBAU, align 4
  %41 = call i32 @cqhci_readl(%struct.cqhci_host* %39, i32 %40)
  %42 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %44 = load i32, i32* @CQHCI_TDBR, align 4
  %45 = call i32 @cqhci_readl(%struct.cqhci_host* %43, i32 %44)
  %46 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %47 = load i32, i32* @CQHCI_TCN, align 4
  %48 = call i32 @cqhci_readl(%struct.cqhci_host* %46, i32 %47)
  %49 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %51 = load i32, i32* @CQHCI_DQS, align 4
  %52 = call i32 @cqhci_readl(%struct.cqhci_host* %50, i32 %51)
  %53 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %54 = load i32, i32* @CQHCI_DPT, align 4
  %55 = call i32 @cqhci_readl(%struct.cqhci_host* %53, i32 %54)
  %56 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %58 = load i32, i32* @CQHCI_TCLR, align 4
  %59 = call i32 @cqhci_readl(%struct.cqhci_host* %57, i32 %58)
  %60 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %61 = load i32, i32* @CQHCI_SSC1, align 4
  %62 = call i32 @cqhci_readl(%struct.cqhci_host* %60, i32 %61)
  %63 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %65 = load i32, i32* @CQHCI_SSC2, align 4
  %66 = call i32 @cqhci_readl(%struct.cqhci_host* %64, i32 %65)
  %67 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %68 = load i32, i32* @CQHCI_CRDCT, align 4
  %69 = call i32 @cqhci_readl(%struct.cqhci_host* %67, i32 %68)
  %70 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %72 = load i32, i32* @CQHCI_RMEM, align 4
  %73 = call i32 @cqhci_readl(%struct.cqhci_host* %71, i32 %72)
  %74 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %75 = load i32, i32* @CQHCI_TERRI, align 4
  %76 = call i32 @cqhci_readl(%struct.cqhci_host* %74, i32 %75)
  %77 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %79 = load i32, i32* @CQHCI_CRI, align 4
  %80 = call i32 @cqhci_readl(%struct.cqhci_host* %78, i32 %79)
  %81 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %82 = load i32, i32* @CQHCI_CRA, align 4
  %83 = call i32 @cqhci_readl(%struct.cqhci_host* %81, i32 %82)
  %84 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %86 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %88, align 8
  %90 = icmp ne i32 (%struct.mmc_host*)* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %1
  %92 = load %struct.cqhci_host*, %struct.cqhci_host** %2, align 8
  %93 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %95, align 8
  %97 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %98 = call i32 %96(%struct.mmc_host* %97)
  br label %101

99:                                               ; preds = %1
  %100 = call i32 (i8*, ...) @CQHCI_DUMP(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %91
  ret void
}

declare dso_local i32 @CQHCI_DUMP(i8*, ...) #1

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
