; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_bulletin_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_bulletin_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Can not set MAC, invalid vfid [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't set MAC to malicious VF [%d]\0A\00", align 1
@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Can not set MAC, Forced MAC is configured\0A\00", align 1
@VFPF_BULLETIN_MAC_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32*, i32)* @qed_iov_bulletin_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_bulletin_set_mac(%struct.qed_hwfn* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_vf_info*, align 8
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %10, i32 %11, i32 1)
  store %struct.qed_vf_info* %12, %struct.qed_vf_info** %8, align 8
  %13 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %14 = icmp ne %struct.qed_vf_info* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DP_NOTICE(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DP_NOTICE(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %83

36:                                               ; preds = %23
  %37 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %38 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = load i32, i32* @QED_MSG_IOV, align 4
  %50 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %48, i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %83

53:                                               ; preds = %36
  %54 = load i32, i32* @VFPF_BULLETIN_MAC_ADDR, align 4
  %55 = call i32 @BIT(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %57 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @ether_addr_copy(i32 %61, i32* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %66 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %73 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %53
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = load %struct.qed_vf_info*, %struct.qed_vf_info** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @qed_iov_configure_vport_forced(%struct.qed_hwfn* %78, %struct.qed_vf_info* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %53
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %47, %28, %15
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @qed_iov_configure_vport_forced(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
