; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_write_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stimx274 = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.reg_8 = type { i32, i32 }

@IMX274_TABLE_END = common dso_local global i32 0, align 4
@IMX274_TABLE_WAIT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stimx274*, %struct.reg_8*)* @imx274_write_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_write_table(%struct.stimx274* %0, %struct.reg_8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stimx274*, align 8
  %5 = alloca %struct.reg_8*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.stimx274* %0, %struct.stimx274** %4, align 8
  store %struct.reg_8* %1, %struct.reg_8** %5, align 8
  %14 = load %struct.stimx274*, %struct.stimx274** %4, align 8
  %15 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  store %struct.reg_8* %19, %struct.reg_8** %8, align 8
  br label %20

20:                                               ; preds = %104, %2
  %21 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %22 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %30 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IMX274_TABLE_END, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %36 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IMX274_TABLE_WAIT_MS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %40, %34, %28, %20
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.regmap*, %struct.regmap** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = call i32 @regmap_write(%struct.regmap* %48, i32 %49, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %64

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.regmap*, %struct.regmap** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @regmap_bulk_write(%struct.regmap* %57, i32 %58, i32* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %56
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %108

69:                                               ; preds = %64
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %70 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %71 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IMX274_TABLE_END, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %107

76:                                               ; preds = %69
  %77 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %78 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IMX274_TABLE_WAIT_MS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %84 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @msleep_range(i32 %85)
  br label %104

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %40
  %89 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %90 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %96 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %82
  %105 = load %struct.reg_8*, %struct.reg_8** %8, align 8
  %106 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %105, i32 1
  store %struct.reg_8* %106, %struct.reg_8** %8, align 8
  br label %20

107:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %67
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32*, i32) #1

declare dso_local i32 @msleep_range(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
