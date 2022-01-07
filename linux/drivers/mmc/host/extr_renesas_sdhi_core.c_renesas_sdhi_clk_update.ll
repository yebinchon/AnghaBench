; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_clk_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_clk_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.renesas_sdhi = type { i32 }

@TMIO_MMC_MIN_RCAR2 = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*, i32)* @renesas_sdhi_clk_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_clk_update(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.renesas_sdhi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %13 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %12)
  store %struct.renesas_sdhi* %13, %struct.renesas_sdhi** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TMIO_MMC_MIN_RCAR2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %6, align 8
  %24 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_get_rate(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %2
  %28 = load i32, i32* @UINT_MAX, align 4
  %29 = load i32, i32* %5, align 4
  %30 = udiv i32 %28, %29
  %31 = call i32 @ilog2(i32 %30)
  %32 = call i32 @min(i32 9, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %79, %27
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %6, align 8
  %38 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %11, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @clk_round_rate(i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %45, %46
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %36
  %50 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %6, align 8
  %51 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %53, %54
  %56 = udiv i32 %55, 4
  %57 = mul i32 %56, 3
  %58 = call i32 @clk_round_rate(i32 %52, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %60, %61
  %63 = icmp ugt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %79

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %11, align 4
  %70 = lshr i32 %68, %69
  %71 = sub i32 %67, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ule i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %66
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %11, align 4
  br label %33

82:                                               ; preds = %33
  %83 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %6, align 8
  %84 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @clk_set_rate(i32 %85, i32 %86)
  %88 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %6, align 8
  %89 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clk_get_rate(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %82, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
