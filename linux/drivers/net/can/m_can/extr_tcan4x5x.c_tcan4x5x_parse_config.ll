; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_parse_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { i32, %struct.tcan4x5x_priv* }
%struct.tcan4x5x_priv = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"device-wake\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"device-wake gpio not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"device-state\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"vsup\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*)* @tcan4x5x_parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcan4x5x_parse_config(%struct.m_can_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca %struct.tcan4x5x_priv*, align 8
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  %5 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %6 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %5, i32 0, i32 1
  %7 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %6, align 8
  store %struct.tcan4x5x_priv* %7, %struct.tcan4x5x_priv** %4, align 8
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %9 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %12 = call i32* @devm_gpiod_get(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %14 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %16 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %22 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %1
  %28 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %29 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %32 = call i8* @devm_gpiod_get_optional(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %35 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %37 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %43 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %27
  %45 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %46 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GPIOD_IN, align 4
  %49 = call i8* @devm_gpiod_get_optional(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %52 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %54 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @IS_ERR(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %60 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %44
  %62 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %63 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @devm_regulator_get_optional(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %67 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %4, align 8
  %69 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  %72 = load i32, i32* @EPROBE_DEFER, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %75, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32* @devm_gpiod_get(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i32 @devm_regulator_get_optional(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
