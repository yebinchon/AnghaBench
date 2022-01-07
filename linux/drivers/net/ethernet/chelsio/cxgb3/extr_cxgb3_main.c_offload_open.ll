; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_offload_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_offload_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_6__**, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.t3cdev = type { %struct.TYPE_6__* }

@PORT_MASK = common dso_local global i32 0, align 4
@OFFLOAD_DEVMAP_BIT = common dso_local global i32 0, align 4
@offload_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot create sysfs group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @offload_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offload_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.t3cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.port_info* @netdev_priv(%struct.net_device* %9)
  store %struct.port_info* %10, %struct.port_info** %4, align 8
  %11 = load %struct.port_info*, %struct.port_info** %4, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 0
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.t3cdev* @dev2t3cdev(%struct.net_device* %14)
  store %struct.t3cdev* %15, %struct.t3cdev** %6, align 8
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PORT_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @OFFLOAD_DEVMAP_BIT, align 4
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = call i64 @test_and_set_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = call i32 @cxgb_up(%struct.adapter* %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %99

35:                                               ; preds = %30, %27
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = call i32 @t3_tp_set_offload_mode(%struct.adapter* %36, i32 1)
  %38 = load %struct.adapter*, %struct.adapter** %5, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.t3cdev*, %struct.t3cdev** %6, align 8
  %44 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %43, i32 0, i32 0
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = call i32 @cxgb3_offload_activate(%struct.adapter* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %99

50:                                               ; preds = %35
  %51 = load %struct.adapter*, %struct.adapter** %5, align 8
  %52 = call i32 @init_port_mtus(%struct.adapter* %51)
  %53 = load %struct.adapter*, %struct.adapter** %5, align 8
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.adapter*, %struct.adapter** %5, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.adapter*, %struct.adapter** %5, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.adapter*, %struct.adapter** %5, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %50
  %72 = load %struct.adapter*, %struct.adapter** %5, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %79, %71
  %81 = phi i32 [ %78, %71 ], [ 65535, %79 ]
  %82 = call i32 @t3_load_mtus(%struct.adapter* %53, i32 %57, i32 %61, i32 %65, i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %5, align 8
  %84 = call i32 @init_smt(%struct.adapter* %83)
  %85 = load %struct.t3cdev*, %struct.t3cdev** %6, align 8
  %86 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i64 @sysfs_create_group(i32* %89, i32* @offload_attr_group)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = call i32 @dev_dbg(i32* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %80
  %97 = load %struct.t3cdev*, %struct.t3cdev** %6, align 8
  %98 = call i32 @cxgb3_add_clients(%struct.t3cdev* %97)
  br label %99

99:                                               ; preds = %96, %49, %34
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.adapter*, %struct.adapter** %5, align 8
  %104 = call i32 @t3_tp_set_offload_mode(%struct.adapter* %103, i32 0)
  %105 = load i32, i32* @OFFLOAD_DEVMAP_BIT, align 4
  %106 = load %struct.adapter*, %struct.adapter** %5, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = call i32 @clear_bit(i32 %105, i32* %107)
  %109 = load %struct.t3cdev*, %struct.t3cdev** %6, align 8
  %110 = call i32 @cxgb3_set_dummy_ops(%struct.t3cdev* %109)
  br label %111

111:                                              ; preds = %102, %99
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %26
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.t3cdev* @dev2t3cdev(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cxgb_up(%struct.adapter*) #1

declare dso_local i32 @t3_tp_set_offload_mode(%struct.adapter*, i32) #1

declare dso_local i32 @cxgb3_offload_activate(%struct.adapter*) #1

declare dso_local i32 @init_port_mtus(%struct.adapter*) #1

declare dso_local i32 @t3_load_mtus(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @init_smt(%struct.adapter*) #1

declare dso_local i64 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cxgb3_add_clients(%struct.t3cdev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cxgb3_set_dummy_ops(%struct.t3cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
