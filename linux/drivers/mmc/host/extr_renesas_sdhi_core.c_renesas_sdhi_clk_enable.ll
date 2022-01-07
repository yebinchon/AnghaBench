; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i64 }
%struct.renesas_sdhi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*)* @renesas_sdhi_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_clk_enable(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.renesas_sdhi*, align 8
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %7, i32 0, i32 0
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %11 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %10)
  store %struct.renesas_sdhi* %11, %struct.renesas_sdhi** %5, align 8
  %12 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %13 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %22 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %29 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %56

33:                                               ; preds = %20
  %34 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %40 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @clk_get_rate(i32 %41)
  %43 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %5, align 8
  %47 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_round_rate(i32 %48, i32 1)
  %50 = sdiv i32 %49, 512
  %51 = call i32 @max(i32 %50, i64 1)
  %52 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %55 = call i32 @renesas_sdhi_sdbuf_width(%struct.tmio_mmc_host* %54, i32 16)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %45, %27, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @renesas_sdhi_sdbuf_width(%struct.tmio_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
