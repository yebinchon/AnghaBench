; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-common.c_ti_cm_get_macid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-common.c_ti_cm_get_macid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ti,dm8148\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ti,am33xx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ti,am3517-emac\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ti,dm816-emac\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ti,am43\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ti,dra7\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"incompatible machine/device type for reading mac address\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_cm_get_macid(%struct.device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @cpsw_am33xx_cm_get_macid(%struct.device* %11, i32 1584, i32 %12, i32* %13)
  store i32 %14, i32* %4, align 4
  br label %66

15:                                               ; preds = %3
  %16 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @cpsw_am33xx_cm_get_macid(%struct.device* %19, i32 1584, i32 %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @of_device_is_compatible(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @davinci_emac_3517_get_macid(%struct.device* %30, i32 272, i32 %31, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @of_device_is_compatible(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @cpsw_am33xx_cm_get_macid(%struct.device* %41, i32 48, i32 %42, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %34
  %46 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @cpsw_am33xx_cm_get_macid(%struct.device* %49, i32 1584, i32 %50, i32* %51)
  store i32 %52, i32* %4, align 4
  br label %66

53:                                               ; preds = %45
  %54 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @davinci_emac_3517_get_macid(%struct.device* %57, i32 1300, i32 %58, i32* %59)
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %56, %48, %40, %29, %18, %10
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @cpsw_am33xx_cm_get_macid(%struct.device*, i32, i32, i32*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @davinci_emac_3517_get_macid(%struct.device*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
