; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__IAVF_DOWN_PENDING = common dso_local global i64 0, align 8
@__IAVF_IN_CRITICAL_TASK = common dso_local global i32 0, align 4
@__IAVF_VSI_DOWN = common dso_local global i32 0, align 4
@IAVF_FLAG_CLIENT_NEEDS_CLOSE = common dso_local global i32 0, align 4
@__IAVF_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Device resources not yet released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iavf_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.iavf_adapter* %7, %struct.iavf_adapter** %4, align 8
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @__IAVF_DOWN_PENDING, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %21, %14
  %16 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 2
  %19 = call i64 @test_and_set_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @usleep_range(i32 500, i32 1000)
  br label %15

23:                                               ; preds = %15
  %24 = load i32, i32* @__IAVF_VSI_DOWN, align 4
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_bit(i32 %24, i32 %28)
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %31 = call i64 @CLIENT_ENABLED(%struct.iavf_adapter* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* @IAVF_FLAG_CLIENT_NEEDS_CLOSE, align 4
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %23
  %40 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %41 = call i32 @iavf_down(%struct.iavf_adapter* %40)
  %42 = load i64, i64* @__IAVF_DOWN_PENDING, align 8
  %43 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %46 = call i32 @iavf_free_traffic_irqs(%struct.iavf_adapter* %45)
  %47 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %48 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %48, i32 0, i32 2
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @__IAVF_DOWN, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @msecs_to_jiffies(i32 500)
  %61 = call i32 @wait_event_timeout(i32 %53, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %39
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @netdev_warn(%struct.net_device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %39
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @CLIENT_ENABLED(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_down(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_traffic_irqs(%struct.iavf_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
