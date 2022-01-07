; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_smt_force_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smttimer.c_smt_force_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EVENT_SMT = common dso_local global i32 0, align 4
@SM_FAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_force_irq(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %4 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %5 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* @EVENT_SMT, align 4
  %8 = load i32, i32* @SM_FAST, align 4
  %9 = call i32 @EV_TOKEN(i32 %7, i32 %8)
  %10 = call i32 @smt_timer_start(%struct.s_smc* %3, i32* %6, i64 32, i32 %9)
  ret void
}

declare dso_local i32 @smt_timer_start(%struct.s_smc*, i32*, i64, i32) #1

declare dso_local i32 @EV_TOKEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
