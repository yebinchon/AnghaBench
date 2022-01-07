; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_tx99_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_phy.c_ar9002_hw_tx99_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXD = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_SIFS = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR_D_FPCTL = common dso_local global i32 0, align 4
@AR_TIME_OUT = common dso_local global i32 0, align 4
@AR_Q_MISC_DCU_EARLY_TERM_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9002_hw_tx99_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9002_hw_tx99_start(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = call i32 @REG_SET_BIT(%struct.ath_hw* %5, i32 39012, i32 520192)
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call i32 @REG_SET_BIT(%struct.ath_hw* %7, i32 39204, i32 8323326)
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = load i32, i32* @AR_DIAG_SW, align 4
  %11 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %12 = call i32 @REG_CLR_BIT(%struct.ath_hw* %9, i32 %10, i32 %11)
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load i32, i32* @AR_CR, align 4
  %15 = load i32, i32* @AR_CR_RXD, align 4
  %16 = call i32 @REG_WRITE(%struct.ath_hw* %13, i32 %14, i32 %15)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @AR_DLCL_IFS(i32 %18)
  %20 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %19, i32 0)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = load i32, i32* @AR_D_GBL_IFS_SIFS, align 4
  %23 = call i32 @REG_WRITE(%struct.ath_hw* %21, i32 %22, i32 20)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 %25, i32 20)
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @AR_D_FPCTL, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 16, %29
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_TIME_OUT, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %32, i32 %33, i32 1024)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @AR_DRETRY_LIMIT(i32 %36)
  %38 = call i32 @REG_WRITE(%struct.ath_hw* %35, i32 %37, i32 -1)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @AR_QMISC(i32 %40)
  %42 = load i32, i32* @AR_Q_MISC_DCU_EARLY_TERM_REQ, align 4
  %43 = call i32 @REG_SET_BIT(%struct.ath_hw* %39, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_DLCL_IFS(i32) #1

declare dso_local i32 @AR_DRETRY_LIMIT(i32) #1

declare dso_local i32 @AR_QMISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
