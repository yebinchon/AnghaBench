; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AVE_GISR = common dso_local global i64 0, align 8
@AVE_GI_PHY = common dso_local global i32 0, align 4
@AVE_GI_RXERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"receive a packet exceeding frame buffer\0A\00", align 1
@AVE_GI_RXOVF = common dso_local global i32 0, align 4
@AVE_GI_RXDROP = common dso_local global i32 0, align 4
@AVE_GI_RXIINT = common dso_local global i32 0, align 4
@AVE_GI_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ave_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ave_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ave_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ave_private* %12, %struct.ave_private** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @ave_irq_disable_all(%struct.net_device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %16 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AVE_GISR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AVE_GI_PHY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* @AVE_GI_PHY, align 4
  %27 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %28 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AVE_GISR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %25, %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @AVE_GI_RXERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* @AVE_GI_RXERR, align 4
  %40 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %41 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVE_GISR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %38, %33
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %113

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @AVE_GI_RXOVF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %62 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 @ave_rxfifo_reset(%struct.net_device* %66)
  br label %113

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @AVE_GI_RXDROP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %75 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @AVE_GI_RXDROP, align 4
  %80 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %81 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AVE_GISR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  br label %86

86:                                               ; preds = %73, %68
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @AVE_GI_RXIINT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %93 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %92, i32 0, i32 1
  %94 = call i32 @napi_schedule(i32* %93)
  %95 = load i32, i32* @AVE_GI_RXIINT, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %91, %86
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @AVE_GI_TX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %106 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %105, i32 0, i32 0
  %107 = call i32 @napi_schedule(i32* %106)
  %108 = load i32, i32* @AVE_GI_TX, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %104, %99
  br label %113

113:                                              ; preds = %112, %60, %54
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ave_irq_restore(%struct.net_device* %114, i32 %115)
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %117
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ave_irq_disable_all(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ave_rxfifo_reset(%struct.net_device*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @ave_irq_restore(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
