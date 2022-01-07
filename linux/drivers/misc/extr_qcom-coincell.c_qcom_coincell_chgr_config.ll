; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_qcom-coincell.c_qcom_coincell_chgr_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_qcom-coincell.c_qcom_coincell_chgr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_coincell = type { i64, i32, i32 }

@QCOM_COINCELL_REG_ENABLE = common dso_local global i64 0, align 8
@qcom_rset_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"invalid rset-ohms value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qcom_vset_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid vset-millivolts value %d\0A\00", align 1
@QCOM_COINCELL_REG_RSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"could not write to RSET register\0A\00", align 1
@QCOM_COINCELL_REG_VSET = common dso_local global i64 0, align 8
@QCOM_COINCELL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_coincell*, i32, i32, i32)* @qcom_coincell_chgr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_coincell_chgr_config(%struct.qcom_coincell* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_coincell*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qcom_coincell* %0, %struct.qcom_coincell** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %4
  %16 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %17 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %20 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @QCOM_COINCELL_REG_ENABLE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @regmap_write(i32 %18, i64 %23, i32 0)
  store i32 %24, i32* %5, align 4
  br label %134

25:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** @qcom_rset_map, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** @qcom_rset_map, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %26

44:                                               ; preds = %39, %26
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** @qcom_rset_map, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %51 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %134

57:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** @qcom_vset_map, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** @qcom_vset_map, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %58

76:                                               ; preds = %71, %58
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** @qcom_vset_map, align 8
  %79 = call i32 @ARRAY_SIZE(i32* %78)
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %83 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, ...) @dev_err(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %134

89:                                               ; preds = %76
  %90 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %91 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %94 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QCOM_COINCELL_REG_RSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @regmap_write(i32 %92, i64 %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %89
  %103 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %104 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %134

108:                                              ; preds = %89
  %109 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %110 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %113 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @QCOM_COINCELL_REG_VSET, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @regmap_write(i32 %111, i64 %116, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %5, align 4
  br label %134

123:                                              ; preds = %108
  %124 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %125 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.qcom_coincell*, %struct.qcom_coincell** %6, align 8
  %128 = getelementptr inbounds %struct.qcom_coincell, %struct.qcom_coincell* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @QCOM_COINCELL_REG_ENABLE, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* @QCOM_COINCELL_ENABLE, align 4
  %133 = call i32 @regmap_write(i32 %126, i64 %131, i32 %132)
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %123, %121, %102, %81, %49, %15
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
