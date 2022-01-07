; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_stop_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_stop_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__I40E_PORT_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vsi_stop_rings(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %3 = load i32, i32* @__I40E_PORT_SUSPENDED, align 4
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @test_bit(i32 %3, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  call void @i40e_vsi_stop_rings_no_wait(%struct.i40e_vsi* %12)
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %15 = call i32 @i40e_vsi_control_tx(%struct.i40e_vsi* %14, i32 0)
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %17 = call i32 @i40e_vsi_control_rx(%struct.i40e_vsi* %16, i32 0)
  br label %18

18:                                               ; preds = %13, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local void @i40e_vsi_stop_rings_no_wait(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_control_tx(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_vsi_control_rx(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
