; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_resampling_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_resampling_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i64 }
%struct.meson_host = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ADJUST_ADJ_EN = common dso_local global i32 0, align 4
@ADJUST_ADJ_DELAY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"resampling delay: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @meson_mmc_resampling_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mmc_resampling_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %13 = call %struct.meson_host* @mmc_priv(%struct.mmc_host* %12)
  store %struct.meson_host* %13, %struct.meson_host** %6, align 8
  %14 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %15 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %19 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_get_rate(i32 %20)
  %22 = call i32 @DIV_ROUND_UP(i32 %17, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %24 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %27 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %25, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ADJUST_ADJ_EN, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %38 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %41 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %39, %44
  %46 = call i32 @writel(i32 %36, i64 %45)
  %47 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %2
  %52 = load i32, i32* @ADJUST_ADJ_DELAY_MASK, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @FIELD_GET(i32 %52, i32 %53)
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %51
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %102, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = load i32, i32* @ADJUST_ADJ_DELAY_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @ADJUST_ADJ_DELAY_MASK, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = urem i32 %70, %71
  %73 = call i32 @FIELD_PREP(i32 %67, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %78 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %81 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = call i32 @writel(i32 %76, i64 %85)
  %87 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @mmc_send_tuning(%struct.mmc_host* %87, i32 %88, i32* null)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %62
  %93 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %94 = call i32 @mmc_dev(%struct.mmc_host* %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = urem i32 %97, %98
  %100 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 0, i32* %3, align 4
  br label %110

101:                                              ; preds = %62
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %58

105:                                              ; preds = %58
  %106 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %107 = call i32 @meson_mmc_reset_resampling(%struct.meson_host* %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %92
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.meson_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @meson_mmc_reset_resampling(%struct.meson_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
