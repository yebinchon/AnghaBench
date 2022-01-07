; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-i2c.c_ddb_i2c_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-i2c.c_ddb_i2c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, i32 }
%struct.ddb_i2c = type { i32, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, %struct.ddb* }
%struct.i2c_adapter = type { %struct.TYPE_6__, i8*, i32*, i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.ddb_regmap = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@I2C_SPEED_100 = common dso_local global i32 0, align 4
@I2C_TIMING = common dso_local global i64 0, align 8
@I2C_TASKADDRESS = common dso_local global i64 0, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ddbridge_%02x.%x.%x\00", align 1
@ddb_i2c_algo = common dso_local global i32 0, align 4
@I2C_ADAP_CLASS_TV_DIGITAL = common dso_local global i8* null, align 8
@I2C_CLASS_TV_ANALOG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*, %struct.ddb_i2c*, %struct.ddb_regmap*, i32, i32, i32)* @ddb_i2c_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_i2c_add(%struct.ddb* %0, %struct.ddb_i2c* %1, %struct.ddb_regmap* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ddb*, align 8
  %8 = alloca %struct.ddb_i2c*, align 8
  %9 = alloca %struct.ddb_regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_adapter*, align 8
  store %struct.ddb* %0, %struct.ddb** %7, align 8
  store %struct.ddb_i2c* %1, %struct.ddb_i2c** %8, align 8
  store %struct.ddb_regmap* %2, %struct.ddb_regmap** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %16 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ddb*, %struct.ddb** %7, align 8
  %18 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %19 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %18, i32 0, i32 8
  store %struct.ddb* %17, %struct.ddb** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %22 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ddb_regmap*, %struct.ddb_regmap** %9, align 8
  %24 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %29 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @DDB_LINK_TAG(i32 %30)
  %32 = load %struct.ddb_regmap*, %struct.ddb_regmap** %9, align 8
  %33 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %38 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %36, %41
  %43 = or i32 %31, %42
  %44 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %45 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %47 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %50 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @DDB_LINK_TAG(i32 %51)
  %53 = load %struct.ddb_regmap*, %struct.ddb_regmap** %9, align 8
  %54 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ddb_regmap*, %struct.ddb_regmap** %9, align 8
  %59 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %57, %64
  %66 = or i32 %52, %65
  %67 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %68 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ddb*, %struct.ddb** %7, align 8
  %70 = load i32, i32* @I2C_SPEED_100, align 4
  %71 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %72 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @I2C_TIMING, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @ddbwritel(%struct.ddb* %69, i32 %70, i64 %76)
  %78 = load %struct.ddb*, %struct.ddb** %7, align 8
  %79 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %80 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 65535
  %83 = shl i32 %82, 16
  %84 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %85 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  %88 = or i32 %83, %87
  %89 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %90 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @I2C_TASKADDRESS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @ddbwritel(%struct.ddb* %78, i32 %88, i64 %94)
  %96 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %97 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %96, i32 0, i32 7
  %98 = call i32 @init_completion(i32* %97)
  %99 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %100 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %99, i32 0, i32 6
  store %struct.i2c_adapter* %100, %struct.i2c_adapter** %13, align 8
  %101 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %102 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %103 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %101, %struct.ddb_i2c* %102)
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %105 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @I2C_NAME_SIZE, align 4
  %108 = load %struct.ddb*, %struct.ddb** %7, align 8
  %109 = getelementptr inbounds %struct.ddb, %struct.ddb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %112 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @snprintf(i32 %106, i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %114)
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %117 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %116, i32 0, i32 2
  store i32* @ddb_i2c_algo, i32** %117, align 8
  %118 = load %struct.ddb_i2c*, %struct.ddb_i2c** %8, align 8
  %119 = bitcast %struct.ddb_i2c* %118 to i8*
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %121 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.ddb*, %struct.ddb** %7, align 8
  %123 = getelementptr inbounds %struct.ddb, %struct.ddb* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  %129 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %128)
  ret i32 %129
}

declare dso_local i32 @DDB_LINK_TAG(i32) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.ddb_i2c*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
