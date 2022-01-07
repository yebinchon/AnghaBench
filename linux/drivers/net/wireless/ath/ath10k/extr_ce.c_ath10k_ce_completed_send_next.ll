; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_completed_send_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_completed_send_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_ce_completed_send_next(%struct.ath10k_ce_pipe* %0, i8** %1) #0 {
  %3 = alloca %struct.ath10k_ce_pipe*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_ce*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %8, i32 0, i32 0
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %5, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %11)
  store %struct.ath10k_ce* %12, %struct.ath10k_ce** %6, align 8
  %13 = load %struct.ath10k_ce*, %struct.ath10k_ce** %6, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %3, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = call i32 @ath10k_ce_completed_send_next_nolock(%struct.ath10k_ce_pipe* %16, i8** %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ath10k_ce*, %struct.ath10k_ce** %6, align 8
  %20 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_bh(i32* %20)
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_ce_completed_send_next_nolock(%struct.ath10k_ce_pipe*, i8**) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
