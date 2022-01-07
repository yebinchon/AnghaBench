; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_htc_lookahead_bundle = type { i32 }
%struct.ath10k_htc_record = type { %struct.TYPE_2__, %struct.ath10k_htc_lookahead_bundle*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid record length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Credit report too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Lookahead report too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unhandled record: id:%d length:%d\0A\00", align 1
@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"htc rx bad trailer\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htc_process_trailer(%struct.ath10k_htc* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.ath10k_htc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ath10k_htc_lookahead_bundle*, align 8
  %14 = alloca %struct.ath10k*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ath10k_htc_record*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.ath10k_htc*, %struct.ath10k_htc** %7, align 8
  %21 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %20, i32 0, i32 0
  %22 = load %struct.ath10k*, %struct.ath10k** %21, align 8
  store %struct.ath10k* %22, %struct.ath10k** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %17, align 8
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %18, align 4
  br label %25

25:                                               ; preds = %140, %6
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %159

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to %struct.ath10k_htc_record*
  store %struct.ath10k_htc_record* %30, %struct.ath10k_htc_record** %16, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %159

37:                                               ; preds = %28
  %38 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %39 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %46 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %47 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %15, align 4
  br label %159

53:                                               ; preds = %37
  %54 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %55 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %125 [
    i32 130, label %58
    i32 129, label %83
    i32 128, label %110
  ]

58:                                               ; preds = %53
  store i64 4, i64* %19, align 8
  %59 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %60 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %19, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %68 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %136

71:                                               ; preds = %58
  %72 = load %struct.ath10k_htc*, %struct.ath10k_htc** %7, align 8
  %73 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %74 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %77 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ath10k_htc_process_credit_report(%struct.ath10k_htc* %72, i32 %75, i64 %80, i32 %81)
  br label %136

83:                                               ; preds = %53
  store i64 4, i64* %19, align 8
  %84 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %85 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %19, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %93 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %15, align 4
  br label %136

96:                                               ; preds = %83
  %97 = load %struct.ath10k_htc*, %struct.ath10k_htc** %7, align 8
  %98 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %99 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %102 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %10, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @ath10k_htc_process_lookahead(%struct.ath10k_htc* %97, i32 %100, i64 %105, i32 %106, i8* %107, i32* %108)
  store i32 %109, i32* %15, align 4
  br label %136

110:                                              ; preds = %53
  %111 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %112 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %111, i32 0, i32 1
  %113 = load %struct.ath10k_htc_lookahead_bundle*, %struct.ath10k_htc_lookahead_bundle** %112, align 8
  store %struct.ath10k_htc_lookahead_bundle* %113, %struct.ath10k_htc_lookahead_bundle** %13, align 8
  %114 = load %struct.ath10k_htc*, %struct.ath10k_htc** %7, align 8
  %115 = load %struct.ath10k_htc_lookahead_bundle*, %struct.ath10k_htc_lookahead_bundle** %13, align 8
  %116 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %117 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %10, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @ath10k_htc_process_lookahead_bundle(%struct.ath10k_htc* %114, %struct.ath10k_htc_lookahead_bundle* %115, i64 %120, i32 %121, i8* %122, i32* %123)
  store i32 %124, i32* %15, align 4
  br label %136

125:                                              ; preds = %53
  %126 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %127 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %128 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %132 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %125, %110, %96, %91, %71, %66
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %159

140:                                              ; preds = %136
  %141 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %142 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = add i64 8, %145
  %147 = load i32*, i32** %8, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 %146
  store i32* %148, i32** %8, align 8
  %149 = load %struct.ath10k_htc_record*, %struct.ath10k_htc_record** %16, align 8
  %150 = getelementptr inbounds %struct.ath10k_htc_record, %struct.ath10k_htc_record* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = add i64 8, %153
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %9, align 4
  br label %25

159:                                              ; preds = %139, %44, %34, %25
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %164 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @ath10k_dbg_dump(%struct.ath10k* %163, i32 %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32* %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %159
  %169 = load i32, i32* %15, align 4
  ret i32 %169
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_htc_process_credit_report(%struct.ath10k_htc*, i32, i64, i32) #1

declare dso_local i32 @ath10k_htc_process_lookahead(%struct.ath10k_htc*, i32, i64, i32, i8*, i32*) #1

declare dso_local i32 @ath10k_htc_process_lookahead_bundle(%struct.ath10k_htc*, %struct.ath10k_htc_lookahead_bundle*, i64, i32, i8*, i32*) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
