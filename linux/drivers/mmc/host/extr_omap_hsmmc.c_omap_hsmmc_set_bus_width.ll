; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64, i32 }

@CON = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@DDR = common dso_local global i32 0, align 4
@DW8 = common dso_local global i32 0, align 4
@HCTL = common dso_local global i32 0, align 4
@FOUR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @omap_hsmmc_set_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_set_bus_width(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca %struct.mmc_ios*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  %5 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.mmc_ios* %8, %struct.mmc_ios** %3, align 8
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CON, align 4
  %13 = call i32 @OMAP_HSMMC_READ(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @DDR, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @DDR, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %92 [
    i32 128, label %38
    i32 129, label %47
    i32 130, label %69
  ]

38:                                               ; preds = %34
  %39 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %40 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CON, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DW8, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @OMAP_HSMMC_WRITE(i32 %41, i32 %42, i32 %45)
  br label %92

47:                                               ; preds = %34
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CON, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DW8, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @OMAP_HSMMC_WRITE(i32 %50, i32 %51, i32 %55)
  %57 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %58 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HCTL, align 4
  %61 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %62 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HCTL, align 4
  %65 = call i32 @OMAP_HSMMC_READ(i32 %63, i32 %64)
  %66 = load i32, i32* @FOUR_BIT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @OMAP_HSMMC_WRITE(i32 %59, i32 %60, i32 %67)
  br label %92

69:                                               ; preds = %34
  %70 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %71 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CON, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DW8, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = call i32 @OMAP_HSMMC_WRITE(i32 %72, i32 %73, i32 %77)
  %79 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %80 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HCTL, align 4
  %83 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %84 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @HCTL, align 4
  %87 = call i32 @OMAP_HSMMC_READ(i32 %85, i32 %86)
  %88 = load i32, i32* @FOUR_BIT, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @OMAP_HSMMC_WRITE(i32 %81, i32 %82, i32 %90)
  br label %92

92:                                               ; preds = %34, %69, %47, %38
  ret void
}

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
