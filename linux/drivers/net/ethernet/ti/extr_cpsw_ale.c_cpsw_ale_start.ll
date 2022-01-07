; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_ale = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@ALE_ENABLE = common dso_local global i32 0, align 4
@ALE_CLEAR = common dso_local global i32 0, align 4
@cpsw_ale_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_ale_start(%struct.cpsw_ale* %0) #0 {
  %2 = alloca %struct.cpsw_ale*, align 8
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %2, align 8
  %3 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %4 = load i32, i32* @ALE_ENABLE, align 4
  %5 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %3, i32 0, i32 %4, i32 1)
  %6 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %7 = load i32, i32* @ALE_CLEAR, align 4
  %8 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %6, i32 0, i32 %7, i32 1)
  %9 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %10 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %9, i32 0, i32 0
  %11 = load i32, i32* @cpsw_ale_timer, align 4
  %12 = call i32 @timer_setup(%struct.TYPE_3__* %10, i32 %11, i32 0)
  %13 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %14 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %20 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %24 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.cpsw_ale*, %struct.cpsw_ale** %2, align 8
  %27 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %26, i32 0, i32 0
  %28 = call i32 @add_timer(%struct.TYPE_3__* %27)
  br label %29

29:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @cpsw_ale_control_set(%struct.cpsw_ale*, i32, i32, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
