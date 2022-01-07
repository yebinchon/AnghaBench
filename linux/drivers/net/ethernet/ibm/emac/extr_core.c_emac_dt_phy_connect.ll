; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_dt_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_dt_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@emac_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to connect to PHY.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@emac_dt_mdio_phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, %struct.device_node*)* @emac_dt_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dt_phy_connect(%struct.emac_instance* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_instance*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %6 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %7 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_12__* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  %12 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %13 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %14, align 8
  %15 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %16 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %29 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_11__* @of_phy_connect(i32 %26, %struct.device_node* %27, i32* @emac_adjust_link, i32 0, i32 %30)
  %32 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %33 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %32, i32 0, i32 0
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %33, align 8
  %34 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %35 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %23
  %39 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %40 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %23
  %47 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %48 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %55 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  store i32 %53, i32* %58, align 8
  %59 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %60 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %67 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 4
  %71 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %72 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %79 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 8
  %83 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %84 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i32* @emac_dt_mdio_phy_ops, i32** %87, align 8
  %88 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %89 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %92 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %90, i32 %95)
  %97 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %98 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %104 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %107 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %112 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %46, %38, %20
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_12__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @of_phy_connect(i32, %struct.device_node*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
