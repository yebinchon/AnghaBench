; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_e4000.c_e4000_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_e4000.c_e4000_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e4000_dev = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\01\FE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \01\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\7F\07\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e4000_dev*)* @e4000_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e4000_init(%struct.e4000_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e4000_dev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.e4000_dev* %0, %struct.e4000_dev** %3, align 8
  %6 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %7 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %13 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_write(i32 %14, i32 0, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %110

19:                                               ; preds = %1
  %20 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %21 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_write(i32 %22, i32 6, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %110

27:                                               ; preds = %19
  %28 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %29 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_write(i32 %30, i32 122, i32 150)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %37 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_bulk_write(i32 %38, i32 126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %110

43:                                               ; preds = %35
  %44 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %45 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regmap_write(i32 %46, i32 130, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %110

51:                                               ; preds = %43
  %52 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %53 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regmap_write(i32 %54, i32 36, i32 5)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %110

59:                                               ; preds = %51
  %60 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %61 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_bulk_write(i32 %62, i32 135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %110

67:                                               ; preds = %59
  %68 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %69 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regmap_bulk_write(i32 %70, i32 159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %110

75:                                               ; preds = %67
  %76 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %77 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @regmap_write(i32 %78, i32 45, i32 31)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %110

83:                                               ; preds = %75
  %84 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %85 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regmap_bulk_write(i32 %86, i32 112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %110

91:                                               ; preds = %83
  %92 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %93 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @regmap_write(i32 %94, i32 26, i32 23)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %110

99:                                               ; preds = %91
  %100 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %101 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @regmap_write(i32 %102, i32 31, i32 26)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %110

107:                                              ; preds = %99
  %108 = load %struct.e4000_dev*, %struct.e4000_dev** %3, align 8
  %109 = getelementptr inbounds %struct.e4000_dev, %struct.e4000_dev* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  store i32 0, i32* %2, align 4
  br label %116

110:                                              ; preds = %106, %98, %90, %82, %74, %66, %58, %50, %42, %34, %26, %18
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
