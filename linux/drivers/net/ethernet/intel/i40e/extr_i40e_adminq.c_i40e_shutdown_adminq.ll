; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_shutdown_adminq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_adminq.c_i40e_shutdown_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %5 = call i64 @i40e_check_asq_alive(%struct.i40e_hw* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %9 = call i32 @i40e_aq_queue_shutdown(%struct.i40e_hw* %8, i32 1)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %12 = call i32 @i40e_shutdown_asq(%struct.i40e_hw* %11)
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = call i32 @i40e_shutdown_arq(%struct.i40e_hw* %13)
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %16 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 0
  %24 = call i32 @i40e_free_virt_mem(%struct.i40e_hw* %21, %struct.TYPE_2__* %23)
  br label %25

25:                                               ; preds = %20, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @i40e_check_asq_alive(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_queue_shutdown(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_shutdown_asq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_shutdown_arq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_free_virt_mem(%struct.i40e_hw*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
