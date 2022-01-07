; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_post_vf_bulletin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_post_vf_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_bulletin_content = type { i32, i32 }
%struct.qed_dmae_params = type { i32, i32 }
%struct.qed_vf_info = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.qed_bulletin_content* }

@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Posting Bulletin 0x%08x to VF[%d] (CRC 0x%08x)\0A\00", align 1
@QED_DMAE_FLAG_VF_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_ptt*)* @qed_iov_post_vf_bulletin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_post_vf_bulletin(%struct.qed_hwfn* %0, i32 %1, %struct.qed_ptt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_bulletin_content*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_dmae_params, align 4
  %11 = alloca %struct.qed_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_ptt* %2, %struct.qed_ptt** %7, align 8
  store i32 4, i32* %9, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %12, i32 %13, i32 1)
  store %struct.qed_vf_info* %14, %struct.qed_vf_info** %11, align 8
  %15 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %16 = icmp ne %struct.qed_vf_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %22 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %85

28:                                               ; preds = %20
  %29 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %30 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %31, align 8
  store %struct.qed_bulletin_content* %32, %struct.qed_bulletin_content** %8, align 8
  %33 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %34 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %38 = bitcast %struct.qed_bulletin_content* %37 to i32*
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %43 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @crc32(i32 0, i32* %41, i32 %47)
  %49 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %50 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %52 = load i32, i32* @QED_MSG_IOV, align 4
  %53 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %54 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %57 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.qed_bulletin_content*, %struct.qed_bulletin_content** %8, align 8
  %60 = getelementptr inbounds %struct.qed_bulletin_content, %struct.qed_bulletin_content* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %51, i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = call i32 @memset(%struct.qed_dmae_params* %10, i32 0, i32 8)
  %64 = load i32, i32* @QED_DMAE_FLAG_VF_DST, align 4
  %65 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %10, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %67 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %71 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %72 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %73 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %77 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.qed_vf_info*, %struct.qed_vf_info** %11, align 8
  %80 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 4
  %84 = call i32 @qed_dmae_host2host(%struct.qed_hwfn* %70, %struct.qed_ptt* %71, i32 %75, i32 %78, i32 %83, %struct.qed_dmae_params* %10)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %28, %25, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.qed_dmae_params*, i32, i32) #1

declare dso_local i32 @qed_dmae_host2host(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, %struct.qed_dmae_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
