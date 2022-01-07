; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_nf_sanitize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_nf_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_nf_limits, %struct.ath_nf_limits, i32 }
%struct.ath_nf_limits = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@NUM_NF_READINGS = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NF calibrated [%s] [chain %d] is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"NF[%d] (%d) > MAX (%d), correcting to MAX\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"NF[%d] (%d) < MIN (%d), correcting to NOM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32*)* @ath9k_hw_nf_sanitize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_nf_sanitize(%struct.ath_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_nf_limits*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_CHAN_2GHZ(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  store %struct.ath_nf_limits* %17, %struct.ath_nf_limits** %6, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  store %struct.ath_nf_limits* %20, %struct.ath_nf_limits** %6, align 8
  br label %21

21:                                               ; preds = %18, %15
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %110, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @NUM_NF_READINGS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %113

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %110

34:                                               ; preds = %26
  %35 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %36 = load i32, i32* @CALIBRATE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sge i32 %37, 3
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %7, align 4
  %42 = srem i32 %41, 3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %35, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %42, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %6, align 8
  %55 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %34
  %59 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %60 = load i32, i32* @CALIBRATE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %6, align 8
  %68 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %59, i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %66, i32 %69)
  %71 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %6, align 8
  %72 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %109

78:                                               ; preds = %34
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %6, align 8
  %85 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %78
  %89 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %90 = load i32, i32* @CALIBRATE, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %6, align 8
  %98 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %89, i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %96, i32 %99)
  %101 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %6, align 8
  %102 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %88, %78
  br label %109

109:                                              ; preds = %108, %58
  br label %110

110:                                              ; preds = %109, %33
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %22

113:                                              ; preds = %22
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
