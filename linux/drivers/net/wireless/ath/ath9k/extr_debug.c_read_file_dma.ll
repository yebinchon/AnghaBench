; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@ATH9K_NUM_DMA_DEBUG_REGS = common dso_local global i32 0, align 4
@AR_MACMISC = common dso_local global i32 0, align 4
@AR_MACMISC_DMA_OBS_LINE_8 = common dso_local global i32 0, align 4
@AR_MACMISC_DMA_OBS_S = common dso_local global i32 0, align 4
@AR_MACMISC_MISC_OBS_BUS_1 = common dso_local global i32 0, align 4
@AR_MACMISC_MISC_OBS_BUS_MSB_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Raw DMA Debug values:\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AR_DMADBG_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%d: %08x \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Num QCU: chain_st fsp_ok fsp_st DCU: chain_st\0A\00", align 1
@ATH9K_NUM_QUEUES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"%2d          %2x      %1x     %2x           %2x\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"qcu_stitch state:   %2x    qcu_fetch state:        %2x\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"qcu_complete state: %2x    dcu_complete state:     %2x\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"dcu_arb state:      %2x    dcu_fp state:           %2x\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"chan_idle_dur:     %3d    chan_idle_dur_valid:     %1d\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"txfifo_valid_0:      %1d    txfifo_valid_1:          %1d\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"txfifo_dcu_num_0:   %2d    txfifo_dcu_num_1:       %2d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"pcu observe: 0x%x\0A\00", align 1
@AR_OBS_BUS_1 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"AR_CR: 0x%x\0A\00", align 1
@AR_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @read_file_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file_dma(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ieee80211_hw* @dev_get_drvdata(i32 %17)
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.ath_softc*, %struct.ath_softc** %20, align 8
  store %struct.ath_softc* %21, %struct.ath_softc** %6, align 8
  %22 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = load %struct.ath_hw*, %struct.ath_hw** %23, align 8
  store %struct.ath_hw* %24, %struct.ath_hw** %7, align 8
  %25 = load i32, i32* @ATH9K_NUM_DMA_DEBUG_REGS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32* %29, i32** %13, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %30, i32** %14, align 8
  %31 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %32 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %34 = load i32, i32* @AR_MACMISC, align 4
  %35 = load i32, i32* @AR_MACMISC_DMA_OBS_LINE_8, align 4
  %36 = load i32, i32* @AR_MACMISC_DMA_OBS_S, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @AR_MACMISC_MISC_OBS_BUS_1, align 4
  %39 = load i32, i32* @AR_MACMISC_MISC_OBS_BUS_MSB_S, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = call i32 @REG_WRITE_D(%struct.ath_hw* %33, i32 %34, i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 @seq_puts(%struct.seq_file* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %74, %2
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ATH9K_NUM_DMA_DEBUG_REGS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = srem i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = call i32 @seq_puts(%struct.seq_file* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %58 = load i64, i64* @AR_DMADBG_0, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = add i64 %58, %61
  %63 = call i32 @REG_READ_D(%struct.ath_hw* %57, i64 %62)
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %28, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %28, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = call i32 @seq_puts(%struct.seq_file* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %133, %77
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ATH9K_NUM_QUEUES, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %140

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %13, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 6
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  store i32 0, i32* %12, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %14, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 7, %103
  %105 = and i32 %102, %104
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = shl i32 8, %110
  %112 = and i32 %109, %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 3
  %115 = ashr i32 %112, %114
  %116 = getelementptr inbounds i32, i32* %28, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = mul nsw i32 %118, 3
  %120 = shl i32 7, %119
  %121 = and i32 %117, %120
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %122, 3
  %124 = ashr i32 %121, %123
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 31, %127
  %129 = and i32 %126, %128
  %130 = load i32, i32* %12, align 4
  %131 = ashr i32 %129, %130
  %132 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %107, i32 %115, i32 %124, i32 %131)
  br label %133

133:                                              ; preds = %98
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 4
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 5
  store i32 %139, i32* %12, align 4
  br label %82

140:                                              ; preds = %82
  %141 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %142 = call i32 @seq_puts(%struct.seq_file* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %143 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %144 = getelementptr inbounds i32, i32* %28, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 3932160
  %147 = ashr i32 %146, 18
  %148 = getelementptr inbounds i32, i32* %28, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 62914560
  %151 = ashr i32 %150, 22
  %152 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %143, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %147, i32 %151)
  %153 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %154 = getelementptr inbounds i32, i32* %28, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 469762048
  %157 = ashr i32 %156, 26
  %158 = getelementptr inbounds i32, i32* %28, i64 6
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, 3
  %161 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %153, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %157, i32 %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %163 = getelementptr inbounds i32, i32* %28, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 100663296
  %166 = ashr i32 %165, 25
  %167 = getelementptr inbounds i32, i32* %28, i64 5
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 939524096
  %170 = ashr i32 %169, 27
  %171 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %166, i32 %170)
  %172 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %173 = getelementptr inbounds i32, i32* %28, i64 6
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, 1020
  %176 = ashr i32 %175, 2
  %177 = getelementptr inbounds i32, i32* %28, i64 6
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 1024
  %180 = ashr i32 %179, 10
  %181 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %172, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %176, i32 %180)
  %182 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %183 = getelementptr inbounds i32, i32* %28, i64 6
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 2048
  %186 = ashr i32 %185, 11
  %187 = getelementptr inbounds i32, i32* %28, i64 6
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 4096
  %190 = ashr i32 %189, 12
  %191 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %182, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %186, i32 %190)
  %192 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %193 = getelementptr inbounds i32, i32* %28, i64 6
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 122880
  %196 = ashr i32 %195, 13
  %197 = getelementptr inbounds i32, i32* %28, i64 6
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, 1966080
  %200 = ashr i32 %199, 17
  %201 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %192, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %196, i32 %200)
  %202 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %203 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %204 = load i64, i64* @AR_OBS_BUS_1, align 8
  %205 = call i32 @REG_READ_D(%struct.ath_hw* %203, i64 %204)
  %206 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %202, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %205)
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %209 = load i64, i64* @AR_CR, align 8
  %210 = call i32 @REG_READ_D(%struct.ath_hw* %208, i64 %209)
  %211 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %207, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %210)
  %212 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %213 = call i32 @ath9k_ps_restore(%struct.ath_softc* %212)
  %214 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %214)
  ret i32 0
}

declare dso_local %struct.ieee80211_hw* @dev_get_drvdata(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @REG_WRITE_D(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @REG_READ_D(%struct.ath_hw*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
