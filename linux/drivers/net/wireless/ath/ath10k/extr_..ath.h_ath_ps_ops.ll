; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_..ath.h_ath_ps_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_..ath.h_ath_ps_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ps_ops = type { i32 }
%struct.ath_common = type { %struct.ath_ps_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath_ps_ops* (%struct.ath_common*)* @ath_ps_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath_ps_ops* @ath_ps_ops(%struct.ath_common* %0) #0 {
  %2 = alloca %struct.ath_common*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %2, align 8
  %3 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %4 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %3, i32 0, i32 0
  %5 = load %struct.ath_ps_ops*, %struct.ath_ps_ops** %4, align 8
  ret %struct.ath_ps_ops* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
