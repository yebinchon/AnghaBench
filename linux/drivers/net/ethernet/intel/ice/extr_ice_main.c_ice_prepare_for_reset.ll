; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_prepare_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_prepare_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, i32*, %struct.ice_hw }
%struct.ice_hw = type { i64, i32 }

@__ICE_PREPARED_FOR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_prepare_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_prepare_for_reset(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %5 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %6 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %5, i32 0, i32 3
  store %struct.ice_hw* %6, %struct.ice_hw** %3, align 8
  %7 = load i32, i32* @__ICE_PREPARED_FOR_RESET, align 4
  %8 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %16 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %16, i32 0, i32 1
  %18 = call i64 @ice_check_sq_alive(%struct.ice_hw* %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %22 = call i32 @ice_vc_notify_reset(%struct.ice_pf* %21)
  br label %23

23:                                               ; preds = %20, %14
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %27 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %32 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @ice_set_vf_state_qs_dis(i32* %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %43 = call i32 @ice_clear_hw_tbls(%struct.ice_hw* %42)
  %44 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %45 = call i32 @ice_pf_dis_all_vsi(%struct.ice_pf* %44, i32 0)
  %46 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %52 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ice_sched_clear_port(i64 %53)
  br label %55

55:                                               ; preds = %50, %41
  %56 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %57 = call i32 @ice_shutdown_all_ctrlq(%struct.ice_hw* %56)
  %58 = load i32, i32* @__ICE_PREPARED_FOR_RESET, align 4
  %59 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %60 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @set_bit(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ice_check_sq_alive(%struct.ice_hw*, i32*) #1

declare dso_local i32 @ice_vc_notify_reset(%struct.ice_pf*) #1

declare dso_local i32 @ice_set_vf_state_qs_dis(i32*) #1

declare dso_local i32 @ice_clear_hw_tbls(%struct.ice_hw*) #1

declare dso_local i32 @ice_pf_dis_all_vsi(%struct.ice_pf*, i32) #1

declare dso_local i32 @ice_sched_clear_port(i64) #1

declare dso_local i32 @ice_shutdown_all_ctrlq(%struct.ice_hw*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
