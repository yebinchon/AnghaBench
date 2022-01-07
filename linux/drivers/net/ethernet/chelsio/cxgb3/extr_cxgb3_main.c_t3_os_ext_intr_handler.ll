; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_os_ext_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_t3_os_ext_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32 }

@F_T3DBG = common dso_local global i32 0, align 4
@A_PL_INT_ENABLE0 = common dso_local global i32 0, align 4
@cxgb3_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_os_ext_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load %struct.adapter*, %struct.adapter** %2, align 8
  %4 = getelementptr inbounds %struct.adapter, %struct.adapter* %3, i32 0, i32 1
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @F_T3DBG, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i32, i32* @A_PL_INT_ENABLE0, align 4
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @t3_write_reg(%struct.adapter* %17, i32 %18, i32 %21)
  %23 = load i32, i32* @cxgb3_wq, align 4
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %10, %1
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
