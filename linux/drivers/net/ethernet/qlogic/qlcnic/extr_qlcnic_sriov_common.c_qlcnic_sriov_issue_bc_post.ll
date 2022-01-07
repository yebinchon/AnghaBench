; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_issue_bc_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_issue_bc_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i64, i64, i32, i64, i64, i64, i32, i64, i64, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QLC_BC_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, i64)* @qlcnic_sriov_issue_bc_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_issue_bc_post(%struct.qlcnic_bc_trans* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %12, i32 0, i32 9
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %13, align 8
  store %struct.qlcnic_vf_info* %14, %struct.qlcnic_vf_info** %6, align 8
  %15 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %16 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %19 = call i64 @__qlcnic_sriov_issue_bc_post(%struct.qlcnic_vf_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @QLC_BC_COMMAND, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %33 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %8, align 8
  %37 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %38 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %9, align 8
  %45 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %46 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %47, i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  br label %84

56:                                               ; preds = %24
  %57 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %58 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %61 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %8, align 8
  %65 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %66 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %69 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %9, align 8
  %73 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %74 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %77 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %75, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %56, %28
  %85 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @qlcnic_sriov_post_bc_msg(i32 %87, i32* %88, i32* %89, i64 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @__qlcnic_sriov_issue_bc_post(%struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_get_bc_paysize(i32, i64) #1

declare dso_local i32 @qlcnic_sriov_post_bc_msg(i32, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
