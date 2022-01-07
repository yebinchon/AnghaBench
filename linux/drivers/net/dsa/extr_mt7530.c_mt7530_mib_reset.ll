; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_mib_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_mib_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32 }

@MT7530_MIB_CCR = common dso_local global i32 0, align 4
@CCR_MIB_FLUSH = common dso_local global i32 0, align 4
@CCR_MIB_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*)* @mt7530_mib_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_mib_reset(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.mt7530_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %4 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %5 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %4, i32 0, i32 0
  %6 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  store %struct.mt7530_priv* %6, %struct.mt7530_priv** %3, align 8
  %7 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %8 = load i32, i32* @MT7530_MIB_CCR, align 4
  %9 = load i32, i32* @CCR_MIB_FLUSH, align 4
  %10 = call i32 @mt7530_write(%struct.mt7530_priv* %7, i32 %8, i32 %9)
  %11 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %12 = load i32, i32* @MT7530_MIB_CCR, align 4
  %13 = load i32, i32* @CCR_MIB_ACTIVATE, align 4
  %14 = call i32 @mt7530_write(%struct.mt7530_priv* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @mt7530_write(%struct.mt7530_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
