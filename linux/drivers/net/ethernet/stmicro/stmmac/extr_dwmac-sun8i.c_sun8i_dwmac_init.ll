; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_priv_data = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Fail to enable regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not enable AHB clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @sun8i_dwmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dwmac_init(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sunxi_priv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sunxi_priv_data*
  store %struct.sunxi_priv_data* %9, %struct.sunxi_priv_data** %6, align 8
  %10 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %11 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %16 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @regulator_enable(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %29 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %36 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %41 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @regulator_disable(i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
