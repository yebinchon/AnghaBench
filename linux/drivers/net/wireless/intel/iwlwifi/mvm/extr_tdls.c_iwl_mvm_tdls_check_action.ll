; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_check_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_tdls_check_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@TDLS_MOVE_CH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH = common dso_local global i32 0, align 4
@TDLS_SEND_CHAN_SW_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Invalid TDLS action %d state %d peer %pM same_peer %d initiator %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32*, i32, i32)* @iwl_mvm_tdls_check_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_tdls_check_action(%struct.iwl_mvm* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 131
  br i1 %18, label %19, label %50

19:                                               ; preds = %5
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 1
  %38 = call i32 @lockdep_is_held(i32* %37)
  %39 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %35, i32 %38)
  store %struct.ieee80211_sta* %39, %struct.ieee80211_sta** %13, align 8
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %41 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %26
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ether_addr_equal(i32* %44, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %43, %26
  br label %50

50:                                               ; preds = %49, %19, %5
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %142 [
    i32 131, label %55
    i32 129, label %63
    i32 128, label %101
    i32 130, label %104
    i32 132, label %131
  ]

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TDLS_MOVE_CH, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %55
  br label %142

63:                                               ; preds = %50
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %100

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @TDLS_SEND_CHAN_SW_RESP_AND_MOVE_CH, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %99

79:                                               ; preds = %73, %69
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @TDLS_SEND_CHAN_SW_REQ, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %98

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %87, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %97, %83
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99, %66
  br label %142

101:                                              ; preds = %50
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %142

104:                                              ; preds = %50
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @TDLS_SEND_CHAN_SW_REQ, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %12, align 4
  br label %121

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %111
  br label %130

122:                                              ; preds = %104
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @TDLS_MOVE_CH, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %126, %122
  br label %130

130:                                              ; preds = %129, %121
  br label %142

131:                                              ; preds = %50
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @TDLS_MOVE_CH, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135, %131
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %50, %141, %130, %101, %100, %62
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm* %146, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %151, i32* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %145, %142
  %157 = load i32, i32* %12, align 4
  ret i32 %157
}

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_TDLS(%struct.iwl_mvm*, i8*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
