; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_offload_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_offload_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.adapter = type { i32 }
%struct.t3c_data = type { i32 }

@OFFLOAD_DEVMAP_BIT = common dso_local global i32 0, align 4
@offload_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*)* @offload_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offload_close(%struct.t3cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t3c_data*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  %6 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %7 = call %struct.adapter* @tdev2adap(%struct.t3cdev* %6)
  store %struct.adapter* %7, %struct.adapter** %4, align 8
  %8 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %9 = call %struct.t3c_data* @T3C_DATA(%struct.t3cdev* %8)
  store %struct.t3c_data* %9, %struct.t3c_data** %5, align 8
  %10 = load i32, i32* @OFFLOAD_DEVMAP_BIT, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %18 = call i32 @cxgb3_remove_clients(%struct.t3cdev* %17)
  %19 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %20 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_remove_group(i32* %23, i32* @offload_attr_group)
  %25 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %26 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %25, i32 0, i32 0
  %27 = call i32 @flush_work(i32* %26)
  %28 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %29 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %28, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %31 = call i32 @cxgb3_set_dummy_ops(%struct.t3cdev* %30)
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = call i32 @t3_tp_set_offload_mode(%struct.adapter* %32, i32 0)
  %34 = load i32, i32* @OFFLOAD_DEVMAP_BIT, align 4
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %16
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = call i32 @cxgb_down(%struct.adapter* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %16
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = call i32 @cxgb3_offload_deactivate(%struct.adapter* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.adapter* @tdev2adap(%struct.t3cdev*) #1

declare dso_local %struct.t3c_data* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cxgb3_remove_clients(%struct.t3cdev*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @cxgb3_set_dummy_ops(%struct.t3cdev*) #1

declare dso_local i32 @t3_tp_set_offload_mode(%struct.adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cxgb_down(%struct.adapter*, i32) #1

declare dso_local i32 @cxgb3_offload_deactivate(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
