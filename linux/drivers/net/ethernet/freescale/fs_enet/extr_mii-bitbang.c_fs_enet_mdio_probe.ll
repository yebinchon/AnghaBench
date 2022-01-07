; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mii-bitbang.c_fs_enet_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mii-bitbang.c_fs_enet_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mii_bus = type { i8*, %struct.TYPE_3__*, i32 }
%struct.bb_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@bb_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CPM2 Bitbanged MII\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fs_enet_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_mdio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca %struct.bb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bb_info* @kzalloc(i32 16, i32 %9)
  store %struct.bb_info* %10, %struct.bb_info** %5, align 8
  %11 = load %struct.bb_info*, %struct.bb_info** %5, align 8
  %12 = icmp ne %struct.bb_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.bb_info*, %struct.bb_info** %5, align 8
  %16 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* @bb_ops, i32** %17, align 8
  %18 = load %struct.bb_info*, %struct.bb_info** %5, align 8
  %19 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %18, i32 0, i32 1
  %20 = call %struct.mii_bus* @alloc_mdio_bitbang(%struct.TYPE_4__* %19)
  store %struct.mii_bus* %20, %struct.mii_bus** %4, align 8
  %21 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %22 = icmp ne %struct.mii_bus* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %64

24:                                               ; preds = %14
  %25 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %26 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fs_mii_bitbang_init(%struct.mii_bus* %27, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %61

36:                                               ; preds = %24
  %37 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %38 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %42 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %41, i32 0, i32 1
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.mii_bus* %44)
  %46 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @of_mdiobus_register(%struct.mii_bus* %46, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  br label %56

55:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %69

56:                                               ; preds = %54
  %57 = load %struct.bb_info*, %struct.bb_info** %5, align 8
  %58 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @iounmap(i32 %59)
  br label %61

61:                                               ; preds = %56, %35
  %62 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %63 = call i32 @free_mdio_bitbang(%struct.mii_bus* %62)
  br label %64

64:                                               ; preds = %61, %23
  %65 = load %struct.bb_info*, %struct.bb_info** %5, align 8
  %66 = call i32 @kfree(%struct.bb_info* %65)
  br label %67

67:                                               ; preds = %64, %13
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.bb_info* @kzalloc(i32, i32) #1

declare dso_local %struct.mii_bus* @alloc_mdio_bitbang(%struct.TYPE_4__*) #1

declare dso_local i32 @fs_mii_bitbang_init(%struct.mii_bus*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mii_bus*) #1

declare dso_local i32 @of_mdiobus_register(%struct.mii_bus*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_mdio_bitbang(%struct.mii_bus*) #1

declare dso_local i32 @kfree(%struct.bb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
