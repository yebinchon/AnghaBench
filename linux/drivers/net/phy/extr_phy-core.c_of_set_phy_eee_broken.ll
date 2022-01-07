; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_of_set_phy_eee_broken.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_of_set_phy_eee_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_OF_MDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"eee-broken-100tx\00", align 1
@MDIO_EEE_100TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"eee-broken-1000t\00", align 1
@MDIO_EEE_1000T = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"eee-broken-10gt\00", align 1
@MDIO_EEE_10GT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"eee-broken-1000kx\00", align 1
@MDIO_EEE_1000KX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"eee-broken-10gkx4\00", align 1
@MDIO_EEE_10GKX4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"eee-broken-10gkr\00", align 1
@MDIO_EEE_10GKR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @of_set_phy_eee_broken(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @CONFIG_OF_MDIO, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %70

18:                                               ; preds = %14
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i64 @of_property_read_bool(%struct.device_node* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @MDIO_EEE_100TX, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = call i64 @of_property_read_bool(%struct.device_node* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @MDIO_EEE_1000T, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.device_node*, %struct.device_node** %3, align 8
  %36 = call i64 @of_property_read_bool(%struct.device_node* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @MDIO_EEE_10GT, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.device_node*, %struct.device_node** %3, align 8
  %44 = call i64 @of_property_read_bool(%struct.device_node* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MDIO_EEE_1000KX, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.device_node*, %struct.device_node** %3, align 8
  %52 = call i64 @of_property_read_bool(%struct.device_node* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @MDIO_EEE_10GKX4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.device_node*, %struct.device_node** %3, align 8
  %60 = call i64 @of_property_read_bool(%struct.device_node* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @MDIO_EEE_10GKR, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %17, %13
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
