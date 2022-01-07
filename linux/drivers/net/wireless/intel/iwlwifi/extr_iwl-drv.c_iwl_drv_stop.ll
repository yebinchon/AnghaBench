; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_drv_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_drv_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

@iwlwifi_opmode_table_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_drv_stop(%struct.iwl_drv* %0) #0 {
  %2 = alloca %struct.iwl_drv*, align 8
  store %struct.iwl_drv* %0, %struct.iwl_drv** %2, align 8
  %3 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %3, i32 0, i32 3
  %5 = call i32 @wait_for_completion(i32* %4)
  %6 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %7 = call i32 @_iwl_op_mode_stop(%struct.iwl_drv* %6)
  %8 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %9 = call i32 @iwl_dealloc_ucode(%struct.iwl_drv* %8)
  %10 = call i32 @mutex_lock(i32* @iwlwifi_opmode_table_mtx)
  %11 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %11, i32 0, i32 2
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %16, i32 0, i32 2
  %18 = call i32 @list_del(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = call i32 @mutex_unlock(i32* @iwlwifi_opmode_table_mtx)
  %21 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @iwl_dbg_tlv_free(%struct.TYPE_5__* %23)
  %25 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  %26 = call i32 @kfree(%struct.iwl_drv* %25)
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @_iwl_op_mode_stop(%struct.iwl_drv*) #1

declare dso_local i32 @iwl_dealloc_ucode(%struct.iwl_drv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_dbg_tlv_free(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.iwl_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
