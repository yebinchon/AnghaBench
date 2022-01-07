; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_pm800_pages_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_pm800_pages_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm80x_chip = type { i32, %struct.pm80x_subchip*, %struct.i2c_client* }
%struct.pm80x_subchip = type { i8*, i8*, i32, i8*, i8*, i32 }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@pm80x_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate regmap_power: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate regmap_gpadc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm80x_chip*)* @pm800_pages_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm800_pages_init(%struct.pm80x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm80x_chip*, align 8
  %4 = alloca %struct.pm80x_subchip*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.pm80x_chip* %0, %struct.pm80x_chip** %3, align 8
  %7 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %11 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %10, i32 0, i32 1
  %12 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %11, align 8
  store %struct.pm80x_subchip* %12, %struct.pm80x_subchip** %4, align 8
  %13 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %14 = icmp ne %struct.pm80x_subchip* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %17 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %22 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %125

28:                                               ; preds = %20
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %33 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @i2c_new_dummy_device(i32 %31, i32 %34)
  %36 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %37 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %39 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %45 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %6, align 4
  br label %123

48:                                               ; preds = %28
  %49 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %50 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @devm_regmap_init_i2c(i8* %51, i32* @pm80x_regmap_config)
  %53 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %54 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %56 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %62 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %66 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %123

70:                                               ; preds = %48
  %71 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %72 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %75 = call i32 @i2c_set_clientdata(i8* %73, %struct.pm80x_chip* %74)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %80 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @i2c_new_dummy_device(i32 %78, i32 %81)
  %83 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %84 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %86 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %70
  %91 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %92 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %6, align 4
  br label %123

95:                                               ; preds = %70
  %96 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %97 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @devm_regmap_init_i2c(i8* %98, i32* @pm80x_regmap_config)
  %100 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %101 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %103 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %95
  %108 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %109 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @PTR_ERR(i8* %110)
  store i32 %111, i32* %6, align 4
  %112 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %113 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %123

117:                                              ; preds = %95
  %118 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %4, align 8
  %119 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.pm80x_chip*, %struct.pm80x_chip** %3, align 8
  %122 = call i32 @i2c_set_clientdata(i8* %120, %struct.pm80x_chip* %121)
  br label %123

123:                                              ; preds = %117, %107, %90, %60, %43
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %25
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i8* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_regmap_init_i2c(i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(i8*, %struct.pm80x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
