; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_kso_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_kso_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Enter: on=%d\0A\00", align 1
@SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SLEEPCSR = common dso_local global i32 0, align 4
@CY_CC_43012_CHIP_ID = common dso_local global i64 0, align 8
@SBSDIO_FUNC1_SLEEPCSR_KSO_MASK = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SLEEPCSR_DEVON_MASK = common dso_local global i32 0, align 4
@BRCMF_SDIO_MAX_ACCESS_ERRORS = common dso_local global i32 0, align 4
@KSO_WAIT_US = common dso_local global i32 0, align 4
@MAX_KSO_ATTEMPTS = common dso_local global i32 0, align 4
@SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"try_cnt=%d rd_val=0x%x err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"max tries: rd_val=0x%x err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*, i32)* @brcmf_sdio_kso_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_kso_control(%struct.brcmf_sdio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_sdio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @TRACE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %17 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sdio_retune_crc_disable(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sdio_retune_hold_now(i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %36 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @brcmf_sdiod_writeb(%struct.TYPE_5__* %37, i32 %38, i32 %39, i32* %10)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %31
  %44 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CY_CC_43012_CHIP_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %139

53:                                               ; preds = %43, %31
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_KSO_MASK, align 4
  %58 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_DEVON_MASK, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %9, align 4
  %61 = call i32 @usleep_range(i32 2000, i32 3000)
  br label %64

62:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  %63 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_KSO_MASK, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %56
  br label %65

65:                                               ; preds = %99, %64
  %66 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %67 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR, align 4
  %70 = call i32 @brcmf_sdiod_readb(%struct.TYPE_5__* %68, i32 %69, i32* %10)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %104

80:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @BRCMF_SDIO_MAX_ACCESS_ERRORS, align 4
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %104

90:                                               ; preds = %84, %81
  %91 = load i32, i32* @KSO_WAIT_US, align 4
  %92 = call i32 @udelay(i32 %91)
  %93 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %94 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @brcmf_sdiod_writeb(%struct.TYPE_5__* %95, i32 %96, i32 %97, i32* %10)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @MAX_KSO_ATTEMPTS, align 4
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %65, label %104

104:                                              ; preds = %99, %89, %79
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32, i32* @SDIO, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @MAX_KSO_ATTEMPTS, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @brcmf_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %126 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @sdio_retune_release(i32 %129)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %4, align 8
  %133 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sdio_retune_crc_enable(i32 %136)
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %131, %51
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @sdio_retune_crc_disable(i32) #1

declare dso_local i32 @sdio_retune_hold_now(i32) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @brcmf_err(i8*, i32, i32) #1

declare dso_local i32 @sdio_retune_release(i32) #1

declare dso_local i32 @sdio_retune_crc_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
