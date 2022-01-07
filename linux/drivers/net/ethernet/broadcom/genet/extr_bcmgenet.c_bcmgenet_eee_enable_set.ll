; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_eee_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_eee_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TBUF_ENERGY_CTRL = common dso_local global i32 0, align 4
@UMAC_EEE_CTRL = common dso_local global i32 0, align 4
@EEE_EN = common dso_local global i32 0, align 4
@TBUF_EEE_EN = common dso_local global i32 0, align 4
@TBUF_PM_EN = common dso_local global i32 0, align 4
@RBUF_ENERGY_CTRL = common dso_local global i32 0, align 4
@RBUF_EEE_EN = common dso_local global i32 0, align 4
@RBUF_PM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @bcmgenet_eee_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_eee_enable_set(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcmgenet_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %5, align 8
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %11 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TBUF_ENERGY_CTRL, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %26 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_prepare_enable(i32 %27)
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %19, %2
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %33 = load i32, i32* @UMAC_EEE_CTRL, align 4
  %34 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @EEE_EN, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @EEE_EN, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @UMAC_EEE_CTRL, align 4
  %50 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %47, i32 %48, i32 %49)
  %51 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %52 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @bcmgenet_readl(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %46
  %60 = load i32, i32* @TBUF_EEE_EN, align 4
  %61 = load i32, i32* @TBUF_PM_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %72

65:                                               ; preds = %46
  %66 = load i32, i32* @TBUF_EEE_EN, align 4
  %67 = load i32, i32* @TBUF_PM_EN, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %75 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @bcmgenet_writel(i32 %73, i32 %78)
  %80 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %81 = load i32, i32* @RBUF_ENERGY_CTRL, align 4
  %82 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load i32, i32* @RBUF_EEE_EN, align 4
  %87 = load i32, i32* @RBUF_PM_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %98

91:                                               ; preds = %72
  %92 = load i32, i32* @RBUF_EEE_EN, align 4
  %93 = load i32, i32* @RBUF_PM_EN, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %91, %85
  %99 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @RBUF_ENERGY_CTRL, align 4
  %102 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %98
  %106 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %107 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %112 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @clk_disable_unprepare(i32 %113)
  %115 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %116 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %110, %105, %98
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %120 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %124 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_readl(i32) #1

declare dso_local i32 @bcmgenet_writel(i32, i32) #1

declare dso_local i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
