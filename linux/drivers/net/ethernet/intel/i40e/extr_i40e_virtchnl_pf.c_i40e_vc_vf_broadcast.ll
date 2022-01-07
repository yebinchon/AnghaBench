; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_vf_broadcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_vf_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.i40e_vf*, %struct.i40e_hw }
%struct.i40e_vf = type { i32, i32 }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, i32, i32, i32*, i32)* @i40e_vc_vf_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vc_vf_broadcast(%struct.i40e_pf* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca %struct.i40e_vf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 2
  store %struct.i40e_hw* %16, %struct.i40e_hw** %11, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 1
  %19 = load %struct.i40e_vf*, %struct.i40e_vf** %18, align 8
  store %struct.i40e_vf* %19, %struct.i40e_vf** %12, align 8
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %56, %5
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %28 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %31 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %37 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %38 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %37, i32 0, i32 1
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %43 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %44 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %43, i32 0, i32 1
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %56

48:                                               ; preds = %41, %26
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %49, i32 %50, i32 %51, i32 %52, i32* %53, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %48, %47
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load %struct.i40e_vf*, %struct.i40e_vf** %12, align 8
  %60 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %59, i32 1
  store %struct.i40e_vf* %60, %struct.i40e_vf** %12, align 8
  br label %20

61:                                               ; preds = %20
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
