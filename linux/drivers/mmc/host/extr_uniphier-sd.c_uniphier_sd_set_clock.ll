; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64 }
%struct.uniphier_sd_priv = type { i32, i32 }

@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@UNIPHIER_SD_CLK_CTL_DIV1024 = common dso_local global i32 0, align 4
@UNIPHIER_SD_CLK_CTL_DIV1 = common dso_local global i32 0, align 4
@CLK_CTL_DIV_MASK = common dso_local global i32 0, align 4
@UNIPHIER_SD_CAP_EXTENDED_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @uniphier_sd_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_sd_set_clock(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uniphier_sd_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = call %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host* %8)
  store %struct.uniphier_sd_priv* %9, %struct.uniphier_sd_priv** %5, align 8
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %14 = shl i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %27 = shl i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @writel(i32 %22, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %102

34:                                               ; preds = %2
  %35 = load i32, i32* @UNIPHIER_SD_CLK_CTL_DIV1024, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @UNIPHIER_SD_CLK_CTL_DIV1, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @CLK_CTL_DIV_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %48 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = udiv i32 %49, %50
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ule i64 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load i32, i32* @UNIPHIER_SD_CLK_CTL_DIV1, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %80

59:                                               ; preds = %34
  %60 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %61 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UNIPHIER_SD_CAP_EXTENDED_IP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i64, i64* %6, align 8
  %68 = icmp ugt i64 %67, 512
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @UNIPHIER_SD_CLK_CTL_DIV1024, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %79

73:                                               ; preds = %66, %59
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @roundup_pow_of_two(i64 %74)
  %76 = ashr i32 %75, 2
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %69
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %86 = shl i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @writel(i32 %81, i64 %88)
  %90 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %98 = shl i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %96, %99
  %101 = call i32 @writel(i32 %93, i64 %100)
  br label %102

102:                                              ; preds = %80, %33
  ret void
}

declare dso_local %struct.uniphier_sd_priv* @uniphier_sd_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
