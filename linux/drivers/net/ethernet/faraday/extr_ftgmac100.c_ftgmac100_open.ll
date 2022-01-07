; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32 }
%struct.ftgmac100 = type { i64, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate descriptors\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@ftgmac100_poll = common dso_local global i32 0, align 4
@ftgmac100_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate packet buffers\0A\00", align 1
@FTGMAC100_OFFSET_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ftgmac100_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ftgmac100*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %6)
  store %struct.ftgmac100* %7, %struct.ftgmac100** %4, align 8
  %8 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %9 = call i32 @ftgmac100_alloc_rings(%struct.ftgmac100* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %126

16:                                               ; preds = %1
  %17 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %18 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i64, i64* @DUPLEX_FULL, align 8
  %23 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %24 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* @SPEED_100, align 8
  %26 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %27 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %30 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %32 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %35 = call i32 @ftgmac100_reset_and_config_mac(%struct.ftgmac100* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %116

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %42 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %41, i32 0, i32 1
  %43 = load i32, i32* @ftgmac100_poll, align 4
  %44 = call i32 @netif_napi_add(%struct.net_device* %40, i32* %42, i32 %43, i32 64)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ftgmac100_interrupt, align 4
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @request_irq(i32 %47, i32 %48, i32 0, i32 %51, %struct.net_device* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %112

62:                                               ; preds = %39
  %63 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %64 = call i32 @ftgmac100_init_all(%struct.ftgmac100* %63, i32 0)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %104

70:                                               ; preds = %62
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @phy_start(i64 %78)
  br label %97

80:                                               ; preds = %70
  %81 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %82 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i32 @netif_carrier_on(%struct.net_device* %86)
  %88 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %89 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ncsi_start_dev(i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %98

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %80
  br label %97

97:                                               ; preds = %96, %75
  store i32 0, i32* %2, align 4
  br label %126

98:                                               ; preds = %94
  %99 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %100 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %99, i32 0, i32 1
  %101 = call i32 @napi_disable(i32* %100)
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @netif_stop_queue(%struct.net_device* %102)
  br label %104

104:                                              ; preds = %98, %67
  %105 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %106 = call i32 @ftgmac100_free_buffers(%struct.ftgmac100* %105)
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = call i32 @free_irq(i32 %109, %struct.net_device* %110)
  br label %112

112:                                              ; preds = %104, %56
  %113 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %114 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %113, i32 0, i32 1
  %115 = call i32 @netif_napi_del(i32* %114)
  br label %116

116:                                              ; preds = %112, %38
  %117 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %118 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @FTGMAC100_OFFSET_IER, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @iowrite32(i32 0, i64 %121)
  %123 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %124 = call i32 @ftgmac100_free_rings(%struct.ftgmac100* %123)
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %116, %97, %12
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ftgmac100_alloc_rings(%struct.ftgmac100*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ftgmac100_reset_and_config_mac(%struct.ftgmac100*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ftgmac100_init_all(%struct.ftgmac100*, i32) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @ncsi_start_dev(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ftgmac100_free_buffers(%struct.ftgmac100*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ftgmac100_free_rings(%struct.ftgmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
