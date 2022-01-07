; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_init_reorder_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_init_reorder_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_baid_data = type { i32, %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buffer* }
%struct.iwl_mvm_reorder_buf_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm_reorder_buffer = type { i32, i32, i32, %struct.iwl_mvm*, i32, i32, i8*, i64 }

@iwl_mvm_reorder_timer_expired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_baid_data*, i8*, i8*)* @iwl_mvm_init_reorder_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_init_reorder_buffer(%struct.iwl_mvm* %0, %struct.iwl_mvm_baid_data* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_baid_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %11 = alloca %struct.iwl_mvm_reorder_buf_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_baid_data* %1, %struct.iwl_mvm_baid_data** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %80, %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %13
  %22 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %22, i32 0, i32 2
  %24 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %24, i64 %26
  store %struct.iwl_mvm_reorder_buffer* %27, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %28 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %28, i32 0, i32 1
  %30 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %30, i64 %36
  store %struct.iwl_mvm_reorder_buf_entry* %37, %struct.iwl_mvm_reorder_buf_entry** %11, align 8
  %38 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %47, i32 0, i32 5
  %49 = load i32, i32* @iwl_mvm_reorder_timer_expired, align 4
  %50 = call i32 @timer_setup(i32* %48, i32 %49, i32 0)
  %51 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %51, i32 0, i32 4
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %55 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %55, i32 0, i32 3
  store %struct.iwl_mvm* %54, %struct.iwl_mvm** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %76, %21
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %10, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.iwl_mvm_reorder_buf_entry*, %struct.iwl_mvm_reorder_buf_entry** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %69, i64 %71
  %73 = getelementptr inbounds %struct.iwl_mvm_reorder_buf_entry, %struct.iwl_mvm_reorder_buf_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @__skb_queue_head_init(i32* %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %62

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %13

83:                                               ; preds = %13
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
