; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32, i32 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*, i32)* @ice_vsi_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_link_event(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %6 = icmp ne %struct.ice_vsi* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %57

8:                                                ; preds = %2
  %9 = load i32, i32* @__ICE_DOWN, align 4
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @test_bit(i32 %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %8
  br label %57

21:                                               ; preds = %15
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICE_VSI_PF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %30 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_carrier_ok(i32 %31)
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %57

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %40 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netif_carrier_on(i32 %41)
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netif_tx_wake_all_queues(i32 %45)
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %49 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_carrier_off(i32 %50)
  %52 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %53 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netif_tx_stop_all_queues(i32 %54)
  br label %56

56:                                               ; preds = %47, %38
  br label %57

57:                                               ; preds = %7, %20, %34, %56, %21
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

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
