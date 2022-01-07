; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_clk_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_clk_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_clk_info* }
%struct.ath10k_clk_info = type { i32, i32 }

@clk_cfg = common dso_local global i32 0, align 4
@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"snoc clock %s being disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_snoc_clk_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_clk_deinit(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_snoc*, align 8
  %4 = alloca %struct.ath10k_clk_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %6)
  store %struct.ath10k_snoc* %7, %struct.ath10k_snoc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @clk_cfg, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %14, i32 0, i32 0
  %16 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %16, i64 %18
  store %struct.ath10k_clk_info* %19, %struct.ath10k_clk_info** %4, align 8
  %20 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %36

25:                                               ; preds = %13
  %26 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %27 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %28 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ath10k_dbg(%struct.ath10k* %26, i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
