; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_cycle_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_cycle_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Driver up/down cycle failed, closing device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*, i32)* @ql_cycle_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_cycle_adapter(%struct.ql3_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql3_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @ql_adapter_down(%struct.ql3_adapter* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %12 = call i64 @ql_adapter_up(%struct.ql3_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10, %2
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @rtnl_lock()
  %20 = load %struct.ql3_adapter*, %struct.ql3_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_close(i32 %22)
  %24 = call i32 (...) @rtnl_unlock()
  store i32 -1, i32* %3, align 4
  br label %26

25:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @ql_adapter_down(%struct.ql3_adapter*, i32) #1

declare dso_local i64 @ql_adapter_up(%struct.ql3_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
