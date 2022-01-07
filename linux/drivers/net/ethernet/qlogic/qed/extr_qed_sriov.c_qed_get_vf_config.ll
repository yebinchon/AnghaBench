; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32* }
%struct.ifla_vf_info = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_public_vf_info = type { i64, i32, i32, i32, i32 }
%struct.qed_mcp_link_state = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"VF index [%d] isn't active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, %struct.ifla_vf_info*)* @qed_get_vf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_vf_config(%struct.qed_dev* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_public_vf_info*, align 8
  %10 = alloca %struct.qed_mcp_link_state, align 8
  %11 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %12 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %13 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %12)
  store %struct.qed_hwfn* %13, %struct.qed_hwfn** %8, align 8
  %14 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %15 = call i64 @IS_VF(%struct.qed_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %101

20:                                               ; preds = %3
  %21 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %22 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @qed_iov_is_valid_vfid(i32* %24, i32 %25, i32 1, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %30 = load i32, i32* @QED_MSG_IOV, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DP_VERBOSE(%struct.qed_dev* %29, i32 %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %20
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn* %36, i32 %37, i32 1)
  store %struct.qed_public_vf_info* %38, %struct.qed_public_vf_info** %9, align 8
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @qed_iov_get_link(%struct.qed_hwfn* %39, i32 %40, i32* null, %struct.qed_mcp_link_state* %10, i32* null)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %44 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %9, align 8
  %46 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @is_valid_ether_addr(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %35
  %51 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %52 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %9, align 8
  %55 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ether_addr_copy(i32 %53, i32 %56)
  br label %66

58:                                               ; preds = %35
  %59 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %60 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %9, align 8
  %63 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ether_addr_copy(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %58, %50
  %67 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %9, align 8
  %68 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %71 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @qed_iov_spoofchk_get(%struct.qed_hwfn* %72, i32 %73)
  %75 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %76 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %9, align 8
  %78 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %81 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %9, align 8
  %83 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %66
  %88 = load i64, i64* %11, align 8
  br label %92

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  br label %92

92:                                               ; preds = %89, %87
  %93 = phi i64 [ %88, %87 ], [ %91, %89 ]
  %94 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %95 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @qed_iov_get_vf_min_rate(%struct.qed_hwfn* %96, i32 %97)
  %99 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %100 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %28, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i64 @IS_VF(%struct.qed_dev*) #1

declare dso_local i32 @qed_iov_is_valid_vfid(i32*, i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32) #1

declare dso_local %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_iov_get_link(%struct.qed_hwfn*, i32, i32*, %struct.qed_mcp_link_state*, i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_iov_spoofchk_get(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_iov_get_vf_min_rate(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
