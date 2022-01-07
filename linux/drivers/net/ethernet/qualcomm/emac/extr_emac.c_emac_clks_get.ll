; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_clks_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_clks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.emac_adapter = type { %struct.clk** }
%struct.clk = type { i32 }

@EMAC_CLK_CNT = common dso_local global i32 0, align 4
@emac_clk_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"could not claim clock %s (error=%li)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.emac_adapter*)* @emac_clks_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_clks_get(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.emac_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.emac_adapter* %1, %struct.emac_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %45, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @EMAC_CLK_CNT, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32*, i32** @emac_clk_name, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.clk* @devm_clk_get(i32* %14, i32 %19)
  store %struct.clk* %20, %struct.clk** %7, align 8
  %21 = load %struct.clk*, %struct.clk** %7, align 8
  %22 = call i64 @IS_ERR(%struct.clk* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %12
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32*, i32** @emac_clk_name, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.clk* %32)
  %34 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load %struct.clk*, %struct.clk** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.clk* %35)
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %12
  %38 = load %struct.clk*, %struct.clk** %7, align 8
  %39 = load %struct.emac_adapter*, %struct.emac_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %39, i32 0, i32 0
  %41 = load %struct.clk**, %struct.clk*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.clk*, %struct.clk** %41, i64 %43
  store %struct.clk* %38, %struct.clk** %44, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
