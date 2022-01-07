; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___get_pending_param_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___get_pending_param_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i64, i32, %struct.chain_config* }
%struct.chain_config = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__get_pending_param_count(%struct.fimc_is* %0) #0 {
  %2 = alloca %struct.fimc_is*, align 8
  %3 = alloca %struct.chain_config*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %2, align 8
  %6 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %7 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %6, i32 0, i32 2
  %8 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %9 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %8, i64 %11
  store %struct.chain_config* %12, %struct.chain_config** %3, align 8
  %13 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %14 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.chain_config*, %struct.chain_config** %3, align 8
  %18 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hweight32(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.chain_config*, %struct.chain_config** %3, align 8
  %24 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hweight32(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %32 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %31, i32 0, i32 1
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
