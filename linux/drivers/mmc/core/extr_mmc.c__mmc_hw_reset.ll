; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c__mmc_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c__mmc_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__*, i32, %struct.mmc_card* }
%struct.TYPE_2__ = type { {}* }
%struct.mmc_card = type { i32 }

@MMC_CAP_HW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @_mmc_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mmc_hw_reset(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 3
  %6 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  store %struct.mmc_card* %6, %struct.mmc_card** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 3
  %9 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %10 = call i32 @mmc_flush_cache(%struct.mmc_card* %9)
  %11 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MMC_CAP_HW_RESET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.mmc_host*)**
  %23 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %22, align 8
  %24 = icmp ne i32 (%struct.mmc_host*)* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = call i64 @mmc_can_reset(%struct.mmc_card* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %31 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mmc_set_clock(%struct.mmc_host* %30, i32 %33)
  %35 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.mmc_host*)**
  %40 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %39, align 8
  %41 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %42 = call i32 %40(%struct.mmc_host* %41)
  %43 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %44 = call i32 @mmc_set_initial_state(%struct.mmc_host* %43)
  br label %53

45:                                               ; preds = %25, %17, %1
  %46 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %47 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mmc_power_cycle(%struct.mmc_host* %46, i32 %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %52 = call i32 @mmc_pwrseq_reset(%struct.mmc_host* %51)
  br label %53

53:                                               ; preds = %45, %29
  %54 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %55 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %59 = call i32 @mmc_init_card(%struct.mmc_host* %54, i32 %57, %struct.mmc_card* %58)
  ret i32 %59
}

declare dso_local i32 @mmc_flush_cache(%struct.mmc_card*) #1

declare dso_local i64 @mmc_can_reset(%struct.mmc_card*) #1

declare dso_local i32 @mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_set_initial_state(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_cycle(%struct.mmc_host*, i32) #1

declare dso_local i32 @mmc_pwrseq_reset(%struct.mmc_host*) #1

declare dso_local i32 @mmc_init_card(%struct.mmc_host*, i32, %struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
