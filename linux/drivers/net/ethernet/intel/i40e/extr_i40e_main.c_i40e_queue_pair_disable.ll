; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_queue_pair_disable(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %8 = call i32 @i40e_enter_busy_conf(%struct.i40e_vsi* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @i40e_queue_pair_disable_irq(%struct.i40e_vsi* %14, i32 %15)
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @i40e_queue_pair_toggle_rings(%struct.i40e_vsi* %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @i40e_queue_pair_toggle_napi(%struct.i40e_vsi* %20, i32 %21, i32 0)
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @i40e_queue_pair_clean_rings(%struct.i40e_vsi* %23, i32 %24)
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @i40e_queue_pair_reset_stats(%struct.i40e_vsi* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %13, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @i40e_enter_busy_conf(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_queue_pair_disable_irq(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_queue_pair_toggle_rings(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @i40e_queue_pair_toggle_napi(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @i40e_queue_pair_clean_rings(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_queue_pair_reset_stats(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
