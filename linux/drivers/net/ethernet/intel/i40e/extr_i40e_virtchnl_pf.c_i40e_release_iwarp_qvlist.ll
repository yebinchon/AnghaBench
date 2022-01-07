; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_release_iwarp_qvlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_release_iwarp_qvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, %struct.virtchnl_iwarp_qvlist_info*, %struct.i40e_pf* }
%struct.virtchnl_iwarp_qvlist_info = type { i64, %struct.virtchnl_iwarp_qv_info* }
%struct.virtchnl_iwarp_qv_info = type { i64, i64 }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40E_QUEUE_INVALID_IDX = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_NEXTQ_INDX_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_NEXTQ_TYPE_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_release_iwarp_qvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_release_iwarp_qvlist(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.virtchnl_iwarp_qvlist_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.virtchnl_iwarp_qv_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %14 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %14, i32 0, i32 2
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %3, align 8
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 1
  %19 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %18, align 8
  store %struct.virtchnl_iwarp_qvlist_info* %19, %struct.virtchnl_iwarp_qvlist_info** %4, align 8
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 1
  %22 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %21, align 8
  %23 = icmp ne %struct.virtchnl_iwarp_qvlist_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %114

25:                                               ; preds = %1
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %104, %25
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %4, align 8
  %34 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %31
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 0
  store %struct.i40e_hw* %39, %struct.i40e_hw** %10, align 8
  %40 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %4, align 8
  %41 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %40, i32 0, i32 1
  %42 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %42, i64 %43
  store %struct.virtchnl_iwarp_qv_info* %44, %struct.virtchnl_iwarp_qv_info** %7, align 8
  %45 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %7, align 8
  %46 = icmp ne %struct.virtchnl_iwarp_qv_info* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %104

48:                                               ; preds = %37
  %49 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %7, align 8
  %50 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %7, align 8
  %53 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @I40E_QUEUE_INVALID_IDX, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %48
  %58 = load i64, i64* %5, align 8
  %59 = sub i64 %58, 1
  %60 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %61 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul i64 %59, %62
  %64 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %7, align 8
  %65 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  store i64 %67, i64* %12, align 8
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @I40E_VPINT_CEQCTL(i64 %69)
  %71 = call i64 @rd32(%struct.i40e_hw* %68, i32 %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @I40E_VPINT_CEQCTL_NEXTQ_INDX_MASK, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* @I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT, align 8
  %76 = lshr i64 %74, %75
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @I40E_VPINT_CEQCTL_NEXTQ_TYPE_MASK, align 8
  %79 = and i64 %77, %78
  %80 = load i64, i64* @I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT, align 8
  %81 = lshr i64 %79, %80
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %5, align 8
  %83 = sub i64 %82, 1
  %84 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %85 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 %83, %86
  %88 = load i64, i64* %11, align 8
  %89 = sub i64 %88, 1
  %90 = add i64 %87, %89
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT, align 8
  %96 = shl i64 %94, %95
  %97 = or i64 %93, %96
  store i64 %97, i64* %13, align 8
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @I40E_VPINT_LNKLSTN(i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @wr32(%struct.i40e_hw* %98, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %57, %48
  br label %104

104:                                              ; preds = %103, %47
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %6, align 8
  br label %31

107:                                              ; preds = %31
  %108 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %109 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %108, i32 0, i32 1
  %110 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %109, align 8
  %111 = call i32 @kfree(%struct.virtchnl_iwarp_qvlist_info* %110)
  %112 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %113 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %112, i32 0, i32 1
  store %struct.virtchnl_iwarp_qvlist_info* null, %struct.virtchnl_iwarp_qvlist_info** %113, align 8
  br label %114

114:                                              ; preds = %107, %24
  ret void
}

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPINT_CEQCTL(i64) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @I40E_VPINT_LNKLSTN(i64) #1

declare dso_local i32 @kfree(%struct.virtchnl_iwarp_qvlist_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
