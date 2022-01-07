; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_per_engine_handler_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_per_engine_handler_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { i32, i64, i64, %struct.ath10k*, i32 }
%struct.ath10k = type { i32 }

@CE_ATTR_DIS_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_ce_pipe*)* @ath10k_ce_per_engine_handler_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ce_per_engine_handler_adjust(%struct.ath10k_ce_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_ce_pipe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %2, align 8
  %6 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %7 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %9, i32 0, i32 3
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %4, align 8
  %12 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %13 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CE_ATTR_DIS_INTR, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %21 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %2, align 8
  %26 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ath10k_ce_copy_complete_inter_enable(%struct.ath10k* %30, i32 %31)
  br label %37

33:                                               ; preds = %24, %1
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ath10k_ce_copy_complete_intr_disable(%struct.ath10k* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ath10k_ce_watermark_intr_disable(%struct.ath10k* %38, i32 %39)
  ret void
}

declare dso_local i32 @ath10k_ce_copy_complete_inter_enable(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_copy_complete_intr_disable(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_watermark_intr_disable(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
