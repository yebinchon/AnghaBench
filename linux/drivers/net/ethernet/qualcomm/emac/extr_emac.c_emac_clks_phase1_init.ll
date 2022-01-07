; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_clks_phase1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_clks_phase1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.emac_adapter = type { i32* }

@EMAC_CLK_AXI = common dso_local global i64 0, align 8
@EMAC_CLK_CFG_AHB = common dso_local global i64 0, align 8
@EMAC_CLK_HIGH_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.emac_adapter*)* @emac_clks_phase1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_clks_phase1_init(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
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
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %15 = call i32 @emac_clks_get(%struct.platform_device* %13, %struct.emac_adapter* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %12
  %21 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @EMAC_CLK_AXI, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %20
  %33 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @EMAC_CLK_CFG_AHB, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_prepare_enable(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %64

44:                                               ; preds = %32
  %45 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @EMAC_CLK_HIGH_SPEED, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_set_rate(i32 %50, i32 19200000)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @EMAC_CLK_HIGH_SPEED, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_prepare_enable(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %54, %42, %30, %18, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @has_acpi_companion(i32*) #1

declare dso_local i32 @emac_clks_get(%struct.platform_device*, %struct.emac_adapter*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
