; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.stmfx = type { i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get VDD regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"VDD enable failed: %d\0A\00", align 1
@STMFX_REG_CHIP_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Error reading chip ID: %d\0A\00", align 1
@STMFX_REG_CHIP_ID_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown chip ID: %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STMFX_REG_FW_VERSION_MSB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Error reading FW version: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"STMFX id: %#x, fw version: %x.%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to reset chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @stmfx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_chip_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.stmfx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.stmfx* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.stmfx* %9, %struct.stmfx** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call i32* @devm_regulator_get_optional(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %14 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %16 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @PTR_ERR_OR_ZERO(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %25 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %44

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %140

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %140

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %46 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %51 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @regulator_enable(i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %140

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %65 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @STMFX_REG_CHIP_ID, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %5)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %128

76:                                               ; preds = %63
  %77 = load i32, i32* @STMFX_REG_CHIP_ID_MASK, align 4
  %78 = load i32, i32* %5, align 4
  %79 = xor i32 %78, -1
  %80 = call i32 @FIELD_GET(i32 %77, i32 %79)
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 1
  %85 = icmp ne i32 %80, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %128

93:                                               ; preds = %76
  %94 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %95 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @STMFX_REG_FW_VERSION_MSB, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %100 = call i32 @ARRAY_SIZE(i32* %99)
  %101 = call i32 @regmap_bulk_read(i32 %96, i32 %97, i32* %98, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 1
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %128

109:                                              ; preds = %93
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 1
  %112 = load i32, i32* %5, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_info(i32* %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %114, i32 %116)
  %118 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %119 = call i32 @stmfx_chip_reset(%struct.stmfx* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %128

127:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %140

128:                                              ; preds = %122, %104, %86, %71
  %129 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %130 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %135 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @regulator_disable(i32* %136)
  store i32 %137, i32* %2, align 4
  br label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %133, %127, %56, %36, %31
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.stmfx* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @stmfx_chip_reset(%struct.stmfx*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
