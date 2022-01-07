; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_reinit_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_reinit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }

@__E1000_RESETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_reinit_locked(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %3 = call i32 (...) @might_sleep()
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i32, i32* @__E1000_RESETTING, align 4
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  %8 = call i64 @test_and_set_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %4

12:                                               ; preds = %4
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = call i32 @e1000e_down(%struct.e1000_adapter* %13, i32 1)
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = call i32 @e1000e_up(%struct.e1000_adapter* %15)
  %17 = load i32, i32* @__E1000_RESETTING, align 4
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e1000e_down(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @e1000e_up(%struct.e1000_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
