; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_execute_vf_flr_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_execute_vf_flr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VF[%d] - Handling FLR\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed handle FLR of VF[%d]\0A\00", align 1
@GTT_BAR0_MAP_REG_USDM_RAM = common dso_local global i64 0, align 8
@VF_STOPPED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to re-enable VF[%d] acces\0A\00", align 1
@VF_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32*)* @qed_iov_execute_vf_flr_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_execute_vf_flr_cleanup(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qed_vf_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %13, i32 %14, i32 0)
  store %struct.qed_vf_info* %15, %struct.qed_vf_info** %10, align 8
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %17 = icmp ne %struct.qed_vf_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %138

19:                                               ; preds = %4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %25, 64
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = srem i32 %30, 64
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = and i64 %29, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %136

36:                                               ; preds = %19
  %37 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %38 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %41 = load i32, i32* @QED_MSG_IOV, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %45 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %46 = call i32 @qed_iov_vf_cleanup(%struct.qed_hwfn* %44, %struct.qed_vf_info* %45)
  %47 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %48 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %36
  br label %95

52:                                               ; preds = %36
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %54 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %56 = call i32 @qed_iov_vf_flr_poll(%struct.qed_hwfn* %53, %struct.qed_vf_info* %54, %struct.qed_ptt* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %95

60:                                               ; preds = %52
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %62 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @qed_final_cleanup(%struct.qed_hwfn* %61, %struct.qed_ptt* %62, i32 %63, i32 1)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @DP_ERR(%struct.qed_hwfn* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %138

72:                                               ; preds = %60
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %74 = load i64, i64* @GTT_BAR0_MAP_REG_USDM_RAM, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @USTORM_VF_PF_CHANNEL_READY_OFFSET(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @REG_WR(%struct.qed_hwfn* %73, i64 %77, i32 1)
  %79 = load i8*, i8** @VF_STOPPED, align 8
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %82 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %84 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %85 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %86 = call i32 @qed_iov_enable_vf_access(%struct.qed_hwfn* %83, %struct.qed_ptt* %84, %struct.qed_vf_info* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %72
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @DP_ERR(%struct.qed_hwfn* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %138

94:                                               ; preds = %72
  br label %95

95:                                               ; preds = %94, %59, %51
  %96 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %97 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VF_RESET, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i8*, i8** @VF_STOPPED, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %105 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %95
  %107 = load i32, i32* %12, align 4
  %108 = srem i32 %107, 32
  %109 = call i32 @BIT(i32 %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sdiv i32 %111, 32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %109
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %8, align 4
  %118 = srem i32 %117, 64
  %119 = zext i32 %118 to i64
  %120 = shl i64 1, %119
  %121 = xor i64 %120, -1
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %123 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sdiv i32 %127, 64
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = and i64 %131, %121
  store i64 %132, i64* %130, align 8
  %133 = load %struct.qed_vf_info*, %struct.qed_vf_info** %10, align 8
  %134 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  br label %136

136:                                              ; preds = %106, %19
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %89, %67, %18
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @qed_iov_vf_cleanup(%struct.qed_hwfn*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_flr_poll(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_final_cleanup(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.qed_hwfn*, i64, i32) #1

declare dso_local i64 @USTORM_VF_PF_CHANNEL_READY_OFFSET(i32) #1

declare dso_local i32 @qed_iov_enable_vf_access(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
