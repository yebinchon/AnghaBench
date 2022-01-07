; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_cm3_set_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_cm3_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i32)* }
%struct.brcmf_core = type { i32 }

@BCMA_CORE_INTERNAL_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SOCRAM core is down after reset?\0A\00", align 1
@BCMA_CORE_ARM_CM3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_chip_priv*)* @brcmf_chip_cm3_set_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_cm3_set_active(%struct.brcmf_chip_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_chip_priv*, align 8
  %4 = alloca %struct.brcmf_core*, align 8
  store %struct.brcmf_chip_priv* %0, %struct.brcmf_chip_priv** %3, align 8
  %5 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %6 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %5, i32 0, i32 0
  %7 = load i32, i32* @BCMA_CORE_INTERNAL_MEM, align 4
  %8 = call %struct.brcmf_core* @brcmf_chip_get_core(i32* %6, i32 %7)
  store %struct.brcmf_core* %8, %struct.brcmf_core** %4, align 8
  %9 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %10 = call i32 @brcmf_chip_iscoreup(%struct.brcmf_core* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @brcmf_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %18, align 8
  %20 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %24 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %23, i32 0, i32 0
  %25 = call i32 %19(i32 %22, i32* %24, i32 0)
  %26 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %27 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %26, i32 0, i32 0
  %28 = load i32, i32* @BCMA_CORE_ARM_CM3, align 4
  %29 = call %struct.brcmf_core* @brcmf_chip_get_core(i32* %27, i32 %28)
  store %struct.brcmf_core* %29, %struct.brcmf_core** %4, align 8
  %30 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %31 = call i32 @brcmf_chip_resetcore(%struct.brcmf_core* %30, i32 0, i32 0, i32 0)
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.brcmf_core* @brcmf_chip_get_core(i32*, i32) #1

declare dso_local i32 @brcmf_chip_iscoreup(%struct.brcmf_core*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_chip_resetcore(%struct.brcmf_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
