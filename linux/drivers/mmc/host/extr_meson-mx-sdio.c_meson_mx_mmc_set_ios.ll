; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i16, i64, i32, i32 }
%struct.meson_mx_mmc_host = type { i64, i32 }

@MESON_MX_SDIO_CONF = common dso_local global i32 0, align 4
@MESON_MX_SDIO_CONF_BUS_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unsupported bus width: %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to set MMC clock to %lu: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @meson_mx_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mx_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.meson_mx_mmc_host*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.meson_mx_mmc_host* %9, %struct.meson_mx_mmc_host** %5, align 8
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 8
  store i16 %12, i16* %6, align 2
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %31 [
    i32 132, label %19
    i32 131, label %24
    i32 130, label %30
  ]

19:                                               ; preds = %2
  %20 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %21 = load i32, i32* @MESON_MX_SDIO_CONF, align 4
  %22 = load i32, i32* @MESON_MX_SDIO_CONF_BUS_WIDTH, align 4
  %23 = call i32 @meson_mx_mmc_mask_bits(%struct.mmc_host* %20, i32 %21, i32 %22, i32 0)
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = load i32, i32* @MESON_MX_SDIO_CONF, align 4
  %27 = load i32, i32* @MESON_MX_SDIO_CONF_BUS_WIDTH, align 4
  %28 = load i32, i32* @MESON_MX_SDIO_CONF_BUS_WIDTH, align 4
  %29 = call i32 @meson_mx_mmc_mask_bits(%struct.mmc_host* %25, i32 %26, i32 %27, i32 %28)
  br label %42

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %2, %30
  %32 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %33 = call i32 @mmc_dev(%struct.mmc_host* %32)
  %34 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  %40 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %41 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %99

42:                                               ; preds = %24, %19
  %43 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %44 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @clk_set_rate(i32 %45, i64 %48)
  %50 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %51 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %53 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %58 = call i32 @mmc_dev(%struct.mmc_host* %57)
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %61 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %62)
  br label %99

64:                                               ; preds = %42
  %65 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %66 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clk_get_rate(i32 %67)
  %69 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %72 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %99 [
    i32 129, label %74
    i32 128, label %75
  ]

74:                                               ; preds = %64
  store i16 0, i16* %6, align 2
  br label %75

75:                                               ; preds = %64, %74
  %76 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %77 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IS_ERR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %75
  %83 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %84 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i16, i16* %6, align 2
  %89 = call i64 @mmc_regulator_set_ocr(%struct.mmc_host* %83, i32 %87, i16 zeroext %88)
  %90 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %91 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %93 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %99

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %75
  br label %99

99:                                               ; preds = %31, %56, %96, %64, %98
  ret void
}

declare dso_local %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @meson_mx_mmc_mask_bits(%struct.mmc_host*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i64 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i64 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
