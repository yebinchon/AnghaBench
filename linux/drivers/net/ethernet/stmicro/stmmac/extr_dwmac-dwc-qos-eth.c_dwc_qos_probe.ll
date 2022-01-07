; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_dwc_qos_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_dwc_qos_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_stmmacenet_data = type { i8*, i8* }
%struct.stmmac_resources = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"apb_pclk clock not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to enable apb_pclk clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"phy_ref_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"phy_ref_clk clock not found.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to enable phy_ref clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.platform_device*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*)* @dwc_qos_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwc_qos_probe(%struct.platform_device* %0, %struct.plat_stmmacenet_data* %1, %struct.stmmac_resources* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.plat_stmmacenet_data*, align 8
  %7 = alloca %struct.stmmac_resources*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %6, align 8
  store %struct.stmmac_resources* %2, %struct.stmmac_resources** %7, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i8* @devm_clk_get(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %13 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @ERR_CAST(i8* %25)
  store i8* %26, i8** %4, align 8
  br label %80

27:                                               ; preds = %3
  %28 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %29 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @clk_prepare_enable(i8* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @ERR_PTR(i32 %39)
  store i8* %40, i8** %4, align 8
  br label %80

41:                                               ; preds = %27
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i8* @devm_clk_get(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %46 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %48 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %57 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %8, align 4
  br label %73

60:                                               ; preds = %41
  %61 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %62 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @clk_prepare_enable(i8* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %60
  store i8* null, i8** %4, align 8
  br label %80

73:                                               ; preds = %67, %52
  %74 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %75 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @clk_disable_unprepare(i8* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @ERR_PTR(i32 %78)
  store i8* %79, i8** %4, align 8
  br label %80

80:                                               ; preds = %73, %72, %34, %19
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
