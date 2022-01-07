; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32 }

@CE_COUNT = common dso_local global i32 0, align 4
@CE_ATTR_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_ce_disable_interrupts(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_ce*, align 8
  %4 = alloca %struct.ath10k_ce_pipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %7)
  store %struct.ath10k_ce* %8, %struct.ath10k_ce** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %40, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @CE_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load %struct.ath10k_ce*, %struct.ath10k_ce** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %14, i32 0, i32 0
  %16 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %16, i64 %18
  store %struct.ath10k_ce_pipe* %19, %struct.ath10k_ce_pipe** %4, align 8
  %20 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CE_ATTR_POLL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %40

27:                                               ; preds = %13
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ath10k_ce_base_address(%struct.ath10k* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ath10k_ce_copy_complete_intr_disable(%struct.ath10k* %31, i32 %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ath10k_ce_error_intr_disable(%struct.ath10k* %34, i32 %35)
  %37 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ath10k_ce_watermark_intr_disable(%struct.ath10k* %37, i32 %38)
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %9

43:                                               ; preds = %9
  ret i32 0
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ce_base_address(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_copy_complete_intr_disable(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_error_intr_disable(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_watermark_intr_disable(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
