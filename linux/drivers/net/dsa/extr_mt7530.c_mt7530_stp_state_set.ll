; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_stp_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_stp_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }

@MT7530_STP_DISABLED = common dso_local global i32 0, align 4
@MT7530_STP_BLOCKING = common dso_local global i32 0, align 4
@MT7530_STP_LISTENING = common dso_local global i32 0, align 4
@MT7530_STP_LEARNING = common dso_local global i32 0, align 4
@MT7530_STP_FORWARDING = common dso_local global i32 0, align 4
@FID_PST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32)* @mt7530_stp_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_stp_state_set(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt7530_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.mt7530_priv*, %struct.mt7530_priv** %10, align 8
  store %struct.mt7530_priv* %11, %struct.mt7530_priv** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %22 [
    i32 131, label %13
    i32 132, label %15
    i32 128, label %17
    i32 129, label %19
    i32 130, label %21
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @MT7530_STP_DISABLED, align 4
  store i32 %14, i32* %8, align 4
  br label %24

15:                                               ; preds = %3
  %16 = load i32, i32* @MT7530_STP_BLOCKING, align 4
  store i32 %16, i32* %8, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @MT7530_STP_LISTENING, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @MT7530_STP_LEARNING, align 4
  store i32 %20, i32* %8, align 4
  br label %24

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %3, %21
  %23 = load i32, i32* @MT7530_STP_FORWARDING, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %19, %17, %15, %13
  %25 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @MT7530_SSP_P(i32 %26)
  %28 = load i32, i32* @FID_PST_MASK, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mt7530_rmw(%struct.mt7530_priv* %25, i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @MT7530_SSP_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
