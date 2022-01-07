; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_afu_decode_psl_serr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_afu_decode_psl_serr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"PSL Slice error received. Check AFU for root cause.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PSL_SERR_An: 0x%016llx\0A\00", align 1
@CXL_PSL_SERR_An_afuto = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"AFU MMIO Timeout\0A\00", align 1
@CXL_PSL_SERR_An_afudis = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"MMIO targeted Accelerator that was not enabled\0A\00", align 1
@CXL_PSL_SERR_An_afuov = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"AFU CTAG Overflow\0A\00", align 1
@CXL_PSL_SERR_An_badsrc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Bad Interrupt Source\0A\00", align 1
@CXL_PSL_SERR_An_badctx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Bad Context Handle\0A\00", align 1
@CXL_PSL_SERR_An_llcmdis = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"LLCMD to Disabled AFU\0A\00", align 1
@CXL_PSL_SERR_An_llcmdto = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"LLCMD Timeout to AFU\0A\00", align 1
@CXL_PSL_SERR_An_afupar = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"AFU MMIO Parity Error\0A\00", align 1
@CXL_PSL_SERR_An_afudup = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"AFU MMIO Duplicate CTAG Error\0A\00", align 1
@CXL_PSL_SERR_An_AE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"AFU asserted JDONE with JERROR in AFU Directed Mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_afu_decode_psl_serr(%struct.cxl_afu* %0, i32 %1) #0 {
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %6 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %5, i32 0, i32 0
  %7 = call i32 (i32*, i8*, ...) @dev_crit(i32* %6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i32*, i8*, ...) @dev_crit(i32* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CXL_PSL_SERR_An_afuto, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %18 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_crit(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CXL_PSL_SERR_An_afudis, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %27 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_crit(i32* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @CXL_PSL_SERR_An_afuov, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %36 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_crit(i32* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @CXL_PSL_SERR_An_badsrc, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %45 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_crit(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CXL_PSL_SERR_An_badctx, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %54 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_crit(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CXL_PSL_SERR_An_llcmdis, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %63 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_crit(i32* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CXL_PSL_SERR_An_llcmdto, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %72 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_crit(i32* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @CXL_PSL_SERR_An_afupar, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %81 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @dev_crit(i32* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @CXL_PSL_SERR_An_afudup, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %90 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %89, i32 0, i32 0
  %91 = call i32 (i32*, i8*, ...) @dev_crit(i32* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @CXL_PSL_SERR_An_AE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %99 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %98, i32 0, i32 0
  %100 = call i32 (i32*, i8*, ...) @dev_crit(i32* %99, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %92
  ret void
}

declare dso_local i32 @dev_crit(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
