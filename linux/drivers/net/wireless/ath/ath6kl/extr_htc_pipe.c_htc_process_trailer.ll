; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_process_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_process_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_credit_report = type { i32 }
%struct.htc_record_hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"invalid length: %d (id:%d) buffer has: %d bytes left\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unhandled record: id:%d length:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, i32*, i32, i32)* @htc_process_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_process_trailer(%struct.htc_target* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.htc_target*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.htc_credit_report*, align 8
  %11 = alloca %struct.htc_record_hdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %87, %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %99

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  br label %99

24:                                               ; preds = %17
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.htc_record_hdr*
  store %struct.htc_record_hdr* %26, %struct.htc_record_hdr** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  store i32* %32, i32** %7, align 8
  %33 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %34 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %40 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %41 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %44 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, i32, i32, ...) @ath6kl_dbg(i32 %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %13, align 4
  br label %99

50:                                               ; preds = %24
  %51 = load i32*, i32** %7, align 8
  store i32* %51, i32** %12, align 8
  %52 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %78 [
    i32 128, label %55
  ]

55:                                               ; preds = %50
  %56 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %57 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = call i32 @WARN_ON_ONCE(i32 1)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %101

65:                                               ; preds = %55
  %66 = load i32*, i32** %12, align 8
  %67 = bitcast i32* %66 to %struct.htc_credit_report*
  store %struct.htc_credit_report* %67, %struct.htc_credit_report** %10, align 8
  %68 = load %struct.htc_target*, %struct.htc_target** %6, align 8
  %69 = load %struct.htc_credit_report*, %struct.htc_credit_report** %10, align 8
  %70 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %71 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @htc_process_credit_report(%struct.htc_target* %68, %struct.htc_credit_report* %69, i32 %75, i32 %76)
  br label %87

78:                                               ; preds = %50
  %79 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %80 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %81 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %84 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, i32, ...) @ath6kl_dbg(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %65
  %88 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %89 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %7, align 8
  %94 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %11, align 8
  %95 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %14

99:                                               ; preds = %38, %21, %14
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %61
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @htc_process_credit_report(%struct.htc_target*, %struct.htc_credit_report*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
