; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_update_mac_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_update_mac_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qed_filter_ucast = type { i64, i32 }

@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@QED_FILTER_REMOVE = common dso_local global i64 0, align 8
@QED_ETH_VF_NUM_MAC_FILTERS = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"MAC isn't configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_FILTER_REPLACE = common dso_local global i64 0, align 8
@QED_FILTER_FLUSH = common dso_local global i64 0, align 8
@QED_FILTER_ADD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Added MAC at %d entry in shadow\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"No available place for MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_filter_ucast*)* @qed_iov_vf_update_mac_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_update_mac_shadow(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, %struct.qed_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_filter_ucast*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %6, align 8
  store %struct.qed_filter_ucast* %2, %struct.qed_filter_ucast** %7, align 8
  %9 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %10 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %170

20:                                               ; preds = %3
  %21 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %22 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %170

27:                                               ; preds = %20
  %28 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %29 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QED_FILTER_REMOVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @QED_ETH_VF_NUM_MAC_FILTERS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %40 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %48 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @ether_addr_equal(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %38
  %53 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %54 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @eth_zero_addr(i32 %60)
  br label %66

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %34

66:                                               ; preds = %52, %34
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @QED_ETH_VF_NUM_MAC_FILTERS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %72 = load i32, i32* @QED_MSG_IOV, align 4
  %73 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %71, i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %170

76:                                               ; preds = %66
  br label %109

77:                                               ; preds = %27
  %78 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %79 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @QED_FILTER_REPLACE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %85 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @QED_FILTER_FLUSH, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %83, %77
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @QED_ETH_VF_NUM_MAC_FILTERS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %96 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @eth_zero_addr(i32 %102)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %90

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %83
  br label %109

109:                                              ; preds = %108, %76
  %110 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %111 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @QED_FILTER_ADD, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %117 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QED_FILTER_REPLACE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %170

122:                                              ; preds = %115, %109
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %156, %122
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @QED_ETH_VF_NUM_MAC_FILTERS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %159

127:                                              ; preds = %123
  %128 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %129 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @is_zero_ether_addr(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %127
  %139 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %140 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %148 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ether_addr_copy(i32 %146, i32 %149)
  %151 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %152 = load i32, i32* @QED_MSG_IOV, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %151, i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  br label %159

155:                                              ; preds = %127
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %123

159:                                              ; preds = %138, %123
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @QED_ETH_VF_NUM_MAC_FILTERS, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %165 = load i32, i32* @QED_MSG_IOV, align 4
  %166 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %164, i32 %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %170

169:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %163, %121, %70, %26, %19
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
