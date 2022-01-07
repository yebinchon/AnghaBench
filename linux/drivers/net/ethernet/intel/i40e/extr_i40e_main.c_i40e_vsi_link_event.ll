; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, i32 }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i32)* @i40e_vsi_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_link_event(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %6 = icmp ne %struct.i40e_vsi* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @test_bit(i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %2
  br label %54

15:                                               ; preds = %7
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %53 [
    i32 131, label %19
    i32 129, label %52
    i32 128, label %52
    i32 133, label %52
    i32 132, label %52
    i32 130, label %52
  ]

19:                                               ; preds = %15
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19
  br label %54

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netif_carrier_on(i32 %36)
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_tx_wake_all_queues(i32 %40)
  br label %51

42:                                               ; preds = %30
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %44 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_carrier_off(i32 %45)
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netif_tx_stop_all_queues(i32 %49)
  br label %51

51:                                               ; preds = %42, %33
  br label %54

52:                                               ; preds = %15, %15, %15, %15, %15
  br label %53

53:                                               ; preds = %15, %52
  br label %54

54:                                               ; preds = %14, %53, %51, %29
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
