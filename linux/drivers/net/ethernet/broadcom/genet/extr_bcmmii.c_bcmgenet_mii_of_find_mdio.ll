; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_of_find_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_of_find_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.bcmgenet_priv = type { %struct.device_node*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"brcm,genet-mdio-v%d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to find MDIO bus node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.bcmgenet_priv*)* @bcmgenet_mii_of_find_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @bcmgenet_mii_of_find_mdio(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @kasprintf(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %44

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct.device_node* @of_get_compatible_child(%struct.device_node* %26, i8* %27)
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %29, i32 0, i32 0
  store %struct.device_node* %28, %struct.device_node** %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @kfree(i8* %31)
  %33 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %34 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %33, i32 0, i32 0
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %41, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  store %struct.device_node* %43, %struct.device_node** %2, align 8
  br label %44

44:                                               ; preds = %40, %37, %24
  %45 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %45
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_get_compatible_child(%struct.device_node*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
