; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif-ops.h_ath6kl_hif_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif-ops.h_ath6kl_hif_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath6kl*)* }

@ATH6KL_DBG_HIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"hif stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*)* @ath6kl_hif_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_hif_stop(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %3 = load i32, i32* @ATH6KL_DBG_HIF, align 4
  %4 = call i32 @ath6kl_dbg(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %6 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ath6kl*)*, i32 (%struct.ath6kl*)** %8, align 8
  %10 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %11 = call i32 %9(%struct.ath6kl* %10)
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
