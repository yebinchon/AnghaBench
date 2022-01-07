; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_register_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_register_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_mx_mmc_host = type { i8*, %struct.TYPE_5__, i32, i64, i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i64, i32*, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_6__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s#fixed_factor\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@clk_fixed_factor_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s#div\00", align 1
@clk_divider_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i64 0, align 8
@MESON_MX_SDIO_CONF = common dso_local global i64 0, align 8
@MESON_MX_SDIO_CONF_CMD_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@MESON_MX_SDIO_CONF_CMD_CLK_DIV_WIDTH = common dso_local global i32 0, align 4
@CLK_DIVIDER_ALLOW_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_mx_mmc_host*)* @meson_mx_mmc_register_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_mmc_register_clks(%struct.meson_mx_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_mx_mmc_host*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.meson_mx_mmc_host* %0, %struct.meson_mx_mmc_host** %3, align 8
  %7 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %7, i32 0, i32 6
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @__clk_get_name(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_name(i32 %17)
  %19 = call i8* @devm_kasprintf(i32 %13, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %134

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32* @clk_fixed_factor_ops, i32** %28, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i8** %6, i8*** %30, align 8
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %33 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %41, align 8
  %42 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = call i8* @devm_clk_register(i32 %44, %struct.TYPE_6__* %47)
  %49 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @IS_ERR(i8* %53)
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %27
  %58 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %59 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %2, align 4
  br label %134

62:                                               ; preds = %27
  %63 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %64 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @__clk_get_name(i8* %65)
  store i8* %66, i8** %5, align 8
  %67 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %68 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %72 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_name(i32 %73)
  %75 = call i8* @devm_kasprintf(i32 %69, i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 4
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %62
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %134

83:                                               ; preds = %62
  %84 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32* @clk_divider_ops, i32** %84, align 8
  %85 = load i64, i64* @CLK_SET_RATE_PARENT, align 8
  %86 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i8** %5, i8*** %87, align 8
  %88 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %90 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MESON_MX_SDIO_CONF, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i64 %93, i64* %96, align 8
  %97 = load i32, i32* @MESON_MX_SDIO_CONF_CMD_CLK_DIV_SHIFT, align 4
  %98 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %99 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* @MESON_MX_SDIO_CONF_CMD_CLK_DIV_WIDTH, align 4
  %102 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %103 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %106 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %108, align 8
  %109 = load i32, i32* @CLK_DIVIDER_ALLOW_ZERO, align 4
  %110 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %111 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %114 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %117 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i8* @devm_clk_register(i32 %115, %struct.TYPE_6__* %118)
  %120 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %121 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %123 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @IS_ERR(i8* %124)
  %126 = call i64 @WARN_ON(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %83
  %129 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %3, align 8
  %130 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @PTR_ERR(i8* %131)
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %128, %80, %57, %24
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i8* @__clk_get_name(i8*) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i8* @devm_clk_register(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
