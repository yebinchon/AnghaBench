; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ravb_private = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.platform_device* }
%struct.TYPE_5__ = type { i8*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.platform_device = type { i8*, i32, %struct.device }

@bb_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ravb_mii\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ravb_private*)* @ravb_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_mdio_init(%struct.ravb_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.ravb_private* %0, %struct.ravb_private** %3, align 8
  %7 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %8 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %7, i32 0, i32 2
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %13 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32* @bb_ops, i32** %14, align 8
  %15 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %16 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %15, i32 0, i32 1
  %17 = call %struct.TYPE_5__* @alloc_mdio_bitbang(%struct.TYPE_6__* %16)
  %18 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %19 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %18, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %21 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %1
  %28 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %29 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %34 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store %struct.device* %32, %struct.device** %36, align 8
  %37 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %38 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snprintf(i32 %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %48)
  %50 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %51 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_mdiobus_register(%struct.TYPE_5__* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %27
  br label %61

60:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %67

61:                                               ; preds = %59
  %62 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %63 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = call i32 @free_mdio_bitbang(%struct.TYPE_5__* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %60, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_5__* @alloc_mdio_bitbang(%struct.TYPE_6__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @free_mdio_bitbang(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
