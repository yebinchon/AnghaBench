; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_enable_mib_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_enable_mib_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enable MIB counters\0A\00", align 1
@AR_FILT_OFDM = common dso_local global i32 0, align 4
@AR_FILT_CCK = common dso_local global i32 0, align 4
@AR_MIBC = common dso_local global i32 0, align 4
@AR_MIBC_COW = common dso_local global i32 0, align 4
@AR_MIBC_FMC = common dso_local global i32 0, align 4
@AR_MIBC_CMC = common dso_local global i32 0, align 4
@AR_MIBC_MCS = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_MASK_2 = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_enable_mib_counters(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %7 = load i32, i32* @ANI, align 4
  %8 = call i32 @ath_dbg(%struct.ath_common* %6, i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = call i32 @ath9k_hw_update_mibstats(%struct.ath_hw* %9, i32* %11)
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = load i32, i32* @AR_FILT_OFDM, align 4
  %17 = call i32 @REG_WRITE(%struct.ath_hw* %15, i32 %16, i32 0)
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = load i32, i32* @AR_FILT_CCK, align 4
  %20 = call i32 @REG_WRITE(%struct.ath_hw* %18, i32 %19, i32 0)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = load i32, i32* @AR_MIBC, align 4
  %23 = load i32, i32* @AR_MIBC_COW, align 4
  %24 = load i32, i32* @AR_MIBC_FMC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AR_MIBC_CMC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AR_MIBC_MCS, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %30, 15
  %32 = call i32 @REG_WRITE(%struct.ath_hw* %21, i32 %22, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i32, i32* @AR_PHY_ERR_MASK_1, align 4
  %35 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %38 = load i32, i32* @AR_PHY_ERR_MASK_2, align 4
  %39 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %40 = call i32 @REG_WRITE(%struct.ath_hw* %37, i32 %38, i32 %39)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %42 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %41)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_hw_update_mibstats(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
