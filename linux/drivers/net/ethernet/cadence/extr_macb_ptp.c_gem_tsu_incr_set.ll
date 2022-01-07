; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_tsu_incr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_tsu_incr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }
%struct.tsu_incr = type { i32, i32 }

@TISUBN = common dso_local global i32 0, align 4
@SUBNSINCRL = common dso_local global i32 0, align 4
@SUBNSINCRH = common dso_local global i32 0, align 4
@GEM_SUBNSINCRL_SIZE = common dso_local global i32 0, align 4
@TI = common dso_local global i32 0, align 4
@NSINCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*, %struct.tsu_incr*)* @gem_tsu_incr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_tsu_incr_set(%struct.macb* %0, %struct.tsu_incr* %1) #0 {
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.tsu_incr*, align 8
  %5 = alloca i64, align 8
  store %struct.macb* %0, %struct.macb** %3, align 8
  store %struct.tsu_incr* %1, %struct.tsu_incr** %4, align 8
  %6 = load %struct.macb*, %struct.macb** %3, align 8
  %7 = getelementptr inbounds %struct.macb, %struct.macb* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.macb*, %struct.macb** %3, align 8
  %11 = load i32, i32* @TISUBN, align 4
  %12 = load i32, i32* @SUBNSINCRL, align 4
  %13 = load %struct.tsu_incr*, %struct.tsu_incr** %4, align 8
  %14 = getelementptr inbounds %struct.tsu_incr, %struct.tsu_incr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GEM_BF(i32 %12, i32 %15)
  %17 = load i32, i32* @SUBNSINCRH, align 4
  %18 = load %struct.tsu_incr*, %struct.tsu_incr** %4, align 8
  %19 = getelementptr inbounds %struct.tsu_incr, %struct.tsu_incr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GEM_SUBNSINCRL_SIZE, align 4
  %22 = ashr i32 %20, %21
  %23 = call i32 @GEM_BF(i32 %17, i32 %22)
  %24 = or i32 %16, %23
  %25 = call i32 @gem_writel(%struct.macb* %10, i32 %11, i32 %24)
  %26 = load %struct.macb*, %struct.macb** %3, align 8
  %27 = load i32, i32* @TI, align 4
  %28 = load i32, i32* @NSINCR, align 4
  %29 = load %struct.tsu_incr*, %struct.tsu_incr** %4, align 8
  %30 = getelementptr inbounds %struct.tsu_incr, %struct.tsu_incr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GEM_BF(i32 %28, i32 %31)
  %33 = call i32 @gem_writel(%struct.macb* %26, i32 %27, i32 %32)
  %34 = load %struct.macb*, %struct.macb** %3, align 8
  %35 = getelementptr inbounds %struct.macb, %struct.macb* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gem_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @GEM_BF(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
