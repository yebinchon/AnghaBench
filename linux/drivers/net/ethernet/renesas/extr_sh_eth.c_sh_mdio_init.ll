; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_eth_private = type { %struct.TYPE_5__*, i64*, i64, %struct.platform_device* }
%struct.TYPE_5__ = type { i8*, i64*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i8*, i32, %struct.device }
%struct.sh_eth_plat_data = type { i64, i64, i32 }
%struct.bb_info = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIR = common dso_local global i64 0, align 8
@bb_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sh_mii\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_eth_private*, %struct.sh_eth_plat_data*)* @sh_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mdio_init(%struct.sh_eth_private* %0, %struct.sh_eth_plat_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca %struct.sh_eth_plat_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bb_info*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.sh_eth_private* %0, %struct.sh_eth_private** %4, align 8
  store %struct.sh_eth_plat_data* %1, %struct.sh_eth_plat_data** %5, align 8
  %10 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %11 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %10, i32 0, i32 3
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %8, align 8
  %13 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %13, i32 0, i32 3
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 2
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bb_info* @devm_kzalloc(%struct.device* %17, i32 24, i32 %18)
  store %struct.bb_info* %19, %struct.bb_info** %7, align 8
  %20 = load %struct.bb_info*, %struct.bb_info** %7, align 8
  %21 = icmp ne %struct.bb_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %116

25:                                               ; preds = %2
  %26 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %27 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %30 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @PIR, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %28, %34
  %36 = load %struct.bb_info*, %struct.bb_info** %7, align 8
  %37 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %5, align 8
  %39 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bb_info*, %struct.bb_info** %7, align 8
  %42 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bb_info*, %struct.bb_info** %7, align 8
  %44 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32* @bb_ops, i32** %45, align 8
  %46 = load %struct.bb_info*, %struct.bb_info** %7, align 8
  %47 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %46, i32 0, i32 0
  %48 = call %struct.TYPE_5__* @alloc_mdio_bitbang(%struct.TYPE_6__* %47)
  %49 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %50 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %49, i32 0, i32 0
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %52 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %25
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %116

58:                                               ; preds = %25
  %59 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %60 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %62, align 8
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %65 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  store %struct.device* %63, %struct.device** %67, align 8
  %68 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %69 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %74 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snprintf(i32 %72, i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %79)
  %81 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %5, align 8
  %82 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %58
  %86 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %5, align 8
  %87 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %90 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %5, align 8
  %95 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %88, i64* %97, align 8
  br label %98

98:                                               ; preds = %85, %58
  %99 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %100 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load %struct.device*, %struct.device** %9, align 8
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @of_mdiobus_register(%struct.TYPE_5__* %101, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %110

109:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %116

110:                                              ; preds = %108
  %111 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %112 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = call i32 @free_mdio_bitbang(%struct.TYPE_5__* %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %109, %55, %22
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.bb_info* @devm_kzalloc(%struct.device*, i32, i32) #1

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
