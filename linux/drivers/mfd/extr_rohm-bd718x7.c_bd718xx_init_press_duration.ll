; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rohm-bd718x7.c_bd718xx_init_press_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rohm-bd718x7.c_bd718xx_init_press_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd718xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"rohm,short-press-ms\00", align 1
@BD718XX_REG_PWRONCONFIG0 = common dso_local global i32 0, align 4
@BD718XX_PWRBTN_PRESS_DURATION_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to init pwron short press\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"rohm,long-press-ms\00", align 1
@BD718XX_REG_PWRONCONFIG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to init pwron long press\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd718xx*)* @bd718xx_init_press_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd718xx_init_press_duration(%struct.bd718xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bd718xx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bd718xx* %0, %struct.bd718xx** %3, align 8
  %10 = load %struct.bd718xx*, %struct.bd718xx** %3, align 8
  %11 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @of_property_read_u32(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 250
  %23 = sdiv i32 %22, 500
  %24 = call i32 @min(i32 15, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.bd718xx*, %struct.bd718xx** %3, align 8
  %26 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BD718XX_REG_PWRONCONFIG0, align 4
  %30 = load i32, i32* @BD718XX_PWRBTN_PRESS_DURATION_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %2, align 4
  br label %68

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @of_property_read_u32(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 500
  %50 = sdiv i32 %49, 1000
  %51 = call i32 @min(i32 15, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.bd718xx*, %struct.bd718xx** %3, align 8
  %53 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BD718XX_REG_PWRONCONFIG1, align 4
  %57 = load i32, i32* @BD718XX_PWRBTN_PRESS_DURATION_MASK, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %40
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %62, %35
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
