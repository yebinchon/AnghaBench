; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.qed_llh_info* }
%struct.qed_llh_info = type { i32*, i64, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_NUM_PPFID = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ppfid_array[%d] = %hhd\0A\00", align 1
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_llh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_alloc(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_llh_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.qed_llh_info*
  store %struct.qed_llh_info* %9, %struct.qed_llh_info** %4, align 8
  %10 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %11 = icmp ne %struct.qed_llh_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %17 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 1
  store %struct.qed_llh_info* %16, %struct.qed_llh_info** %18, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %52, %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX_NUM_PPFID, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %52

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %35 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %38 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %42 = load i32, i32* @QED_MSG_SP, align 4
  %43 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %44 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DP_VERBOSE(%struct.qed_dev* %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46)
  %48 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %49 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %32, %31
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %57 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i32 %61, i32 %62)
  %64 = bitcast i8* %63 to i8**
  %65 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %66 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %65, i32 0, i32 2
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %68 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %112

74:                                               ; preds = %55
  %75 = load i32, i32* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 1
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %108, %74
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %83 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @kzalloc(i32 %87, i32 %88)
  %90 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %91 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %90, i32 0, i32 2
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %89, i8** %95, align 8
  %96 = load %struct.qed_llh_info*, %struct.qed_llh_info** %4, align 8
  %97 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %96, i32 0, i32 2
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %86
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %112

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %79

111:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %104, %71, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
