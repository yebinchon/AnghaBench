; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_walk_rx_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_vnet_walk_rx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.vio_driver_state }
%struct.vio_driver_state = type { i32, i32 }
%struct.vio_dring_state = type { i32 }
%struct.vio_net_desc = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@VIO_DESC_READY = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"vio_walk_rx_one desc[%02x:%02x:%08x:%08x:%llx:%llx]\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@VIO_DESC_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, %struct.vio_dring_state*, i32, i32*)* @vnet_walk_rx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_walk_rx_one(%struct.vnet_port* %0, %struct.vio_dring_state* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca %struct.vio_dring_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vio_net_desc*, align 8
  %11 = alloca %struct.vio_driver_state*, align 8
  %12 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %6, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %14 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.vio_net_desc* @get_rx_desc(%struct.vnet_port* %13, %struct.vio_dring_state* %14, i32 %15)
  store %struct.vio_net_desc* %16, %struct.vio_net_desc** %10, align 8
  %17 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %18 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %17, i32 0, i32 0
  store %struct.vio_driver_state* %18, %struct.vio_driver_state** %11, align 8
  %19 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %20 = icmp ne %struct.vio_net_desc* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %25 = call i64 @IS_ERR(%struct.vio_net_desc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %29 = call i32 @PTR_ERR(%struct.vio_net_desc* %28)
  store i32 %29, i32* %5, align 4
  br label %111

30:                                               ; preds = %4
  %31 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %32 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VIO_DESC_READY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %111

38:                                               ; preds = %30
  %39 = call i32 (...) @dma_rmb()
  %40 = load i32, i32* @DATA, align 4
  %41 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %42 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %46 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %50 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %53 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %56 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %62 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @viodbg(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %48, i32 %51, i32 %54, i32 %60, i32 %66)
  %68 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %69 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %70 = call i32 @vnet_rx_one(%struct.vnet_port* %68, %struct.vio_net_desc* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @ECONNRESET, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %38
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %111

77:                                               ; preds = %38
  %78 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %79 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %83 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %88 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @trace_vnet_rx_one(i32 %81, i32 %85, i32 %86, i32 %90)
  %92 = load i64, i64* @VIO_DESC_DONE, align 8
  %93 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %94 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %97 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %98 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @put_rx_desc(%struct.vnet_port* %96, %struct.vio_dring_state* %97, %struct.vio_net_desc* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %77
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %111

105:                                              ; preds = %77
  %106 = load %struct.vio_net_desc*, %struct.vio_net_desc** %10, align 8
  %107 = getelementptr inbounds %struct.vio_net_desc, %struct.vio_net_desc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %103, %75, %37, %27
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.vio_net_desc* @get_rx_desc(%struct.vnet_port*, %struct.vio_dring_state*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @IS_ERR(%struct.vio_net_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.vio_net_desc*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @viodbg(i32, i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnet_rx_one(%struct.vnet_port*, %struct.vio_net_desc*) #1

declare dso_local i32 @trace_vnet_rx_one(i32, i32, i32, i32) #1

declare dso_local i32 @put_rx_desc(%struct.vnet_port*, %struct.vio_dring_state*, %struct.vio_net_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
