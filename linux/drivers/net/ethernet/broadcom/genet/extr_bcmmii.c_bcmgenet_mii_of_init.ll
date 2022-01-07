; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.phy_device = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid PHY mode property\0A\00", align 1
@PHY_INTERFACE_MODE_INTERNAL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MOCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_mii_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_mii_of_init(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_parse_phandle(%struct.device_node* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %21 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %22 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i64 @of_phy_is_fixed_link(%struct.device_node* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32 @of_phy_register_fixed_link(%struct.device_node* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @of_node_get(%struct.device_node* %39)
  %41 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %27, %1
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i32 @of_get_phy_mode(%struct.device_node* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %82

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %55 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %57 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PHY_INTERFACE_MODE_INTERNAL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %63 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PHY_INTERFACE_MODE_MOCA, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = call %struct.phy_device* @of_phy_find_device(%struct.device_node* %69)
  store %struct.phy_device* %70, %struct.phy_device** %6, align 8
  %71 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %72 = icmp ne %struct.phy_device* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @put_device(i32* %78)
  br label %80

80:                                               ; preds = %73, %68
  br label %81

81:                                               ; preds = %80, %64
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %48, %36
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.phy_device* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
