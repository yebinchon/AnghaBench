; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_dbell_index_table_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_dbell_index_table_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dbell_entry = type { i32, i32, i32 }

@vmci_doorbell_it = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@notify_idx_count = common dso_local global i32 0, align 4
@max_notify_idx = common dso_local global i32 0, align 4
@last_notify_idx_released = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbell_entry*)* @dbell_index_table_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbell_index_table_remove(%struct.dbell_entry* %0) #0 {
  %2 = alloca %struct.dbell_entry*, align 8
  store %struct.dbell_entry* %0, %struct.dbell_entry** %2, align 8
  %3 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  %4 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %5 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %4, i32 0, i32 2
  %6 = call i32 @hlist_del_init(i32* %5)
  %7 = load i32, i32* @notify_idx_count, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @notify_idx_count, align 4
  %9 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %10 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @max_notify_idx, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* @max_notify_idx, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @max_notify_idx, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @dbell_index_table_find(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* @max_notify_idx, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @max_notify_idx, align 4
  br label %16

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %33 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @last_notify_idx_released, align 4
  %35 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  %36 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %37 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %36, i32 0, i32 1
  %38 = call i32 @vmci_resource_put(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @dbell_index_table_find(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @vmci_resource_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
