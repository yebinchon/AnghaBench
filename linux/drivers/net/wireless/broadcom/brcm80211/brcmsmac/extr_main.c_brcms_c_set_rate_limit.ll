; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_rate_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_set_rate_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, i8**, i32 }

@RETRY_SHORT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@EDCF_SHORT = common dso_local global i32 0, align 4
@EDCF_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_set_rate_limit(%struct.brcms_c_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RETRY_SHORT_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RETRY_SHORT_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15, %11, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %28 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %31 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %39 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @brcms_b_retrylimit_upd(i32 %34, i32 %37, i32 %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %83, %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @EDCF_SHORT, align 4
  %55 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %56 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @SFIELD(i8* %53, i32 %54, i32 %57)
  %59 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %60 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %66 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @EDCF_LONG, align 4
  %73 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %74 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @SFIELD(i8* %71, i32 %72, i32 %75)
  %77 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %78 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %46
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %42

86:                                               ; preds = %42
  %87 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %88 = call i32 @brcms_c_wme_retries_write(%struct.brcms_c_info* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @brcms_b_retrylimit_upd(i32, i32, i32) #1

declare dso_local i8* @SFIELD(i8*, i32, i32) #1

declare dso_local i32 @brcms_c_wme_retries_write(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
