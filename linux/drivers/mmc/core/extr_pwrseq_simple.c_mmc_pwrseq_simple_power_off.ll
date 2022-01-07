; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_simple.c_mmc_pwrseq_simple_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_simple.c_mmc_pwrseq_simple_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_pwrseq_simple = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_pwrseq_simple_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_pwrseq_simple_power_off(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_pwrseq_simple*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mmc_pwrseq_simple* @to_pwrseq_simple(i32 %6)
  store %struct.mmc_pwrseq_simple* %7, %struct.mmc_pwrseq_simple** %3, align 8
  %8 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %9 = call i32 @mmc_pwrseq_simple_set_gpios_value(%struct.mmc_pwrseq_simple* %8, i32 1)
  %10 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 2, %20
  %22 = call i32 @usleep_range(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_ERR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %29, %23
  ret void
}

declare dso_local %struct.mmc_pwrseq_simple* @to_pwrseq_simple(i32) #1

declare dso_local i32 @mmc_pwrseq_simple_set_gpios_value(%struct.mmc_pwrseq_simple*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
