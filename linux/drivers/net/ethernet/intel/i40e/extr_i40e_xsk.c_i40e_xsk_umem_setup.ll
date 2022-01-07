; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_umem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32 }
%struct.xdp_umem = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_xsk_umem_setup(%struct.i40e_vsi* %0, %struct.xdp_umem* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.xdp_umem*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %8 = icmp ne %struct.xdp_umem* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %11 = load %struct.xdp_umem*, %struct.xdp_umem** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @i40e_xsk_umem_enable(%struct.i40e_vsi* %10, %struct.xdp_umem* %11, i32 %12)
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @i40e_xsk_umem_disable(%struct.i40e_vsi* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i32 [ %13, %9 ], [ %17, %14 ]
  ret i32 %19
}

declare dso_local i32 @i40e_xsk_umem_enable(%struct.i40e_vsi*, %struct.xdp_umem*, i32) #1

declare dso_local i32 @i40e_xsk_umem_disable(%struct.i40e_vsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
