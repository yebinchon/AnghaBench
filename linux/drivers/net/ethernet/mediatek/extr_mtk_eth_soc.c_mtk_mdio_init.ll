; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_6__*, %struct.mtk_eth*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mdio-bus\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no %s child node found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@mtk_mdio_read = common dso_local global i32 0, align 4
@mtk_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdio_init(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %6 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.device_node* @of_get_child_by_name(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @dev_err(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_device_is_available(%struct.device_node* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %82

28:                                               ; preds = %21
  %29 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call %struct.TYPE_5__* @devm_mdiobus_alloc(%struct.TYPE_6__* %31)
  %33 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %34 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %33, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %82

42:                                               ; preds = %28
  %43 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = load i32, i32* @mtk_mdio_read, align 4
  %48 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @mtk_mdio_write, align 4
  %53 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %54 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 8
  %57 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %58 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %59 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store %struct.mtk_eth* %57, %struct.mtk_eth** %61, align 8
  %62 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %66 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %68, align 8
  %69 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %70 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i32 @snprintf(i32 %73, i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %75)
  %77 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %78 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i32 @of_mdiobus_register(%struct.TYPE_5__* %79, %struct.device_node* %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %42, %39, %25
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.TYPE_5__* @devm_mdiobus_alloc(%struct.TYPE_6__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.device_node*) #1

declare dso_local i32 @of_mdiobus_register(%struct.TYPE_5__*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
