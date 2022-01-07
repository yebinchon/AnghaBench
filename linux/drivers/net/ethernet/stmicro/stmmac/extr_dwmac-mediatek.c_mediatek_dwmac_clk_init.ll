; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mediatek_dwmac_plat_data = type { %struct.TYPE_3__*, i32, %struct.mediatek_dwmac_variant* }
%struct.TYPE_3__ = type { i32 }
%struct.mediatek_dwmac_variant = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mediatek_dwmac_plat_data*)* @mediatek_dwmac_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_dwmac_clk_init(%struct.mediatek_dwmac_plat_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %4 = alloca %struct.mediatek_dwmac_variant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mediatek_dwmac_plat_data* %0, %struct.mediatek_dwmac_plat_data** %3, align 8
  %7 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %8 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %7, i32 0, i32 2
  %9 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %8, align 8
  store %struct.mediatek_dwmac_variant* %9, %struct.mediatek_dwmac_variant** %4, align 8
  %10 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %4, align 8
  %11 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %14 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_3__* @devm_kcalloc(i32 %15, i32 %16, i32 4, i32 %17)
  %19 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %20 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %22 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %60

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %4, align 8
  %35 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %42 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %53 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %3, align 8
  %57 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @devm_clk_bulk_get(i32 %54, i32 %55, %struct.TYPE_3__* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %25
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_3__* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @devm_clk_bulk_get(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
