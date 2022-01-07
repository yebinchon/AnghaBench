; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.netsec_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"missing required property 'phy-handle'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"phy_ref_clk not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.netsec_priv*, i32*)* @netsec_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_of_probe(%struct.platform_device* %0, %struct.netsec_priv* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.netsec_priv*, align 8
  %7 = alloca i32*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.netsec_priv* %1, %struct.netsec_priv** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @of_parse_phandle(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %14 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %16 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %3
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %29 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @of_mdio_parse_addr(%struct.TYPE_4__* %27, i32 %30)
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @devm_clk_get(%struct.TYPE_4__* %34, i32* null)
  %36 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %37 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %39 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %48 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %58

51:                                               ; preds = %25
  %52 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %53 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_get_rate(i32 %54)
  %56 = load %struct.netsec_priv*, %struct.netsec_priv** %6, align 8
  %57 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %43, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @of_mdio_parse_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
