; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.virtnet_info = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @virtnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %7)
  store %struct.virtnet_info* %8, %struct.virtnet_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %108, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %12 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %111

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %18 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %23 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %24 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @try_fill_recv(%struct.virtnet_info* %22, %struct.TYPE_4__* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %34 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %33, i32 0, i32 4
  %35 = call i32 @schedule_delayed_work(i32* %34, i32 0)
  br label %36

36:                                               ; preds = %32, %21
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %39 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @xdp_rxq_info_reg(i32* %44, %struct.net_device* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %112

52:                                               ; preds = %37
  %53 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %54 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* @MEM_TYPE_PAGE_SHARED, align 4
  %61 = call i32 @xdp_rxq_info_reg_mem_model(i32* %59, i32 %60, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %66 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = call i32 @xdp_rxq_info_unreg(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %112

74:                                               ; preds = %52
  %75 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %76 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %84 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @virtnet_napi_enable(i32 %82, i32* %89)
  %91 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %92 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %93 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %101 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = call i32 @virtnet_napi_tx_enable(%struct.virtnet_info* %91, i32 %99, i32* %106)
  br label %108

108:                                              ; preds = %74
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %9

111:                                              ; preds = %9
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %64, %50
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @try_fill_recv(%struct.virtnet_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @xdp_rxq_info_reg(i32*, %struct.net_device*, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(i32*, i32, i32*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @virtnet_napi_enable(i32, i32*) #1

declare dso_local i32 @virtnet_napi_tx_enable(%struct.virtnet_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
