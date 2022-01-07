; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32 }
%struct.mxs_mmc_host = type { i32, i32 }

@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mxs_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mxs_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.mxs_mmc_host* %7, %struct.mxs_mmc_host** %5, align 8
  %8 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %15 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %24 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %27 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %5, align 8
  %36 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %35, i32 0, i32 1
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mxs_ssp_set_clk_rate(i32* %36, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  ret void
}

declare dso_local %struct.mxs_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mxs_ssp_set_clk_rate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
