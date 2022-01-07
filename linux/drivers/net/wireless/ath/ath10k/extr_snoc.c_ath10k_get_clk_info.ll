; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_get_clk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_get_clk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.device = type { i32 }
%struct.ath10k_clk_info = type { i32, %struct.clk*, i32, i64 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"snoc clock %s isn't available: %d\0A\00", align 1
@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"snoc ignoring clock %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"snoc clock %s freq %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.device*, %struct.ath10k_clk_info*)* @ath10k_get_clk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_get_clk_info(%struct.ath10k* %0, %struct.device* %1, %struct.ath10k_clk_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ath10k_clk_info*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.ath10k_clk_info* %2, %struct.ath10k_clk_info** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %12 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.clk* @devm_clk_get(%struct.device* %10, i32 %13)
  store %struct.clk* %14, %struct.clk** %8, align 8
  %15 = load %struct.clk*, %struct.clk** %8, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.clk*, %struct.clk** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.clk* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %22 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %28 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ath10k_err(%struct.ath10k* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %18
  %34 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %35 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %36 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %37 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ath10k_dbg(%struct.ath10k* %34, i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  store i32 0, i32* %4, align 4
  br label %55

41:                                               ; preds = %3
  %42 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %43 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %44 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %45 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %48 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ath10k_dbg(%struct.ath10k* %42, i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.clk*, %struct.clk** %8, align 8
  %52 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %7, align 8
  %53 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %52, i32 0, i32 1
  store %struct.clk* %51, %struct.clk** %53, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %41, %33, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
