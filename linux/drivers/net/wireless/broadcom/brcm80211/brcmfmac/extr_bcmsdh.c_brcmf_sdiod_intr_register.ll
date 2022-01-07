; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_intr_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_intr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i64 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Enter, register OOB IRQ %d\0A\00", align 1
@brcmf_sdiod_oob_irqhandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"brcmf_oob_intr\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"request_irq failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"enable_irq_wake failed %d\0A\00", align 1
@BRCM_CC_43362_CHIP_ID = common dso_local global i64 0, align 8
@SI_ENUM_BASE = common dso_local global i32 0, align 4
@SBSDIO_GPIO_SELECT = common dso_local global i32 0, align 4
@SBSDIO_GPIO_OUT = common dso_local global i32 0, align 4
@SBSDIO_GPIO_EN = common dso_local global i32 0, align 4
@SDIO_CCCR_IENx = common dso_local global i32 0, align 4
@SDIO_CCCR_IEN_FUNC1 = common dso_local global i32 0, align 4
@SDIO_CCCR_IEN_FUNC2 = common dso_local global i32 0, align 4
@SDIO_CCCR_IEN_FUNC0 = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_SEPINT_MASK = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_SEPINT_OE = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_SEPINT_ACT_HI = common dso_local global i32 0, align 4
@SDIO_CCCR_BRCM_SEPINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Entering\0A\00", align 1
@brcmf_sdiod_ib_irqhandler = common dso_local global i32 0, align 4
@brcmf_sdiod_dummy_irqhandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_sdiod_intr_register(%struct.brcmf_sdio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca %struct.brcmfmac_sdio_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %9, i32 0, i32 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.brcmfmac_sdio_pd* %13, %struct.brcmfmac_sdio_pd** %4, align 8
  %14 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %4, align 8
  %15 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %133

18:                                               ; preds = %1
  %19 = load i32, i32* @SDIO, align 4
  %20 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %4, align 8
  %21 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %24, i32 0, i32 7
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %4, align 8
  %30 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @brcmf_sdiod_oob_irqhandler, align 4
  %33 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %4, align 8
  %34 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %36, i32 0, i32 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @request_irq(i32 %31, i32 %32, i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %18
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @brcmf_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %157

47:                                               ; preds = %18
  %48 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %4, align 8
  %51 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @enable_irq_wake(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @brcmf_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %157

60:                                               ; preds = %47
  %61 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %62 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %64 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %63, i32 0, i32 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i32 @sdio_claim_host(%struct.TYPE_10__* %65)
  %67 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %67, i32 0, i32 6
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BRCM_CC_43362_CHIP_ID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %60
  %75 = load i32, i32* @SI_ENUM_BASE, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @CORE_CC_REG(i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev* %78, i32 %79, i32* %5)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, 2
  store i32 %82, i32* %8, align 4
  %83 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %83, i32 %84, i32 %85, i32* %5)
  %87 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %88 = load i32, i32* @SBSDIO_GPIO_SELECT, align 4
  %89 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %87, i32 %88, i32 15, i32* %5)
  %90 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %91 = load i32, i32* @SBSDIO_GPIO_OUT, align 4
  %92 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %90, i32 %91, i32 0, i32* %5)
  %93 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %94 = load i32, i32* @SBSDIO_GPIO_EN, align 4
  %95 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %93, i32 %94, i32 2, i32* %5)
  br label %96

96:                                               ; preds = %74, %60
  %97 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %98 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %99 = call i32 @brcmf_sdiod_func0_rb(%struct.brcmf_sdio_dev* %97, i32 %98, i32* %5)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* @SDIO_CCCR_IEN_FUNC1, align 4
  %101 = load i32, i32* @SDIO_CCCR_IEN_FUNC2, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @SDIO_CCCR_IEN_FUNC0, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %108 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev* %107, i32 %108, i32 %109, i32* %5)
  %111 = load i32, i32* @SDIO_CCCR_BRCM_SEPINT_MASK, align 4
  %112 = load i32, i32* @SDIO_CCCR_BRCM_SEPINT_OE, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %6, align 4
  %114 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %4, align 8
  %115 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %96
  %121 = load i32, i32* @SDIO_CCCR_BRCM_SEPINT_ACT_HI, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %96
  %125 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %126 = load i32, i32* @SDIO_CCCR_BRCM_SEPINT, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev* %125, i32 %126, i32 %127, i32* %5)
  %129 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %130 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %129, i32 0, i32 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = call i32 @sdio_release_host(%struct.TYPE_10__* %131)
  br label %156

133:                                              ; preds = %1
  %134 = load i32, i32* @SDIO, align 4
  %135 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %137 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %136, i32 0, i32 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = call i32 @sdio_claim_host(%struct.TYPE_10__* %138)
  %140 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %141 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %140, i32 0, i32 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = load i32, i32* @brcmf_sdiod_ib_irqhandler, align 4
  %144 = call i32 @sdio_claim_irq(%struct.TYPE_10__* %142, i32 %143)
  %145 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %146 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %145, i32 0, i32 5
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* @brcmf_sdiod_dummy_irqhandler, align 4
  %149 = call i32 @sdio_claim_irq(%struct.TYPE_10__* %147, i32 %148)
  %150 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %151 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %150, i32 0, i32 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = call i32 @sdio_release_host(%struct.TYPE_10__* %152)
  %154 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %155 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %154, i32 0, i32 3
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %133, %124
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %56, %43
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_10__*) #1

declare dso_local i32 @CORE_CC_REG(i32, i32) #1

declare dso_local i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_func0_rb(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_10__*) #1

declare dso_local i32 @sdio_claim_irq(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
