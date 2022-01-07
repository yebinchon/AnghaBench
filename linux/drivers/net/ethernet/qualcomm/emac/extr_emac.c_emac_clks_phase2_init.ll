; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_clks_phase2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_clks_phase2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.emac_adapter = type { i32* }

@EMAC_CLK_TX = common dso_local global i64 0, align 8
@EMAC_CLK_HIGH_SPEED = common dso_local global i64 0, align 8
@EMAC_CLK_MDIO = common dso_local global i64 0, align 8
@EMAC_CLK_RX = common dso_local global i64 0, align 8
@EMAC_CLK_SYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.emac_adapter*)* @emac_clks_phase2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_clks_phase2_init(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.emac_adapter* %1, %struct.emac_adapter** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i64 @has_acpi_companion(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

12:                                               ; preds = %2
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @EMAC_CLK_TX, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_set_rate(i32 %18, i32 125000000)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %12
  %25 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @EMAC_CLK_TX, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %92

36:                                               ; preds = %24
  %37 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @EMAC_CLK_HIGH_SPEED, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_set_rate(i32 %42, i32 125000000)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %92

48:                                               ; preds = %36
  %49 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @EMAC_CLK_MDIO, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_set_rate(i32 %54, i32 25000000)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %48
  %61 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @EMAC_CLK_MDIO, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_prepare_enable(i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %92

72:                                               ; preds = %60
  %73 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @EMAC_CLK_RX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clk_prepare_enable(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %92

84:                                               ; preds = %72
  %85 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @EMAC_CLK_SYS, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clk_prepare_enable(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %84, %82, %70, %58, %46, %34, %22, %11
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @has_acpi_companion(i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
