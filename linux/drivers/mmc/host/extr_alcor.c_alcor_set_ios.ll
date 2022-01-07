; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i32 }
%struct.alcor_sdmmc_host = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"set ios. bus width: %x, power mode: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @alcor_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.alcor_sdmmc_host* %7, %struct.alcor_sdmmc_host** %5, align 8
  %8 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %12 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = call i32 @alcor_set_power_mode(%struct.mmc_host* %29, %struct.mmc_ios* %30)
  %32 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %36 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %40 = call i32 @alcor_set_timing(%struct.mmc_host* %38, %struct.mmc_ios* %39)
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %43 = call i32 @alcor_set_bus_width(%struct.mmc_host* %41, %struct.mmc_ios* %42)
  %44 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %45 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @alcor_set_clock(%struct.alcor_sdmmc_host* %44, i32 %47)
  br label %49

49:                                               ; preds = %37, %28
  %50 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %51 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @alcor_set_power_mode(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @alcor_set_timing(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @alcor_set_bus_width(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @alcor_set_clock(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
