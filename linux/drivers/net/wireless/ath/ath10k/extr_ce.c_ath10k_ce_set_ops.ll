; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce_pipe = type { i32* }

@ce_64_ops = common dso_local global i32 0, align 4
@ce_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_ce_pipe*)* @ath10k_ce_set_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ce_set_ops(%struct.ath10k* %0, %struct.ath10k_ce_pipe* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ce_pipe*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_ce_pipe* %1, %struct.ath10k_ce_pipe** %4, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %11 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %9, i32 0, i32 0
  store i32* @ce_64_ops, i32** %10, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %12, i32 0, i32 0
  store i32* @ce_ops, i32** %13, align 8
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
