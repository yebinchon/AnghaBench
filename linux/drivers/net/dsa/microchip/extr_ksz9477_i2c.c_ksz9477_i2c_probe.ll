; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477_i2c.c_ksz9477_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477_i2c.c_ksz9477_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32* }
%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.ksz_device = type { i64, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ksz9477_regmap_config = common dso_local global %struct.regmap_config* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize regmap%i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ksz9477_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap_config, align 8
  %7 = alloca %struct.ksz_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call %struct.ksz_device* @ksz_switch_alloc(%struct.TYPE_3__* %11, %struct.i2c_client* %12)
  store %struct.ksz_device* %13, %struct.ksz_device** %7, align 8
  %14 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %15 = icmp ne %struct.ksz_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %100

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %73, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.regmap_config*, %struct.regmap_config** @ksz9477_regmap_config, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.regmap_config* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = load %struct.regmap_config*, %struct.regmap_config** @ksz9477_regmap_config, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %26, i64 %28
  %30 = bitcast %struct.regmap_config* %6 to i8*
  %31 = bitcast %struct.regmap_config* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %33 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %6, i32 0, i32 1
  store i32* %33, i32** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %35, %struct.regmap_config* %6)
  %37 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %38 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %44 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %25
  %53 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %54 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load %struct.regmap_config*, %struct.regmap_config** @ksz9477_regmap_config, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %63, i64 %65
  %67 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dev_err(%struct.TYPE_3__* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %100

72:                                               ; preds = %25
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %20

76:                                               ; preds = %20
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %88 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %91 = call i32 @ksz9477_switch_register(%struct.ksz_device* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %100

96:                                               ; preds = %89
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %99 = call i32 @i2c_set_clientdata(%struct.i2c_client* %97, %struct.ksz_device* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %94, %52, %16
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.ksz_device* @ksz_switch_alloc(%struct.TYPE_3__*, %struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.regmap_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @ksz9477_switch_register(%struct.ksz_device*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ksz_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
