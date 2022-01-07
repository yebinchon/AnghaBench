; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_get_plat_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_get_plat_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"mediatek,vpu\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"can't get vpu node\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"vpu pdev failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @vpu_get_plat_device(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_parse_phandle(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.platform_device* null, %struct.platform_device** %2, align 8
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %19)
  store %struct.platform_device* %20, %struct.platform_device** %6, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call i32 @of_node_put(%struct.device_node* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %24 = icmp ne %struct.platform_device* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store %struct.platform_device* null, %struct.platform_device** %2, align 8
  br label %34

32:                                               ; preds = %18
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %33, %struct.platform_device** %2, align 8
  br label %34

34:                                               ; preds = %32, %29, %15
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  ret %struct.platform_device* %35
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
