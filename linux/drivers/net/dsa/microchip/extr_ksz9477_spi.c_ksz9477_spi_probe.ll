; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477_spi.c_ksz9477_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477_spi.c_ksz9477_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32* }
%struct.spi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ksz_device = type { i64, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ksz9477_regmap_config = common dso_local global %struct.regmap_config* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize regmap%i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ksz9477_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.regmap_config, align 8
  %5 = alloca %struct.ksz_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call %struct.ksz_device* @ksz_switch_alloc(%struct.TYPE_3__* %9, %struct.spi_device* %10)
  store %struct.ksz_device* %11, %struct.ksz_device** %5, align 8
  %12 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %13 = icmp ne %struct.ksz_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.regmap_config*, %struct.regmap_config** @ksz9477_regmap_config, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.regmap_config* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  %24 = load %struct.regmap_config*, %struct.regmap_config** @ksz9477_regmap_config, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %24, i64 %26
  %28 = bitcast %struct.regmap_config* %4 to i8*
  %29 = bitcast %struct.regmap_config* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %31 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 1
  store i32* %31, i32** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = call i32 @devm_regmap_init_spi(%struct.spi_device* %33, %struct.regmap_config* %4)
  %35 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %36 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %42 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %23
  %51 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %52 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = load %struct.regmap_config*, %struct.regmap_config** @ksz9477_regmap_config, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %61, i64 %63
  %65 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(%struct.TYPE_3__* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %98

70:                                               ; preds = %23
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %18

74:                                               ; preds = %18
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %86 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %74
  %88 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %89 = call i32 @ksz9477_switch_register(%struct.ksz_device* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %87
  %95 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %96 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %97 = call i32 @spi_set_drvdata(%struct.spi_device* %95, %struct.ksz_device* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %92, %50, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.ksz_device* @ksz_switch_alloc(%struct.TYPE_3__*, %struct.spi_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.regmap_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @ksz9477_switch_register(%struct.ksz_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ksz_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
