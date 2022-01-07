; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_initial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_initial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.mmc_host*, %struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i32 (%struct.mmc_host*)* }

@MMC_CS_HIGH = common dso_local global i32 0, align 4
@MMC_CS_DONTCARE = common dso_local global i32 0, align 4
@MMC_BUSMODE_PUSHPULL = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@MMC_TIMING_LEGACY = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_ES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_set_initial_state(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %11, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %14 = call i32 %12(%struct.mmc_host* %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %17 = call i32 @mmc_retune_disable(%struct.mmc_host* %16)
  %18 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %19 = call i64 @mmc_host_is_spi(%struct.mmc_host* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @MMC_CS_HIGH, align 4
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  br label %31

26:                                               ; preds = %15
  %27 = load i32, i32* @MMC_CS_DONTCARE, align 4
  %28 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @MMC_BUSMODE_PUSHPULL, align 4
  %33 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %37 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %38 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @MMC_TIMING_LEGACY, align 4
  %41 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MMC_CAP2_HS400_ES, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %31
  %57 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %58 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.mmc_host*, %struct.TYPE_6__*)*, i32 (%struct.mmc_host*, %struct.TYPE_6__*)** %60, align 8
  %62 = icmp ne i32 (%struct.mmc_host*, %struct.TYPE_6__*)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.mmc_host*, %struct.TYPE_6__*)*, i32 (%struct.mmc_host*, %struct.TYPE_6__*)** %67, align 8
  %69 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %70 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %70, i32 0, i32 1
  %72 = call i32 %68(%struct.mmc_host* %69, %struct.TYPE_6__* %71)
  br label %73

73:                                               ; preds = %63, %56, %31
  %74 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %75 = call i32 @mmc_set_ios(%struct.mmc_host* %74)
  ret void
}

declare dso_local i32 @mmc_retune_disable(%struct.mmc_host*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_ios(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
