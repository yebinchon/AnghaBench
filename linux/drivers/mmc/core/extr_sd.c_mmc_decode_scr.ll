; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_decode_scr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_decode_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, i32*, %struct.sd_scr }
%struct.sd_scr = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s: unrecognised SCR structure version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCR_SPEC_VER_2 = common dso_local global i32 0, align 4
@SD_SCR_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SD_SCR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: invalid bus width\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_decode_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_decode_scr(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.sd_scr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 3
  store %struct.sd_scr* %8, %struct.sd_scr** %4, align 8
  %9 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %13, i32* %14, align 4
  %15 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %22 = call i32 @UNSTUFF_BITS(i32* %21, i32 60, i32 4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mmc_hostname(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %110

34:                                               ; preds = %1
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %36 = call i32 @UNSTUFF_BITS(i32* %35, i32 56, i32 4)
  %37 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %38 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %40 = call i32 @UNSTUFF_BITS(i32* %39, i32 48, i32 4)
  %41 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %42 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %44 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCR_SPEC_VER_2, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %50 = call i32 @UNSTUFF_BITS(i32* %49, i32 47, i32 1)
  %51 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %52 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %34
  %54 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %55 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %60 = call i32 @UNSTUFF_BITS(i32* %59, i32 42, i32 1)
  %61 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %62 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %64 = call i32 @UNSTUFF_BITS(i32* %63, i32 38, i32 4)
  %65 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %66 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %53
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %69 = call i32 @UNSTUFF_BITS(i32* %68, i32 55, i32 1)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  store i32 255, i32* %73, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %79 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %84 = call i32 @UNSTUFF_BITS(i32* %83, i32 32, i32 2)
  %85 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %86 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %89 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SD_SCR_BUS_WIDTH_1, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.sd_scr*, %struct.sd_scr** %4, align 8
  %96 = getelementptr inbounds %struct.sd_scr, %struct.sd_scr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SD_SCR_BUS_WIDTH_4, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %103 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mmc_hostname(i32 %104)
  %106 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %101, %25
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @UNSTUFF_BITS(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
