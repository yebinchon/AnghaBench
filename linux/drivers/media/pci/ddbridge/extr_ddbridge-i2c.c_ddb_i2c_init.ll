; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-i2c.c_ddb_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-i2c.c_ddb_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i64, %struct.ddb_i2c*, %struct.TYPE_6__* }
%struct.ddb_i2c = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.ddb_regmap* }
%struct.ddb_regmap = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@DDB_MAX_LINK = common dso_local global i64 0, align 8
@i2c_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_i2c_init(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ddb_i2c*, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.ddb_regmap*, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %103, %1
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @DDB_MAX_LINK, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %106

16:                                               ; preds = %12
  %17 = load %struct.ddb*, %struct.ddb** %2, align 8
  %18 = getelementptr inbounds %struct.ddb, %struct.ddb* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %103

26:                                               ; preds = %16
  %27 = load %struct.ddb*, %struct.ddb** %2, align 8
  %28 = getelementptr inbounds %struct.ddb, %struct.ddb* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.ddb_regmap*, %struct.ddb_regmap** %34, align 8
  store %struct.ddb_regmap* %35, %struct.ddb_regmap** %11, align 8
  %36 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %37 = icmp ne %struct.ddb_regmap* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %40 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %26
  br label %103

44:                                               ; preds = %38
  %45 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %46 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %99, %44
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %51 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %48
  %57 = load %struct.ddb*, %struct.ddb** %2, align 8
  %58 = getelementptr inbounds %struct.ddb, %struct.ddb* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  br label %99

72:                                               ; preds = %56
  %73 = load %struct.ddb*, %struct.ddb** %2, align 8
  %74 = getelementptr inbounds %struct.ddb, %struct.ddb* %73, i32 0, i32 1
  %75 = load %struct.ddb_i2c*, %struct.ddb_i2c** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %75, i64 %76
  store %struct.ddb_i2c* %77, %struct.ddb_i2c** %9, align 8
  %78 = load %struct.ddb*, %struct.ddb** %2, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %80, %81
  %83 = load i32, i32* @i2c_handler, align 4
  %84 = load %struct.ddb_i2c*, %struct.ddb_i2c** %9, align 8
  %85 = call i32 @ddb_irq_set(%struct.ddb* %78, i64 %79, i64 %82, i32 %83, %struct.ddb_i2c* %84)
  %86 = load %struct.ddb*, %struct.ddb** %2, align 8
  %87 = load %struct.ddb_i2c*, %struct.ddb_i2c** %9, align 8
  %88 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @ddb_i2c_add(%struct.ddb* %86, %struct.ddb_i2c* %87, %struct.ddb_regmap* %88, i64 %89, i64 %90, i64 %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %72
  br label %102

96:                                               ; preds = %72
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %96, %71
  %100 = load i64, i64* %4, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %4, align 8
  br label %48

102:                                              ; preds = %95, %48
  br label %103

103:                                              ; preds = %102, %43, %25
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %7, align 8
  br label %12

106:                                              ; preds = %12
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  store i64 0, i64* %5, align 8
  br label %110

110:                                              ; preds = %124, %109
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load %struct.ddb*, %struct.ddb** %2, align 8
  %116 = getelementptr inbounds %struct.ddb, %struct.ddb* %115, i32 0, i32 1
  %117 = load %struct.ddb_i2c*, %struct.ddb_i2c** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %117, i64 %118
  store %struct.ddb_i2c* %119, %struct.ddb_i2c** %9, align 8
  %120 = load %struct.ddb_i2c*, %struct.ddb_i2c** %9, align 8
  %121 = getelementptr inbounds %struct.ddb_i2c, %struct.ddb_i2c* %120, i32 0, i32 0
  store %struct.i2c_adapter* %121, %struct.i2c_adapter** %10, align 8
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %123 = call i32 @i2c_del_adapter(%struct.i2c_adapter* %122)
  br label %124

124:                                              ; preds = %114
  %125 = load i64, i64* %5, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %5, align 8
  br label %110

127:                                              ; preds = %110
  br label %132

128:                                              ; preds = %106
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.ddb*, %struct.ddb** %2, align 8
  %131 = getelementptr inbounds %struct.ddb, %struct.ddb* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %127
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @ddb_irq_set(%struct.ddb*, i64, i64, i32, %struct.ddb_i2c*) #1

declare dso_local i32 @ddb_i2c_add(%struct.ddb*, %struct.ddb_i2c*, %struct.ddb_regmap*, i64, i64, i64) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
