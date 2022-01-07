; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_up_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@__IAVF_RUNNING = common dso_local global i32 0, align 4
@__IAVF_VSI_DOWN = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ENABLE_QUEUES = common dso_local global i32 0, align 4
@IAVF_FLAG_CLIENT_NEEDS_OPEN = common dso_local global i32 0, align 4
@iavf_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_up_complete(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %3 = load i32, i32* @__IAVF_RUNNING, align 4
  %4 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @__IAVF_VSI_DOWN, align 4
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clear_bit(i32 %6, i32 %10)
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %13 = call i32 @iavf_napi_enable_all(%struct.iavf_adapter* %12)
  %14 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_QUEUES, align 4
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %20 = call i64 @CLIENT_ENABLED(%struct.iavf_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @IAVF_FLAG_CLIENT_NEEDS_OPEN, align 4
  %24 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i32, i32* @iavf_wq, align 4
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 0
  %32 = call i32 @mod_delayed_work(i32 %29, i32* %31, i32 0)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @iavf_napi_enable_all(%struct.iavf_adapter*) #1

declare dso_local i64 @CLIENT_ENABLED(%struct.iavf_adapter*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
