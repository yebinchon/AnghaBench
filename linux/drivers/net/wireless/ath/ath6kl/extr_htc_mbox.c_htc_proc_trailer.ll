; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_proc_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_proc_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_record_hdr = type { i32, i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"htc rx trailer len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"invalid record len: %d (id:%d) buf has: %d bytes left\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"htc rx bad trailer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, i32*, i32, i32*, i32*, i32)* @htc_proc_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_proc_trailer(%struct.htc_target* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.htc_target*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.htc_record_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ath6kl_dbg(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ath6kl_dbg_dump(i32 %21, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %22, i32 %23)
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %17, align 8
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %74, %6
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %86

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = bitcast i32* %38 to %struct.htc_record_hdr*
  store %struct.htc_record_hdr* %39, %struct.htc_record_hdr** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32* %45, i32** %8, align 8
  %46 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %13, align 8
  %47 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %37
  %52 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %13, align 8
  %53 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %13, align 8
  %56 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ath6kl_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %86

62:                                               ; preds = %37
  %63 = load i32*, i32** %8, align 8
  store i32* %63, i32** %16, align 8
  %64 = load %struct.htc_target*, %struct.htc_target** %7, align 8
  %65 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %13, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @htc_parse_trailer(%struct.htc_target* %64, %struct.htc_record_hdr* %65, i32* %66, i32* %67, i32 %68, i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %86

74:                                               ; preds = %62
  %75 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %13, align 8
  %76 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %8, align 8
  %81 = load %struct.htc_record_hdr*, %struct.htc_record_hdr** %13, align 8
  %82 = getelementptr inbounds %struct.htc_record_hdr, %struct.htc_record_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %27

86:                                               ; preds = %73, %51, %34, %27
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ath6kl_dbg_dump(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %15, align 4
  ret i32 %95
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i32, i32) #1

declare dso_local i32 @htc_parse_trailer(%struct.htc_target*, %struct.htc_record_hdr*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
