; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isif_df_csc = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CSCCTL = common dso_local global i64 0, align 8
@ISIF_CSC_NUM_COEFF = common dso_local global i32 0, align 4
@ISIF_CSC_COEF_INTEG_SHIFT = common dso_local global i32 0, align 4
@ISIF_CSCM_MSB_SHIFT = common dso_local global i32 0, align 4
@CSCM0 = common dso_local global i64 0, align 8
@FMTSPH = common dso_local global i64 0, align 8
@FMTLNH = common dso_local global i64 0, align 8
@FMTSLV = common dso_local global i64 0, align 8
@FMTLNV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isif_df_csc*)* @isif_config_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isif_config_csc(%struct.isif_df_csc* %0) #0 {
  %2 = alloca %struct.isif_df_csc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isif_df_csc* %0, %struct.isif_df_csc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %7 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @CSCCTL, align 8
  %13 = call i32 @regw(i32 0, i64 %12)
  br label %108

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %82, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ISIF_CSC_NUM_COEFF, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %25 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ISIF_CSC_COEF_INTEG_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %36 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %34, %43
  store i32 %44, i32* %3, align 4
  br label %81

45:                                               ; preds = %19
  %46 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %47 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ISIF_CSC_COEF_INTEG_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %58 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %56, %65
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @ISIF_CSCM_MSB_SHIFT, align 4
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i64, i64* @CSCM0, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %74, %78
  %80 = call i32 @regw(i32 %73, i64 %79)
  br label %81

81:                                               ; preds = %45, %23
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %15

85:                                               ; preds = %15
  %86 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %87 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* @FMTSPH, align 8
  %90 = call i32 @regw(i32 %88, i64 %89)
  %91 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %92 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @FMTLNH, align 8
  %95 = call i32 @regw(i32 %93, i64 %94)
  %96 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %97 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* @FMTSLV, align 8
  %100 = call i32 @regw(i32 %98, i64 %99)
  %101 = load %struct.isif_df_csc*, %struct.isif_df_csc** %2, align 8
  %102 = getelementptr inbounds %struct.isif_df_csc, %struct.isif_df_csc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* @FMTLNV, align 8
  %105 = call i32 @regw(i32 %103, i64 %104)
  %106 = load i64, i64* @CSCCTL, align 8
  %107 = call i32 @regw(i32 1, i64 %106)
  br label %108

108:                                              ; preds = %85, %11
  ret void
}

declare dso_local i32 @regw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
