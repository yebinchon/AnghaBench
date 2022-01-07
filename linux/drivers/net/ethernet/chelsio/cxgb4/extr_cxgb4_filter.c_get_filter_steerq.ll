; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_get_filter_steerq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_get_filter_steerq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ch_filter_specification = type { i32, i32 }
%struct.adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.port_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ch_filter_specification*)* @get_filter_steerq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_filter_steerq(%struct.net_device* %0, %struct.ch_filter_specification* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ch_filter_specification*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ch_filter_specification* %1, %struct.ch_filter_specification** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %12 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %17 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call %struct.port_info* @netdev_priv(%struct.net_device* %25)
  store %struct.port_info* %26, %struct.port_info** %8, align 8
  %27 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %28 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.port_info*, %struct.port_info** %8, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load %struct.adapter*, %struct.adapter** %6, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.port_info*, %struct.port_info** %8, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %43 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %41, %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %55

51:                                               ; preds = %24
  %52 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %53 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %34
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
