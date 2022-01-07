; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_parse_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_parse_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_record_hdr = type { i32, i32 }
%struct.htc_bundle_lkahd_rpt = type { i32 }
%struct.htc_lookahead_report = type { i32, i32, i32 }
%struct.htc_credit_report = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"htc rx lk_ahd found pre_valid 0x%x post_valid 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"htc rx next look ahead\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HTC_HOST_MAX_MSG_PER_BUNDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"htc rx bundle lk_ahd\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unhandled record: id:%d len:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_record_hdr*, i32*, i32*, i32, i32*)* @htc_parse_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_parse_trailer(%struct.htc_target* %0, %struct.htc_record_hdr* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.htc_target*, align 8
  %9 = alloca %struct.htc_record_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.htc_bundle_lkahd_rpt*, align 8
  %15 = alloca %struct.htc_lookahead_report*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %8, align 8
  store %struct.htc_record_hdr* %1, %struct.htc_record_hdr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %19 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %140 [
    i32 130, label %21
    i32 129, label %41
    i32 128, label %89
  ]

21:                                               ; preds = %6
  %22 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %23 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = call i32 @WARN_ON(i32 1)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %149

34:                                               ; preds = %21
  %35 = load %struct.htc_target*, %struct.htc_target** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = bitcast i32* %36 to %struct.htc_credit_report*
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @htc_proc_cred_rpt(%struct.htc_target* %35, %struct.htc_credit_report* %37, i32 %38, i32 %39)
  br label %148

41:                                               ; preds = %6
  %42 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %43 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 12
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = call i32 @WARN_ON(i32 1)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %149

54:                                               ; preds = %41
  %55 = load i32*, i32** %10, align 8
  %56 = bitcast i32* %55 to %struct.htc_lookahead_report*
  store %struct.htc_lookahead_report* %56, %struct.htc_lookahead_report** %15, align 8
  %57 = load %struct.htc_lookahead_report*, %struct.htc_lookahead_report** %15, align 8
  %58 = getelementptr inbounds %struct.htc_lookahead_report, %struct.htc_lookahead_report* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.htc_lookahead_report*, %struct.htc_lookahead_report** %15, align 8
  %61 = getelementptr inbounds %struct.htc_lookahead_report, %struct.htc_lookahead_report* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %59, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %54
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %71 = load %struct.htc_lookahead_report*, %struct.htc_lookahead_report** %15, align 8
  %72 = getelementptr inbounds %struct.htc_lookahead_report, %struct.htc_lookahead_report* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.htc_lookahead_report*, %struct.htc_lookahead_report** %15, align 8
  %75 = getelementptr inbounds %struct.htc_lookahead_report, %struct.htc_lookahead_report* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ath6kl_dbg(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load %struct.htc_lookahead_report*, %struct.htc_lookahead_report** %15, align 8
  %81 = getelementptr inbounds %struct.htc_lookahead_report, %struct.htc_lookahead_report* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @memcpy(i32* %79, i32 %82, i32 4)
  %84 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @ath6kl_dbg_dump(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %85, i32 4)
  %87 = load i32*, i32** %13, align 8
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %69, %66, %54
  br label %148

89:                                               ; preds = %6
  %90 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %91 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @HTC_HOST_MAX_MSG_PER_BUNDLE, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %89
  %103 = call i32 @WARN_ON(i32 1)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %149

106:                                              ; preds = %98
  %107 = load i32*, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %139

109:                                              ; preds = %106
  %110 = load i32*, i32** %10, align 8
  %111 = bitcast i32* %110 to %struct.htc_bundle_lkahd_rpt*
  store %struct.htc_bundle_lkahd_rpt* %111, %struct.htc_bundle_lkahd_rpt** %14, align 8
  %112 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %115 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ath6kl_dbg_dump(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %113, i32 %116)
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %133, %109
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load i32*, i32** %11, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load %struct.htc_bundle_lkahd_rpt*, %struct.htc_bundle_lkahd_rpt** %14, align 8
  %128 = getelementptr inbounds %struct.htc_bundle_lkahd_rpt, %struct.htc_bundle_lkahd_rpt* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @memcpy(i32* %126, i32 %129, i32 4)
  %131 = load %struct.htc_bundle_lkahd_rpt*, %struct.htc_bundle_lkahd_rpt** %14, align 8
  %132 = getelementptr inbounds %struct.htc_bundle_lkahd_rpt, %struct.htc_bundle_lkahd_rpt* %131, i32 1
  store %struct.htc_bundle_lkahd_rpt* %132, %struct.htc_bundle_lkahd_rpt** %14, align 8
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %118

136:                                              ; preds = %118
  %137 = load i32, i32* %17, align 4
  %138 = load i32*, i32** %13, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %106
  br label %148

140:                                              ; preds = %6
  %141 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %142 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %9, align 8
  %145 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %140, %139, %88, %34
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %102, %50, %30
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @htc_proc_cred_rpt(%struct.htc_target*, %struct.htc_credit_report*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
