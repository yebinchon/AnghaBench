; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_get_pf_queue_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_get_pf_queue_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }
%struct.i40e_vsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@I40E_QUEUE_END_OF_LIST = common dso_local global i64 0, align 8
@I40E_AQ_VSI_QUE_MAP_NONCONTIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_vf*, i64, i64)* @i40e_vc_get_pf_queue_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_vc_get_pf_queue_id(%struct.i40e_vf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40e_vf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca %struct.i40e_vsi*, align 8
  %10 = alloca i64, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.i40e_vf*, %struct.i40e_vf** %5, align 8
  %12 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %11, i32 0, i32 0
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  store %struct.i40e_pf* %13, %struct.i40e_pf** %8, align 8
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %14, i64 %15)
  store %struct.i40e_vsi* %16, %struct.i40e_vsi** %9, align 8
  %17 = load i64, i64* @I40E_QUEUE_END_OF_LIST, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %19 = icmp ne %struct.i40e_vsi* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %4, align 8
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = load i32, i32* @I40E_AQ_VSI_QUE_MAP_NONCONTIG, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  store i64 %40, i64* %10, align 8
  br label %51

41:                                               ; preds = %22
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le16_to_cpu(i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %41, %32
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %20
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
