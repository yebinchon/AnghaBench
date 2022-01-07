; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_check_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_check_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32 }
%struct.htc_endpoint = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ATH6KL_DBG_CREDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"credit check need %d got %d\0A\00", align 1
@ENDPOINT_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"credit not found for ep %d\0A\00", align 1
@HTC_FLAGS_NEED_CREDIT_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"credit we need credits asap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_endpoint*, i32*, i32, i32, i32*)* @htc_check_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_check_credits(%struct.htc_target* %0, %struct.htc_endpoint* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.htc_target*, align 8
  %9 = alloca %struct.htc_endpoint*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %8, align 8
  store %struct.htc_endpoint* %1, %struct.htc_endpoint** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.htc_target*, %struct.htc_target** %8, align 8
  %16 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.htc_target*, %struct.htc_target** %8, align 8
  %22 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %20, i32 %23)
  br label %26

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %24, %19 ], [ 1, %25 ]
  %28 = load i32*, i32** %13, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @ATH6KL_DBG_CREDIT, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %33 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35)
  %37 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %38 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %26
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ENDPOINT_0, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %151

51:                                               ; preds = %44
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %55 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  %59 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %60 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.htc_target*, %struct.htc_target** %8, align 8
  %63 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %66 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %65, i32 0, i32 1
  %67 = call i32 @ath6kl_credit_seek(i32 %64, %struct.TYPE_4__* %66)
  %68 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %69 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %72 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %51
  %79 = load i32, i32* @ATH6KL_DBG_CREDIT, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %151

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84, %26
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %89 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %96 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %94
  store i32 %99, i32* %97, align 4
  %100 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %101 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %105 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %85
  %110 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %111 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %115 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %113, %117
  %119 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %120 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.htc_target*, %struct.htc_target** %8, align 8
  %123 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %126 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %125, i32 0, i32 1
  %127 = call i32 @ath6kl_credit_seek(i32 %124, %struct.TYPE_4__* %126)
  %128 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %129 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %133 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %109
  %138 = load i32, i32* @HTC_FLAGS_NEED_CREDIT_UPDATE, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %143 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @ATH6KL_DBG_CREDIT, align 4
  %148 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %137, %109
  br label %150

150:                                              ; preds = %149, %85
  store i32 0, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %78, %48
  %152 = load i32, i32* %7, align 4
  ret i32 %152
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_credit_seek(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
