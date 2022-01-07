; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_cache_ini_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_cache_ini_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__, %struct.ar5416AniState, %struct.ath9k_channel* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar5416AniState = type { i32, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ver %d.%d opmode %u chan %d Mhz\0A\00", align 1
@AR_PHY_SFCORR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2COUNT_THR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW = common dso_local global i32 0, align 4
@AR_PHY_TIMING5 = common dso_local global i32 0, align 4
@AR_PHY_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_CYCPWR_THR1 = common dso_local global i32 0, align 4
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_ani_cache_ini_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_ani_cache_ini_regs(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ar5416AniState*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath9k_ani_default*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 3
  %12 = load %struct.ath9k_channel*, %struct.ath9k_channel** %11, align 8
  store %struct.ath9k_channel* %12, %struct.ath9k_channel** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 2
  store %struct.ar5416AniState* %14, %struct.ar5416AniState** %3, align 8
  %15 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %16 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %15, i32 0, i32 4
  store %struct.ath9k_ani_default* %16, %struct.ath9k_ani_default** %6, align 8
  %17 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %18 = load i32, i32* @ANI, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %31 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ath_dbg(%struct.ath_common* %17, i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = load i32, i32* @AR_PHY_SFCORR, align 4
  %36 = call i32 @REG_READ(%struct.ath_hw* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %39 = call i8* @MS(i32 %37, i32 %38)
  %40 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %41 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %40, i32 0, i32 13
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %44 = call i8* @MS(i32 %42, i32 %43)
  %45 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %46 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %45, i32 0, i32 12
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %49 = call i8* @MS(i32 %47, i32 %48)
  %50 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %51 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %50, i32 0, i32 11
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %54 = call i32 @REG_READ(%struct.ath_hw* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %57 = call i8* @MS(i32 %55, i32 %56)
  %58 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %59 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %62 = call i8* @MS(i32 %60, i32 %61)
  %63 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %64 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %67 = call i8* @MS(i32 %65, i32 %66)
  %68 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %69 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %72 = call i32 @REG_READ(%struct.ath_hw* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %75 = call i8* @MS(i32 %73, i32 %74)
  %76 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %77 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %80 = call i8* @MS(i32 %78, i32 %79)
  %81 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %82 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %85 = call i8* @MS(i32 %83, i32 %84)
  %86 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %87 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %90 = call i8* @MS(i32 %88, i32 %89)
  %91 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %92 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %94 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %95 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %96 = call i8* @REG_READ_FIELD(%struct.ath_hw* %93, i32 %94, i32 %95)
  %97 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %98 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %100 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %101 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW, align 4
  %102 = call i8* @REG_READ_FIELD(%struct.ath_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %104 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %106 = load i32, i32* @AR_PHY_TIMING5, align 4
  %107 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %108 = call i8* @REG_READ_FIELD(%struct.ath_hw* %105, i32 %106, i32 %107)
  %109 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %110 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %112 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %113 = load i32, i32* @AR_PHY_EXT_CYCPWR_THR1, align 4
  %114 = call i8* @REG_READ_FIELD(%struct.ath_hw* %111, i32 %112, i32 %113)
  %115 = load %struct.ath9k_ani_default*, %struct.ath9k_ani_default** %6, align 8
  %116 = getelementptr inbounds %struct.ath9k_ani_default, %struct.ath9k_ani_default* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %118 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %119 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %121 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %122 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %124 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.ar5416AniState*, %struct.ar5416AniState** %3, align 8
  %126 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i8* @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
