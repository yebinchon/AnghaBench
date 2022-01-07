; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_fill_coalesce_rule_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_fill_coalesce_rule_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cfg80211_coalesce_rules = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mwifiex_coalesce_rule = type { i8*, i32, %struct.filt_field_param*, i32 }
%struct.filt_field_param = type { i64, i8*, i32, i32 }

@MWIFIEX_COALESCE_MAX_BYTESEQ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Pattern not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Multiple packet types not allowed\0A\00", align 1
@NL80211_COALESCE_CONDITION_MATCH = common dso_local global i64 0, align 8
@RECV_FILTER_MATCH_TYPE_EQ = common dso_local global i32 0, align 4
@RECV_FILTER_MATCH_TYPE_NE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Packet type can not be determined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_coalesce_rules*, %struct.mwifiex_coalesce_rule*)* @mwifiex_fill_coalesce_rule_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_fill_coalesce_rule_info(%struct.mwifiex_private* %0, %struct.cfg80211_coalesce_rules* %1, %struct.mwifiex_coalesce_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.cfg80211_coalesce_rules*, align 8
  %7 = alloca %struct.mwifiex_coalesce_rule*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.filt_field_param*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.cfg80211_coalesce_rules* %1, %struct.cfg80211_coalesce_rules** %6, align 8
  store %struct.mwifiex_coalesce_rule* %2, %struct.mwifiex_coalesce_rule** %7, align 8
  %14 = load i32, i32* @MWIFIEX_COALESCE_MAX_BYTESEQ, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %20 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mwifiex_coalesce_rule*, %struct.mwifiex_coalesce_rule** %7, align 8
  %23 = getelementptr inbounds %struct.mwifiex_coalesce_rule, %struct.mwifiex_coalesce_rule* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mwifiex_coalesce_rule*, %struct.mwifiex_coalesce_rule** %7, align 8
  %25 = getelementptr inbounds %struct.mwifiex_coalesce_rule, %struct.mwifiex_coalesce_rule* %24, i32 0, i32 2
  %26 = load %struct.filt_field_param*, %struct.filt_field_param** %25, align 8
  store %struct.filt_field_param* %26, %struct.filt_field_param** %10, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %134, %3
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %137

33:                                               ; preds = %27
  %34 = mul nuw i64 8, %16
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i8** %18, i32 0, i32 %35)
  %37 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = load i32, i32* @MWIFIEX_COALESCE_MAX_BYTESEQ, align 4
  %44 = call i32 @mwifiex_is_pattern_supported(%struct.TYPE_2__* %42, i8** %18, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %33
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %48 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ERROR, align 4
  %51 = call i32 @mwifiex_dbg(i32 %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %151

54:                                               ; preds = %33
  %55 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %56 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %54
  %65 = call i8* @mwifiex_get_coalesce_pkt_type(i8** %18)
  store i8* %65, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.mwifiex_coalesce_rule*, %struct.mwifiex_coalesce_rule** %7, align 8
  %70 = getelementptr inbounds %struct.mwifiex_coalesce_rule, %struct.mwifiex_coalesce_rule* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %75 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 @mwifiex_dbg(i32 %76, i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %151

81:                                               ; preds = %68, %64
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i8*, i8** %13, align 8
  %86 = load %struct.mwifiex_coalesce_rule*, %struct.mwifiex_coalesce_rule** %7, align 8
  %87 = getelementptr inbounds %struct.mwifiex_coalesce_rule, %struct.mwifiex_coalesce_rule* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %134

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %92 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NL80211_COALESCE_CONDITION_MATCH, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @RECV_FILTER_MATCH_TYPE_EQ, align 4
  %98 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %99 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @RECV_FILTER_MATCH_TYPE_NE, align 4
  %102 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %103 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @MWIFIEX_COALESCE_MAX_BYTESEQ, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %18, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %110 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %112 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %115 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @memcpy(i32 %113, i8** %18, i8* %116)
  %118 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %119 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %127 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.filt_field_param*, %struct.filt_field_param** %10, align 8
  %129 = getelementptr inbounds %struct.filt_field_param, %struct.filt_field_param* %128, i32 1
  store %struct.filt_field_param* %129, %struct.filt_field_param** %10, align 8
  %130 = load %struct.mwifiex_coalesce_rule*, %struct.mwifiex_coalesce_rule** %7, align 8
  %131 = getelementptr inbounds %struct.mwifiex_coalesce_rule, %struct.mwifiex_coalesce_rule* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %104, %84
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %27

137:                                              ; preds = %27
  %138 = load %struct.mwifiex_coalesce_rule*, %struct.mwifiex_coalesce_rule** %7, align 8
  %139 = getelementptr inbounds %struct.mwifiex_coalesce_rule, %struct.mwifiex_coalesce_rule* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %137
  %143 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %144 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ERROR, align 4
  %147 = call i32 @mwifiex_dbg(i32 %145, i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i32, i32* @EOPNOTSUPP, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %151

150:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %151

151:                                              ; preds = %150, %142, %73, %46
  %152 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i32 @mwifiex_is_pattern_supported(%struct.TYPE_2__*, i8**, i32) #2

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #2

declare dso_local i8* @mwifiex_get_coalesce_pkt_type(i8**) #2

declare dso_local i32 @memcpy(i32, i8**, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
