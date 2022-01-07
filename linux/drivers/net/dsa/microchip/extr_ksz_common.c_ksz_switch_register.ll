; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_switch_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_switch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, %struct.ksz_dev_ops*, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ksz_dev_ops = type { i32 (%struct.ksz_device*)*, i32 (%struct.ksz_device*)*, i64 (%struct.ksz_device*)* }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"microchip,synclko-125\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksz_switch_register(%struct.ksz_device* %0, %struct.ksz_dev_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca %struct.ksz_dev_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store %struct.ksz_dev_ops* %1, %struct.ksz_dev_ops** %5, align 8
  %7 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %8 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %7, i32 0, i32 10
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %13 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %12, i32 0, i32 10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %18 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %21 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %24 = call i64 @devm_gpiod_get_optional(%struct.TYPE_4__* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %26 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %25, i32 0, i32 9
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %28 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @IS_ERR(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %34 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PTR_ERR(i64 %35)
  store i32 %36, i32* %3, align 4
  br label %137

37:                                               ; preds = %19
  %38 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %39 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %44 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @gpiod_set_value_cansleep(i64 %45, i32 1)
  %47 = call i32 @mdelay(i32 10)
  %48 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %49 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @gpiod_set_value_cansleep(i64 %50, i32 0)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %54 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %53, i32 0, i32 8
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %57 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %56, i32 0, i32 7
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %60 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %59, i32 0, i32 6
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %63 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %62, i32 0, i32 5
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.ksz_dev_ops*, %struct.ksz_dev_ops** %5, align 8
  %66 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %67 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %66, i32 0, i32 1
  store %struct.ksz_dev_ops* %65, %struct.ksz_dev_ops** %67, align 8
  %68 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %69 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %68, i32 0, i32 1
  %70 = load %struct.ksz_dev_ops*, %struct.ksz_dev_ops** %69, align 8
  %71 = getelementptr inbounds %struct.ksz_dev_ops, %struct.ksz_dev_ops* %70, i32 0, i32 2
  %72 = load i64 (%struct.ksz_device*)*, i64 (%struct.ksz_device*)** %71, align 8
  %73 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %74 = call i64 %72(%struct.ksz_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %52
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %137

79:                                               ; preds = %52
  %80 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %81 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %80, i32 0, i32 1
  %82 = load %struct.ksz_dev_ops*, %struct.ksz_dev_ops** %81, align 8
  %83 = getelementptr inbounds %struct.ksz_dev_ops, %struct.ksz_dev_ops* %82, i32 0, i32 0
  %84 = load i32 (%struct.ksz_device*)*, i32 (%struct.ksz_device*)** %83, align 8
  %85 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %86 = call i32 %84(%struct.ksz_device* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %137

91:                                               ; preds = %79
  %92 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %93 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %91
  %99 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %100 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @of_get_phy_mode(i64 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %110 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %98
  %112 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %113 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %112, i32 0, i32 3
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @of_property_read_bool(i64 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %119 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %111, %91
  %121 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %122 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dsa_register_switch(i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %129 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %128, i32 0, i32 1
  %130 = load %struct.ksz_dev_ops*, %struct.ksz_dev_ops** %129, align 8
  %131 = getelementptr inbounds %struct.ksz_dev_ops, %struct.ksz_dev_ops* %130, i32 0, i32 1
  %132 = load i32 (%struct.ksz_device*)*, i32 (%struct.ksz_device*)** %131, align 8
  %133 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %134 = call i32 %132(%struct.ksz_device* %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %137

136:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %127, %89, %76, %32
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @devm_gpiod_get_optional(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @of_get_phy_mode(i64) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local i32 @dsa_register_switch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
