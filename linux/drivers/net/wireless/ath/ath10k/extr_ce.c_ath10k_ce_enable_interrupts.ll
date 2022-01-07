; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32 }

@CE_COUNT = common dso_local global i32 0, align 4
@CE_ATTR_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_ce_enable_interrupts(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_ce*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_ce_pipe*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %6)
  store %struct.ath10k_ce* %7, %struct.ath10k_ce** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CE_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.ath10k_ce*, %struct.ath10k_ce** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %13, i32 0, i32 0
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i64 %17
  store %struct.ath10k_ce_pipe* %18, %struct.ath10k_ce_pipe** %5, align 8
  %19 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %20 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CE_ATTR_POLL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %29

26:                                               ; preds = %12
  %27 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %28 = call i32 @ath10k_ce_per_engine_handler_adjust(%struct.ath10k_ce_pipe* %27)
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %8
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ce_per_engine_handler_adjust(%struct.ath10k_ce_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
