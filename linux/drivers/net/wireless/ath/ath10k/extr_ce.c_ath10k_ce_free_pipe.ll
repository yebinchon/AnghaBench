; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_free_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_free_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath10k*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_ce_free_pipe(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca %struct.ath10k_ce_pipe*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %7)
  store %struct.ath10k_ce* %8, %struct.ath10k_ce** %5, align 8
  %9 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %10 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %9, i32 0, i32 0
  %11 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %11, i64 %13
  store %struct.ath10k_ce_pipe* %14, %struct.ath10k_ce_pipe** %6, align 8
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %16 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ath10k*, i32)*, i32 (%struct.ath10k*, i32)** %18, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %19(%struct.ath10k* %20, i32 %21)
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
