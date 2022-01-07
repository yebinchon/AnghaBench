; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_free_reorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_free_reorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_baid_data = type { i32, %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buffer*, i32 }
%struct.iwl_mvm_reorder_buf_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_reorder_buffer = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_baid_data*)* @iwl_mvm_free_reorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_free_reorder(%struct.iwl_mvm* %0, %struct.iwl_mvm_baid_data* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_mvm_baid_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %8 = alloca %struct.iwl_mvm_reorder_buf_entry*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm_baid_data* %1, %struct.iwl_mvm_baid_data** %4, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @iwl_mvm_sync_rxq_del_ba(%struct.iwl_mvm* %9, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %82, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %14
  %23 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %23, i32 0, i32 2
  %25 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %25, i64 %27
  store %struct.iwl_mvm_reorder_buffer* %28, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %29 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %29, i32 0, i32 1
  %31 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %31, i64 %37
  store %struct.iwl_mvm_reorder_buf_entry* %38, %struct.iwl_mvm_reorder_buf_entry** %8, align 8
  %39 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %39, i32 0, i32 3
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %22
  %51 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %51, i32 0, i32 3
  %53 = call i32 @spin_unlock_bh(i32* %52)
  br label %82

54:                                               ; preds = %22
  %55 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %70, %54
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @__skb_queue_purge(i32* %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %79, i32 0, i32 2
  %81 = call i32 @del_timer_sync(i32* %80)
  br label %82

82:                                               ; preds = %73, %50
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %14

85:                                               ; preds = %14
  ret void
}

declare dso_local i32 @iwl_mvm_sync_rxq_del_ba(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
