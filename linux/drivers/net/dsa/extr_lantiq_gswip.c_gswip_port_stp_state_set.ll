; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_stp_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_stp_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }

@GSWIP_SDMA_PCTRL_EN = common dso_local global i32 0, align 4
@GSWIP_PCE_PCTRL_0_PSTATE_LISTEN = common dso_local global i32 0, align 4
@GSWIP_PCE_PCTRL_0_PSTATE_LEARNING = common dso_local global i32 0, align 4
@GSWIP_PCE_PCTRL_0_PSTATE_FORWARDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid STP state: %d\0A\00", align 1
@GSWIP_PCE_PCTRL_0_PSTATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32)* @gswip_port_stp_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gswip_port_stp_state_set(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gswip_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.gswip_priv*, %struct.gswip_priv** %10, align 8
  store %struct.gswip_priv* %11, %struct.gswip_priv** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 131, label %13
    i32 132, label %19
    i32 128, label %19
    i32 129, label %21
    i32 130, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %15 = load i32, i32* @GSWIP_SDMA_PCTRL_EN, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GSWIP_SDMA_PCTRLp(i32 %16)
  %18 = call i32 @gswip_switch_mask(%struct.gswip_priv* %14, i32 %15, i32 0, i32 %17)
  br label %43

19:                                               ; preds = %3, %3
  %20 = load i32, i32* @GSWIP_PCE_PCTRL_0_PSTATE_LISTEN, align 4
  store i32 %20, i32* %8, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i32, i32* @GSWIP_PCE_PCTRL_0_PSTATE_LEARNING, align 4
  store i32 %22, i32* %8, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load i32, i32* @GSWIP_PCE_PCTRL_0_PSTATE_FORWARDING, align 4
  store i32 %24, i32* %8, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %27 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %43

31:                                               ; preds = %23, %21, %19
  %32 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %33 = load i32, i32* @GSWIP_SDMA_PCTRL_EN, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GSWIP_SDMA_PCTRLp(i32 %34)
  %36 = call i32 @gswip_switch_mask(%struct.gswip_priv* %32, i32 0, i32 %33, i32 %35)
  %37 = load %struct.gswip_priv*, %struct.gswip_priv** %7, align 8
  %38 = load i32, i32* @GSWIP_PCE_PCTRL_0_PSTATE_MASK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @GSWIP_PCE_PCTRL_0p(i32 %40)
  %42 = call i32 @gswip_switch_mask(%struct.gswip_priv* %37, i32 %38, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %31, %25, %13
  ret void
}

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @GSWIP_SDMA_PCTRLp(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @GSWIP_PCE_PCTRL_0p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
