; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@__I40E_CLIENT_SERVICE_REQUESTED = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_CLIENT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_close(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 2
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  store %struct.i40e_pf* %6, %struct.i40e_pf** %3, align 8
  %7 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @test_and_set_bit(i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %15 = call i32 @i40e_down(%struct.i40e_vsi* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %18 = call i32 @i40e_vsi_free_irq(%struct.i40e_vsi* %17)
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %20 = call i32 @i40e_vsi_free_tx_resources(%struct.i40e_vsi* %19)
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %22 = call i32 @i40e_vsi_free_rx_resources(%struct.i40e_vsi* %21)
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @__I40E_CLIENT_SERVICE_REQUESTED, align 4
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_bit(i32 %25, i32 %28)
  %30 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @test_bit(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %16
  %37 = load i32, i32* @__I40E_CLIENT_RESET, align 4
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_bit(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @i40e_down(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_free_irq(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_free_tx_resources(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_free_rx_resources(%struct.i40e_vsi*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
