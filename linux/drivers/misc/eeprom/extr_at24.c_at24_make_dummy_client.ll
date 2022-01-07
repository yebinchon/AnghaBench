; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_make_dummy_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_make_dummy_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i64, i32, %struct.device }
%struct.device = type { i32 }
%struct.regmap_config = type { i32 }
%struct.i2c_client = type { i64, i32, %struct.device }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at24_data*, i32, %struct.regmap_config*)* @at24_make_dummy_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at24_make_dummy_client(%struct.at24_data* %0, i32 %1, %struct.regmap_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.at24_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.at24_data* %0, %struct.at24_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regmap_config* %2, %struct.regmap_config** %7, align 8
  %12 = load %struct.at24_data*, %struct.at24_data** %5, align 8
  %13 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  %18 = bitcast %struct.regmap* %17 to %struct.i2c_client*
  store %struct.i2c_client* %18, %struct.i2c_client** %8, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load %struct.device*, %struct.device** %11, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call %struct.regmap* @devm_i2c_new_dummy_device(%struct.device* %21, i32 %24, i64 %30)
  %32 = bitcast %struct.regmap* %31 to %struct.i2c_client*
  store %struct.i2c_client* %32, %struct.i2c_client** %9, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %34 = bitcast %struct.i2c_client* %33 to %struct.regmap*
  %35 = call i64 @IS_ERR(%struct.regmap* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %39 = bitcast %struct.i2c_client* %38 to %struct.regmap*
  %40 = call i32 @PTR_ERR(%struct.regmap* %39)
  store i32 %40, i32* %4, align 4
  br label %70

41:                                               ; preds = %3
  %42 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %43 = bitcast %struct.i2c_client* %42 to %struct.regmap*
  %44 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %45 = call %struct.regmap* @devm_regmap_init_i2c(%struct.regmap* %43, %struct.regmap_config* %44)
  store %struct.regmap* %45, %struct.regmap** %10, align 8
  %46 = load %struct.regmap*, %struct.regmap** %10, align 8
  %47 = call i64 @IS_ERR(%struct.regmap* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.regmap*, %struct.regmap** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.regmap* %50)
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %41
  %53 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %54 = bitcast %struct.i2c_client* %53 to %struct.regmap*
  %55 = load %struct.at24_data*, %struct.at24_data** %5, align 8
  %56 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store %struct.regmap* %54, %struct.regmap** %61, align 8
  %62 = load %struct.regmap*, %struct.regmap** %10, align 8
  %63 = load %struct.at24_data*, %struct.at24_data** %5, align 8
  %64 = getelementptr inbounds %struct.at24_data, %struct.at24_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.regmap* %62, %struct.regmap** %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %52, %49, %37
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.regmap* @devm_i2c_new_dummy_device(%struct.device*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.regmap*, %struct.regmap_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
