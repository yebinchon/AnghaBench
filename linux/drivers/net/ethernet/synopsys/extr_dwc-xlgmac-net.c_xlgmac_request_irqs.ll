; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, i32, i32, i32, i32, %struct.xlgmac_pdata*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.xlgmac_channel = type { i32, i32, i32, i32, i32, i32, %struct.xlgmac_channel*, i32, %struct.net_device* }

@xlgmac_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error requesting irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@xlgmac_dma_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_request_irqs(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  %8 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %8, i32 0, i32 8
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %15 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @xlgmac_isr, align 4
  %18 = load i32, i32* @IRQF_SHARED, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %23 = call i32 @devm_request_irq(i32 %13, i32 %16, i32 %17, i32 %18, i32 %21, %struct.xlgmac_pdata* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %29 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netdev_alert(%struct.net_device* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %124

33:                                               ; preds = %1
  %34 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %35 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %124

39:                                               ; preds = %33
  %40 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %41 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %40, i32 0, i32 6
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %41, align 8
  %43 = bitcast %struct.xlgmac_pdata* %42 to %struct.xlgmac_channel*
  store %struct.xlgmac_channel* %43, %struct.xlgmac_channel** %5, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %82, %39
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %47 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %44
  %51 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %52 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i8* @netdev_name(%struct.net_device* %54)
  %56 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %57 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snprintf(i32 %53, i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %58)
  %60 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %61 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %64 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @xlgmac_dma_isr, align 4
  %67 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %68 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %71 = bitcast %struct.xlgmac_channel* %70 to %struct.xlgmac_pdata*
  %72 = call i32 @devm_request_irq(i32 %62, i32 %65, i32 %66, i32 0, i32 %69, %struct.xlgmac_pdata* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %50
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %78 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netdev_alert(%struct.net_device* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %88

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %86 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %85, i32 1
  store %struct.xlgmac_channel* %86, %struct.xlgmac_channel** %5, align 8
  br label %44

87:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %124

88:                                               ; preds = %75
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %6, align 4
  %91 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %92 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %91, i32 -1
  store %struct.xlgmac_channel* %92, %struct.xlgmac_channel** %5, align 8
  br label %93

93:                                               ; preds = %109, %88
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %96 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %101 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %104 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %107 = bitcast %struct.xlgmac_channel* %106 to %struct.xlgmac_pdata*
  %108 = call i32 @devm_free_irq(i32 %102, i32 %105, %struct.xlgmac_pdata* %107)
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %6, align 4
  %111 = add i32 %110, -1
  store i32 %111, i32* %6, align 4
  %112 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %113 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %112, i32 -1
  store %struct.xlgmac_channel* %113, %struct.xlgmac_channel** %5, align 8
  br label %93

114:                                              ; preds = %93
  %115 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %116 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %119 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %122 = call i32 @devm_free_irq(i32 %117, i32 %120, %struct.xlgmac_pdata* %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %114, %87, %38, %26
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.xlgmac_pdata*) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @netdev_name(%struct.net_device*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
