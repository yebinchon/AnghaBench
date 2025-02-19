; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_reinit_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_reinit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32 }

@__ATL2_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_adapter*)* @atl2_reinit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_reinit_locked(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %3 = call i32 (...) @in_interrupt()
  %4 = call i32 @WARN_ON(i32 %3)
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i32, i32* @__ATL2_RESETTING, align 4
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %7, i32 0, i32 0
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 @msleep(i32 1)
  br label %5

13:                                               ; preds = %5
  %14 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %15 = call i32 @atl2_down(%struct.atl2_adapter* %14)
  %16 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %17 = call i32 @atl2_up(%struct.atl2_adapter* %16)
  %18 = load i32, i32* @__ATL2_RESETTING, align 4
  %19 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl2_down(%struct.atl2_adapter*) #1

declare dso_local i32 @atl2_up(%struct.atl2_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
