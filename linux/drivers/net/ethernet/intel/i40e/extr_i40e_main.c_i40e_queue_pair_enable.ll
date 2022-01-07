; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_queue_pair_enable(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @i40e_configure_tx_ring(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %21 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %25 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i40e_configure_tx_ring(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i40e_configure_rx_ring(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %37
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @i40e_queue_pair_toggle_rings(%struct.i40e_vsi* %51, i32 %52, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @i40e_queue_pair_toggle_napi(%struct.i40e_vsi* %54, i32 %55, i32 1)
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @i40e_queue_pair_enable_irq(%struct.i40e_vsi* %57, i32 %58)
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %61 = call i32 @i40e_exit_busy_conf(%struct.i40e_vsi* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %48, %34, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i40e_configure_tx_ring(i32) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_configure_rx_ring(i32) #1

declare dso_local i32 @i40e_queue_pair_toggle_rings(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @i40e_queue_pair_toggle_napi(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @i40e_queue_pair_enable_irq(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_exit_busy_conf(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
