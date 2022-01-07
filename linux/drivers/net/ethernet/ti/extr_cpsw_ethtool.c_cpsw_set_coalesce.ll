; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CPSW_INTPRESCALE_MASK = common dso_local global i32 0, align 4
@CPSW_INTPACEEN = common dso_local global i32 0, align 4
@CPSW_CMINTMIN_INTVL = common dso_local global i32 0, align 4
@CPSW_CMINTMAX_INTVL = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Set coalesce to %d usecs.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.cpsw_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpsw_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.cpsw_priv* %13, %struct.cpsw_priv** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 0
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %15, align 8
  store %struct.cpsw_common* %16, %struct.cpsw_common** %11, align 8
  %17 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %21 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @CPSW_INTPRESCALE_MASK, align 4
  %35 = load i32, i32* @CPSW_INTPACEEN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %102

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @CPSW_CMINTMIN_INTVL, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @CPSW_CMINTMIN_INTVL, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @CPSW_CMINTMAX_INTVL, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i32, i32* @CPSW_INTPRESCALE_MASK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @CPSW_CMINTMAX_INTVL, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %61, %62
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @CPSW_CMINTMAX_INTVL, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %56
  br label %72

70:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  %71 = load i32, i32* @CPSW_CMINTMAX_INTVL, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %69
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 1000, %74
  %76 = load i32, i32* %10, align 4
  %77 = sdiv i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %80 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = call i32 @writel(i32 %78, i32* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %86 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = call i32 @writel(i32 %84, i32* %88)
  %90 = load i32, i32* @CPSW_INTPACEEN, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @CPSW_INTPRESCALE_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @CPSW_INTPRESCALE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %73, %33
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %105 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @writel(i32 %103, i32* %107)
  %109 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %110 = load i32, i32* @timer, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @cpsw_notice(%struct.cpsw_priv* %109, i32 %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  %115 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  ret i32 0
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @cpsw_notice(%struct.cpsw_priv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
