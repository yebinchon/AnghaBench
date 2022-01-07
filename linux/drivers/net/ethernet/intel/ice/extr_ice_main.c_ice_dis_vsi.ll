; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_dis_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_dis_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i64, i32 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@__ICE_NEEDS_RESTART = common dso_local global i32 0, align 4
@ICE_VSI_PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*, i32)* @ice_dis_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_dis_vsi(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @__ICE_DOWN, align 4
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %7 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @test_bit(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* @__ICE_NEEDS_RESTART, align 4
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @set_bit(i32 %13, i32 %16)
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ICE_VSI_PF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %12
  %24 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %25 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %30 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @netif_running(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 (...) @rtnl_lock()
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %41 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ice_stop(i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = call i32 (...) @rtnl_unlock()
  br label %48

48:                                               ; preds = %46, %39
  br label %52

49:                                               ; preds = %28
  %50 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %51 = call i32 @ice_vsi_close(%struct.ice_vsi* %50)
  br label %52

52:                                               ; preds = %49, %48
  br label %53

53:                                               ; preds = %11, %52, %23, %12
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @netif_running(i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ice_stop(i64) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ice_vsi_close(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
