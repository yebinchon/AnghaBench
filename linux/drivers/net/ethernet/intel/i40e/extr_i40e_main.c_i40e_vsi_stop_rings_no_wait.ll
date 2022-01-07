; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_stop_rings_no_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_stop_rings_no_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vsi_stop_rings_no_wait(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %6 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %6, i32 0, i32 2
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  store %struct.i40e_pf* %8, %struct.i40e_pf** %3, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @i40e_control_tx_q(%struct.i40e_pf* %19, i32 %20, i32 0)
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @i40e_control_rx_q(%struct.i40e_pf* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %12
  ret void
}

declare dso_local i32 @i40e_control_tx_q(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @i40e_control_rx_q(%struct.i40e_pf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
