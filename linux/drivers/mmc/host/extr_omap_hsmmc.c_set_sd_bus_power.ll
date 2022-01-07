; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_set_sd_bus_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_set_sd_bus_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32 }

@HCTL = common dso_local global i32 0, align 4
@SDBP = common dso_local global i32 0, align 4
@loops_per_jiffy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @set_sd_bus_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sd_bus_power(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca i64, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  %4 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HCTL, align 4
  %8 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HCTL, align 4
  %12 = call i32 @OMAP_HSMMC_READ(i32 %10, i32 %11)
  %13 = load i32, i32* @SDBP, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @OMAP_HSMMC_WRITE(i32 %6, i32 %7, i32 %14)
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %32, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @loops_per_jiffy, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HCTL, align 4
  %25 = call i32 @OMAP_HSMMC_READ(i32 %23, i32 %24)
  %26 = load i32, i32* @SDBP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %35

30:                                               ; preds = %20
  %31 = call i32 (...) @cpu_relax()
  br label %32

32:                                               ; preds = %30
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %16

35:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
