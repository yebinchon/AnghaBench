; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.arc_emac_priv = type { i32, i32 }

@R_STATUS = common dso_local global i32 0, align 4
@MDIO_MASK = common dso_local global i32 0, align 4
@RXINT_MASK = common dso_local global i32 0, align 4
@TXINT_MASK = common dso_local global i32 0, align 4
@R_ENABLE = common dso_local global i32 0, align 4
@ERR_MASK = common dso_local global i32 0, align 4
@MSER_MASK = common dso_local global i32 0, align 4
@RXCR_MASK = common dso_local global i32 0, align 4
@RXFR_MASK = common dso_local global i32 0, align 4
@RXFL_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arc_emac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_emac_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.arc_emac_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.arc_emac_priv* %12, %struct.arc_emac_priv** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %7, align 8
  %15 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %16 = load i32, i32* @R_STATUS, align 4
  %17 = call i32 @arc_reg_get(%struct.arc_emac_priv* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @MDIO_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %23 = load i32, i32* @R_STATUS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @arc_reg_set(%struct.arc_emac_priv* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @RXINT_MASK, align 4
  %28 = load i32, i32* @TXINT_MASK, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %34 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %33, i32 0, i32 1
  %35 = call i32 @napi_schedule_prep(i32* %34)
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %40 = load i32, i32* @R_ENABLE, align 4
  %41 = load i32, i32* @RXINT_MASK, align 4
  %42 = load i32, i32* @TXINT_MASK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @arc_reg_clr(%struct.arc_emac_priv* %39, i32 %40, i32 %43)
  %45 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %46 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %45, i32 0, i32 1
  %47 = call i32 @__napi_schedule(i32* %46)
  br label %48

48:                                               ; preds = %38, %32
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ERR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %118

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MSER_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 256
  store i32 %63, i32* %61, align 4
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 256
  store i32 %67, i32* %65, align 4
  %68 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %69 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 256
  store i32 %71, i32* %69, align 4
  %72 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %6, align 8
  %73 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %72, i32 0, i32 1
  %74 = call i32 @napi_schedule(i32* %73)
  br label %75

75:                                               ; preds = %59, %54
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @RXCR_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %82 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 256
  store i32 %84, i32* %82, align 4
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 256
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @RXFR_MASK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %96 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 256
  store i32 %98, i32* %96, align 4
  %99 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %100 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 256
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @RXFL_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %110 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 256
  store i32 %112, i32* %110, align 4
  %113 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %114 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 256
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %108, %103
  br label %118

118:                                              ; preds = %117, %49
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %119
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_reg_get(%struct.arc_emac_priv*, i32) #1

declare dso_local i32 @arc_reg_set(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @arc_reg_clr(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
