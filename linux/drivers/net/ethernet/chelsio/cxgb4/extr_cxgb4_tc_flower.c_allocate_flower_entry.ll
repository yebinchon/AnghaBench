; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_allocate_flower_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_flower.c_allocate_flower_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_tc_flower_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ch_tc_flower_entry* ()* @allocate_flower_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ch_tc_flower_entry* @allocate_flower_entry() #0 {
  %1 = alloca %struct.ch_tc_flower_entry*, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call %struct.ch_tc_flower_entry* @kzalloc(i32 4, i32 %2)
  store %struct.ch_tc_flower_entry* %3, %struct.ch_tc_flower_entry** %1, align 8
  %4 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %1, align 8
  %5 = icmp ne %struct.ch_tc_flower_entry* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %1, align 8
  %8 = getelementptr inbounds %struct.ch_tc_flower_entry, %struct.ch_tc_flower_entry* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_init(i32* %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = load %struct.ch_tc_flower_entry*, %struct.ch_tc_flower_entry** %1, align 8
  ret %struct.ch_tc_flower_entry* %11
}

declare dso_local %struct.ch_tc_flower_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
