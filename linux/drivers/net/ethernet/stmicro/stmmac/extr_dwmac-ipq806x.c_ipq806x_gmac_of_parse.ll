; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_ipq806x_gmac_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_ipq806x_gmac_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq806x_gmac = type { i32, i8*, i8*, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"missing phy mode property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qcom,id\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"missing qcom id property\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid gmac id\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"missing stmmaceth clk property\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"qcom,nss-common\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"missing nss-common node\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"qcom,qsgmii-csr\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"missing qsgmii-csr node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq806x_gmac*)* @ipq806x_gmac_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipq806x_gmac_of_parse(%struct.ipq806x_gmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipq806x_gmac*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ipq806x_gmac* %0, %struct.ipq806x_gmac** %3, align 8
  %5 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %6 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @of_get_phy_mode(i32 %11)
  %13 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %14 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %16 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %30 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %29, i32 0, i32 0
  %31 = call i64 @of_property_read_u32(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %108

38:                                               ; preds = %25
  %39 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %40 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %108

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i8* @devm_clk_get(%struct.device* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %52 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %54 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %62 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %2, align 4
  br label %108

65:                                               ; preds = %48
  %66 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %67 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @clk_set_rate(i8* %68, i32 266000000)
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @syscon_regmap_lookup_by_phandle(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %75 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %77 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %65
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %84 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %85 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %108

88:                                               ; preds = %65
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @syscon_regmap_lookup_by_phandle(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %93 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %94 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %96 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %88
  %104 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %3, align 8
  %105 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @PTR_ERR_OR_ZERO(i8* %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %81, %58, %43, %33, %20
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @of_get_phy_mode(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
