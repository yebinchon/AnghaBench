; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { %struct.TYPE_4__*, i32*, %struct.device*, i64 }
%struct.TYPE_4__ = type { i32*, %struct.vsc73xx* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get RESET GPIO\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Chip seems to be out of control. Assert reset and try again.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"no chip found (%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"MAC for control frames: %02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vsc73xx_ds_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to register switch (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsc73xx_probe(%struct.vsc73xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsc73xx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.vsc73xx* %0, %struct.vsc73xx** %3, align 8
  %6 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %7 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %11 = call i64 @devm_gpiod_get_optional(%struct.device* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %13 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %15 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @IS_ERR(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %23 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @PTR_ERR(i64 %24)
  store i32 %25, i32* %2, align 4
  br label %149

26:                                               ; preds = %1
  %27 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %28 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @msleep(i32 20)
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %35 = call i32 @vsc73xx_detect(%struct.vsc73xx* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %42 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %41, i32 0, i32 2
  %43 = load %struct.device*, %struct.device** %42, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %46 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @gpiod_set_value_cansleep(i64 %47, i32 1)
  %49 = call i32 @usleep_range(i32 10, i32 100)
  %50 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %51 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gpiod_set_value_cansleep(i64 %52, i32 0)
  %54 = call i32 @msleep(i32 20)
  %55 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %56 = call i32 @vsc73xx_detect(%struct.vsc73xx* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %40, %33
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %149

66:                                               ; preds = %57
  %67 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %68 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @eth_random_addr(i32* %69)
  %71 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %72 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %71, i32 0, i32 2
  %73 = load %struct.device*, %struct.device** %72, align 8
  %74 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %75 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %80 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %85 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %90 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %95 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %100 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_info(%struct.device* %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %83, i32 %88, i32 %93, i32 %98, i32 %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call %struct.TYPE_4__* @dsa_switch_alloc(%struct.device* %105, i32 8)
  %107 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %108 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %107, i32 0, i32 0
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %108, align 8
  %109 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %110 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %66
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %149

116:                                              ; preds = %66
  %117 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %118 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %119 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store %struct.vsc73xx* %117, %struct.vsc73xx** %121, align 8
  %122 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %123 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32* @vsc73xx_ds_ops, i32** %125, align 8
  %126 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %127 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = call i32 @dsa_register_switch(%struct.TYPE_4__* %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %116
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %2, align 4
  br label %149

137:                                              ; preds = %116
  %138 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %139 = call i32 @vsc73xx_gpio_probe(%struct.vsc73xx* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %144 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = call i32 @dsa_unregister_switch(%struct.TYPE_4__* %145)
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %149

148:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %142, %132, %113, %60, %19
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vsc73xx_detect(%struct.vsc73xx*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @eth_random_addr(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local i32 @dsa_register_switch(%struct.TYPE_4__*) #1

declare dso_local i32 @vsc73xx_gpio_probe(%struct.vsc73xx*) #1

declare dso_local i32 @dsa_unregister_switch(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
