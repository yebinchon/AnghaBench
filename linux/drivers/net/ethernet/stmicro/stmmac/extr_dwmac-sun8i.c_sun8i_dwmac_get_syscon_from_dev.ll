; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_get_syscon_from_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_get_syscon_from_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.regmap* (%struct.device_node*)* @sun8i_dwmac_get_syscon_from_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.regmap* @sun8i_dwmac_get_syscon_from_dev(%struct.device_node* %0) #0 {
  %2 = alloca %struct.regmap*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.regmap* null, %struct.regmap** %6, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.regmap* @ERR_PTR(i32 %13)
  store %struct.regmap* %14, %struct.regmap** %2, align 8
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %16)
  store %struct.platform_device* %17, %struct.platform_device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = icmp ne %struct.platform_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.regmap* @ERR_PTR(i32 %22)
  store %struct.regmap* %23, %struct.regmap** %6, align 8
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.regmap* @dev_get_regmap(i32* %26, i32* null)
  store %struct.regmap* %27, %struct.regmap** %6, align 8
  %28 = load %struct.regmap*, %struct.regmap** %6, align 8
  %29 = icmp ne %struct.regmap* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.regmap* @ERR_PTR(i32 %32)
  store %struct.regmap* %33, %struct.regmap** %6, align 8
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = call i32 @platform_device_put(%struct.platform_device* %35)
  br label %37

37:                                               ; preds = %34, %20
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32 @of_node_put(%struct.device_node* %38)
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  store %struct.regmap* %40, %struct.regmap** %2, align 8
  br label %41

41:                                               ; preds = %37, %11
  %42 = load %struct.regmap*, %struct.regmap** %2, align 8
  ret %struct.regmap* %42
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.regmap* @dev_get_regmap(i32*, i32*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
