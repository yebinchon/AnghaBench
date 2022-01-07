; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_stats_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_stats_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't map stats buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Stats token initialized (%llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @init_stats_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stats_token(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 2
  %13 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %14 = call i32 @dma_map_single(%struct.device* %10, i32* %12, i32 4, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @dma_mapping_error(%struct.device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @netdev_dbg(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
