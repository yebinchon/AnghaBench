; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-spmi-pmic.c_pmic_spmi_show_revid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom-spmi-pmic.c_pmic_spmi_show_revid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }
%struct.regmap = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@PMIC_TYPE = common dso_local global i32 0, align 4
@PMIC_TYPE_VALUE = common dso_local global i32 0, align 4
@PMIC_SUBTYPE = common dso_local global i32 0, align 4
@pmic_spmi_id_table = common dso_local global %struct.TYPE_3__* null, align 8
@PMIC_REV2 = common dso_local global i32 0, align 4
@PMIC_REV3 = common dso_local global i32 0, align 4
@PMIC_REV4 = common dso_local global i32 0, align 4
@PM8941_SUBTYPE = common dso_local global i32 0, align 4
@PM8226_SUBTYPE = common dso_local global i32 0, align 4
@PM8110_SUBTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%x: %s v%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, %struct.device*)* @pmic_spmi_show_revid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmic_spmi_show_revid(%struct.regmap* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %13 = load %struct.regmap*, %struct.regmap** %3, align 8
  %14 = load i32, i32* @PMIC_TYPE, align 4
  %15 = call i32 @regmap_read(%struct.regmap* %13, i32 %14, i32* %8)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %112

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PMIC_TYPE_VALUE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %112

24:                                               ; preds = %19
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = load i32, i32* @PMIC_SUBTYPE, align 4
  %27 = call i32 @regmap_read(%struct.regmap* %25, i32 %26, i32* %9)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %112

31:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmic_spmi_id_table, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmic_spmi_id_table, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %32

52:                                               ; preds = %47, %32
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmic_spmi_id_table, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %54)
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmic_spmi_id_table, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %10, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.regmap*, %struct.regmap** %3, align 8
  %66 = load i32, i32* @PMIC_REV2, align 4
  %67 = call i32 @regmap_read(%struct.regmap* %65, i32 %66, i32* %5)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %112

71:                                               ; preds = %64
  %72 = load %struct.regmap*, %struct.regmap** %3, align 8
  %73 = load i32, i32* @PMIC_REV3, align 4
  %74 = call i32 @regmap_read(%struct.regmap* %72, i32 %73, i32* %6)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %112

78:                                               ; preds = %71
  %79 = load %struct.regmap*, %struct.regmap** %3, align 8
  %80 = load i32, i32* @PMIC_REV4, align 4
  %81 = call i32 @regmap_read(%struct.regmap* %79, i32 %80, i32* %7)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %112

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @PM8941_SUBTYPE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @PM8226_SUBTYPE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %7, align 4
  %95 = icmp ult i32 %94, 2
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %93, %89
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @PM8110_SUBTYPE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %107, i8* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %84, %77, %70, %30, %23, %18
  ret void
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
