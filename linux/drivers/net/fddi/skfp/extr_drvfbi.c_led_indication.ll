; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_drvfbi.c_led_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_drvfbi.c_led_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.s_phy* }
%struct.s_phy = type { %struct.fddi_mib_p* }
%struct.fddi_mib_p = type { i64 }

@PA = common dso_local global i64 0, align 8
@PB = common dso_local global i64 0, align 8
@B0_LED = common dso_local global i32 0, align 4
@LED_GA_OFF = common dso_local global i32 0, align 4
@LED_GA_ON = common dso_local global i32 0, align 4
@LED_GB_OFF = common dso_local global i32 0, align 4
@LED_GB_ON = common dso_local global i32 0, align 4
@LED_MY_OFF = common dso_local global i32 0, align 4
@LED_MY_ON = common dso_local global i32 0, align 4
@LED_Y_OFF = common dso_local global i32 0, align 4
@LED_Y_ON = common dso_local global i32 0, align 4
@PC8_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32)* @led_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_indication(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.s_phy*, align 8
  %7 = alloca %struct.fddi_mib_p*, align 8
  %8 = alloca %struct.fddi_mib_p*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = load %struct.s_phy*, %struct.s_phy** %10, align 8
  %12 = load i64, i64* @PA, align 8
  %13 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %11, i64 %12
  store %struct.s_phy* %13, %struct.s_phy** %6, align 8
  %14 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %15 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %14, i32 0, i32 0
  %16 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %15, align 8
  store %struct.fddi_mib_p* %16, %struct.fddi_mib_p** %7, align 8
  %17 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 0
  %19 = load %struct.s_phy*, %struct.s_phy** %18, align 8
  %20 = load i64, i64* @PB, align 8
  %21 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %19, i64 %20
  store %struct.s_phy* %21, %struct.s_phy** %6, align 8
  %22 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %23 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %22, i32 0, i32 0
  %24 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %23, align 8
  store %struct.fddi_mib_p* %24, %struct.fddi_mib_p** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
