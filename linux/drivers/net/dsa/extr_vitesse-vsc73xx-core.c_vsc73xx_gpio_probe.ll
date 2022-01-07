; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { %struct.TYPE_5__*, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"VSC%04x\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@vsc73xx_gpio_get = common dso_local global i32 0, align 4
@vsc73xx_gpio_set = common dso_local global i32 0, align 4
@vsc73xx_gpio_direction_input = common dso_local global i32 0, align 4
@vsc73xx_gpio_direction_output = common dso_local global i32 0, align 4
@vsc73xx_gpio_get_direction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to register GPIO chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc73xx*)* @vsc73xx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_gpio_probe(%struct.vsc73xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsc73xx*, align 8
  %4 = alloca i32, align 4
  store %struct.vsc73xx* %0, %struct.vsc73xx** %3, align 8
  %5 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %6 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %10 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @devm_kasprintf(%struct.TYPE_5__* %7, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %14 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 11
  store i32 %12, i32* %15, align 4
  %16 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %17 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %21 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 10
  store i32 %19, i32* %22, align 8
  %23 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %24 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %27 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 9
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %30 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %35 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  store i32 %33, i32* %36, align 8
  %37 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %38 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* @vsc73xx_gpio_get, align 4
  %41 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %42 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @vsc73xx_gpio_set, align 4
  %45 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %46 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* @vsc73xx_gpio_direction_input, align 4
  %49 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %50 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @vsc73xx_gpio_direction_output, align 4
  %53 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %54 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @vsc73xx_gpio_get_direction, align 4
  %57 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %58 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %61 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %64 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %67 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %66, i32 0, i32 1
  %68 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %69 = call i32 @devm_gpiochip_add_data(%struct.TYPE_5__* %65, %struct.TYPE_6__* %67, %struct.vsc73xx* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %1
  %73 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %74 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @dev_err(%struct.TYPE_5__* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @devm_kasprintf(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.vsc73xx*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
