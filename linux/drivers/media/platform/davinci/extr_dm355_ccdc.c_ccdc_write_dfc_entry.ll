; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_write_dfc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_write_dfc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ccdc_vertical_dft = type { i32*, i32*, i32*, i32*, i32* }

@DFCMEM0 = common dso_local global i32 0, align 4
@DFCMEM1 = common dso_local global i32 0, align 4
@DFCMEM2 = common dso_local global i32 0, align 4
@DFCMEM3 = common dso_local global i32 0, align 4
@DFCMEM4 = common dso_local global i32 0, align 4
@DFCMEMCTL = common dso_local global i32 0, align 4
@CCDC_DFCMEMCTL_DFCMWR_MASK = common dso_local global i32 0, align 4
@ccdc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"defect table write timeout !!!\0A\00", align 1
@DFC_WRITE_WAIT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ccdc_vertical_dft*)* @ccdc_write_dfc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_write_dfc_entry(i32 %0, %struct.ccdc_vertical_dft* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccdc_vertical_dft*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ccdc_vertical_dft* %1, %struct.ccdc_vertical_dft** %5, align 8
  store i32 1000, i32* %7, align 4
  %8 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %5, align 8
  %9 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DFCMEM0, align 4
  %16 = call i32 @regw(i32 %14, i32 %15)
  %17 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %5, align 8
  %18 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DFCMEM1, align 4
  %25 = call i32 @regw(i32 %23, i32 %24)
  %26 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %5, align 8
  %27 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DFCMEM2, align 4
  %34 = call i32 @regw(i32 %32, i32 %33)
  %35 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %5, align 8
  %36 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DFCMEM3, align 4
  %43 = call i32 @regw(i32 %41, i32 %42)
  %44 = load %struct.ccdc_vertical_dft*, %struct.ccdc_vertical_dft** %5, align 8
  %45 = getelementptr inbounds %struct.ccdc_vertical_dft, %struct.ccdc_vertical_dft* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DFCMEM4, align 4
  %52 = call i32 @regw(i32 %50, i32 %51)
  %53 = load i32, i32* @DFCMEMCTL, align 4
  %54 = call i32 @regr(i32 %53)
  %55 = load i32, i32* @CCDC_DFCMEMCTL_DFCMWR_MASK, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @DFCMEMCTL, align 4
  %59 = call i32 @regw(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %66, %2
  %61 = load i32, i32* @DFCMEMCTL, align 4
  %62 = call i32 @regr(i32 %61)
  %63 = load i32, i32* @CCDC_DFCMEMCTL_DFCMWR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  br label %60

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccdc_cfg, i32 0, i32 0), align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @regr(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
