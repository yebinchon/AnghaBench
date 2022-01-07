; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_del_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_del_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ch_filter_specification = type { i32 }
%struct.filter_ctx = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CXGB4_SHUTTING_DOWN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_del_filter(%struct.net_device* %0, i32 %1, %struct.ch_filter_specification* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ch_filter_specification*, align 8
  %8 = alloca %struct.filter_ctx, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ch_filter_specification* %2, %struct.ch_filter_specification** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.TYPE_2__* @netdev2adap(%struct.net_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CXGB4_SHUTTING_DOWN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %8, i32 0, i32 1
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %7, align 8
  %24 = call i32 @__cxgb4_del_filter(%struct.net_device* %21, i32 %22, %struct.ch_filter_specification* %23, %struct.filter_ctx* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %41

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %8, i32 0, i32 1
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 10, %30
  %32 = call i32 @wait_for_completion_timeout(i32* %29, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %35, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_2__* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @__cxgb4_del_filter(%struct.net_device*, i32, %struct.ch_filter_specification*, %struct.filter_ctx*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
