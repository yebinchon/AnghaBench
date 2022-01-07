; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_altera-sysmgr.c_altr_sysmgr_regmap_lookup_by_phandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_altera-sysmgr.c_altr_sysmgr_regmap_lookup_by_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.altr_sysmgr = type { %struct.regmap* }

@ENODEV = common dso_local global i32 0, align 4
@altr_sysmgr_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @altr_sysmgr_regmap_lookup_by_phandle(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.altr_sysmgr*, align 8
  %8 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %12, i8* %13, i32 0)
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.device_node*, %struct.device_node** %8, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.regmap* @ERR_PTR(i32 %22)
  store %struct.regmap* %23, %struct.regmap** %3, align 8
  br label %42

24:                                               ; preds = %17
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = bitcast %struct.device_node* %25 to i8*
  %27 = call %struct.device* @driver_find_device_by_of_node(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @altr_sysmgr_driver, i32 0, i32 0), i8* %26)
  store %struct.device* %27, %struct.device** %6, align 8
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = call i32 @of_node_put(%struct.device_node* %28)
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EPROBE_DEFER, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.regmap* @ERR_PTR(i32 %34)
  store %struct.regmap* %35, %struct.regmap** %3, align 8
  br label %42

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call %struct.altr_sysmgr* @dev_get_drvdata(%struct.device* %37)
  store %struct.altr_sysmgr* %38, %struct.altr_sysmgr** %7, align 8
  %39 = load %struct.altr_sysmgr*, %struct.altr_sysmgr** %7, align 8
  %40 = getelementptr inbounds %struct.altr_sysmgr, %struct.altr_sysmgr* %39, i32 0, i32 0
  %41 = load %struct.regmap*, %struct.regmap** %40, align 8
  store %struct.regmap* %41, %struct.regmap** %3, align 8
  br label %42

42:                                               ; preds = %36, %32, %20
  %43 = load %struct.regmap*, %struct.regmap** %3, align 8
  ret %struct.regmap* %43
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.device* @driver_find_device_by_of_node(i32*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.altr_sysmgr* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
