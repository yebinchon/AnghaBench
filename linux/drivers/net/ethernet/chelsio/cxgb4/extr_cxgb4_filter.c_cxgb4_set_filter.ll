; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ch_filter_specification = type { i32 }
%struct.filter_ctx = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_set_filter(%struct.net_device* %0, i32 %1, %struct.ch_filter_specification* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ch_filter_specification*, align 8
  %8 = alloca %struct.filter_ctx, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ch_filter_specification* %2, %struct.ch_filter_specification** %7, align 8
  %10 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %8, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %7, align 8
  %15 = call i32 @__cxgb4_set_filter(%struct.net_device* %12, i32 %13, %struct.ch_filter_specification* %14, %struct.filter_ctx* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %32

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %8, i32 0, i32 1
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 10, %21
  %23 = call i32 @wait_for_completion_timeout(i32* %20, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.filter_ctx, %struct.filter_ctx* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @__cxgb4_set_filter(%struct.net_device*, i32, %struct.ch_filter_specification*, %struct.filter_ctx*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
