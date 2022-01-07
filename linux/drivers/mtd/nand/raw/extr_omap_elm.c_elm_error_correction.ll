; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_error_correction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_error_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elm_info = type { i32 }
%struct.elm_errorvec = type { i32, i32*, i32, i64 }

@ELM_LOCATION_STATUS = common dso_local global i32 0, align 4
@ERROR_LOCATION_SIZE = common dso_local global i32 0, align 4
@ECC_CORRECTABLE_MASK = common dso_local global i32 0, align 4
@ELM_ERROR_LOCATION_0 = common dso_local global i32 0, align 4
@ECC_NB_ERRORS_MASK = common dso_local global i32 0, align 4
@ECC_ERROR_LOCATION_MASK = common dso_local global i32 0, align 4
@ELM_IRQSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elm_info*, %struct.elm_errorvec*)* @elm_error_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elm_error_correction(%struct.elm_info* %0, %struct.elm_errorvec* %1) #0 {
  %3 = alloca %struct.elm_info*, align 8
  %4 = alloca %struct.elm_errorvec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elm_info* %0, %struct.elm_info** %3, align 8
  store %struct.elm_errorvec* %1, %struct.elm_errorvec** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %106, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %13 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %109

16:                                               ; preds = %10
  %17 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %17, i64 %19
  %21 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %16
  %25 = load i32, i32* @ELM_LOCATION_STATUS, align 4
  %26 = load i32, i32* @ERROR_LOCATION_SIZE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @elm_read_reg(%struct.elm_info* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ECC_CORRECTABLE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %24
  %38 = load i32, i32* @ELM_ERROR_LOCATION_0, align 4
  %39 = load i32, i32* @ERROR_LOCATION_SIZE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ECC_NB_ERRORS_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %46, i64 %48
  %50 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %78, %37
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %53, i64 %55
  %57 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %52, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %51
  %61 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @elm_read_reg(%struct.elm_info* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ECC_ERROR_LOCATION_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %67, i64 %69
  %71 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %66, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %51

81:                                               ; preds = %51
  %82 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %82, i64 %84
  %86 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %96

90:                                               ; preds = %24
  %91 = load %struct.elm_errorvec*, %struct.elm_errorvec** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %91, i64 %93
  %95 = getelementptr inbounds %struct.elm_errorvec, %struct.elm_errorvec* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %81
  %97 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %98 = load i32, i32* @ELM_IRQSTATUS, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = call i32 @elm_write_reg(%struct.elm_info* %97, i32 %98, i32 %100)
  %102 = load %struct.elm_info*, %struct.elm_info** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @elm_configure_page_mode(%struct.elm_info* %102, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %96, %16
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %10

109:                                              ; preds = %10
  ret void
}

declare dso_local i32 @elm_read_reg(%struct.elm_info*, i32) #1

declare dso_local i32 @elm_write_reg(%struct.elm_info*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @elm_configure_page_mode(%struct.elm_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
