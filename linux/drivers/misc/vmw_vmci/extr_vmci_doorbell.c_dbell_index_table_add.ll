; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_dbell_index_table_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_dbell_index_table_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.dbell_entry = type { i32, i32, i32 }

@vmci_doorbell_it = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@max_notify_idx = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@notify_idx_count = common dso_local global i32 0, align 4
@last_notify_idx_released = common dso_local global i32 0, align 4
@last_notify_idx_reserved = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbell_entry*)* @dbell_index_table_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbell_index_table_add(%struct.dbell_entry* %0) #0 {
  %2 = alloca %struct.dbell_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dbell_entry* %0, %struct.dbell_entry** %2, align 8
  %6 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %7 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %6, i32 0, i32 2
  %8 = call i32 @vmci_resource_get(i32* %7)
  %9 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  %10 = load i32, i32* @max_notify_idx, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @notify_idx_count, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @last_notify_idx_released, align 4
  %19 = load i32, i32* @max_notify_idx, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @last_notify_idx_released, align 4
  %23 = call i32 @dbell_index_table_find(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @last_notify_idx_released, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %27, i32* @last_notify_idx_released, align 4
  br label %58

28:                                               ; preds = %21, %17
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* @last_notify_idx_reserved, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @notify_idx_count, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @max_notify_idx, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dbell_index_table_find(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @max_notify_idx, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @last_notify_idx_released, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %35, label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @max_notify_idx, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @max_notify_idx, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @max_notify_idx, align 4
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %25
  br label %64

59:                                               ; preds = %13
  %60 = load i32, i32* @last_notify_idx_reserved, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = srem i32 %61, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %58
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* @last_notify_idx_reserved, align 4
  %66 = load i32, i32* @notify_idx_count, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @notify_idx_count, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %70 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %72 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VMCI_DOORBELL_HASH(i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load %struct.dbell_entry*, %struct.dbell_entry** %2, align 8
  %76 = getelementptr inbounds %struct.dbell_entry, %struct.dbell_entry* %75, i32 0, i32 1
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 1), align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @hlist_add_head(i32* %76, i32* %80)
  %82 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmci_doorbell_it, i32 0, i32 0))
  ret void
}

declare dso_local i32 @vmci_resource_get(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dbell_index_table_find(i32) #1

declare dso_local i32 @VMCI_DOORBELL_HASH(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
