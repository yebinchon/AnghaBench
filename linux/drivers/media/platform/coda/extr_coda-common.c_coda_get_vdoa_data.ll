; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_get_vdoa_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_get_vdoa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdoa_data = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"fsl,imx6q-vdoa\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vdoa_data* ()* @coda_get_vdoa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vdoa_data* @coda_get_vdoa_data() #0 {
  %1 = alloca %struct.vdoa_data*, align 8
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vdoa_data*, align 8
  store %struct.vdoa_data* null, %struct.vdoa_data** %4, align 8
  %5 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %5, %struct.device_node** %2, align 8
  %6 = load %struct.device_node*, %struct.device_node** %2, align 8
  %7 = icmp ne %struct.device_node* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.vdoa_data* null, %struct.vdoa_data** %1, align 8
  br label %29

9:                                                ; preds = %0
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %10)
  store %struct.platform_device* %11, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = icmp ne %struct.platform_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %25

15:                                               ; preds = %9
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call %struct.vdoa_data* @platform_get_drvdata(%struct.platform_device* %16)
  store %struct.vdoa_data* %17, %struct.vdoa_data** %4, align 8
  %18 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  %19 = icmp ne %struct.vdoa_data* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.vdoa_data* @ERR_PTR(i32 %22)
  store %struct.vdoa_data* %23, %struct.vdoa_data** %4, align 8
  br label %24

24:                                               ; preds = %20, %15
  br label %25

25:                                               ; preds = %24, %14
  %26 = load %struct.device_node*, %struct.device_node** %2, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.vdoa_data*, %struct.vdoa_data** %4, align 8
  store %struct.vdoa_data* %28, %struct.vdoa_data** %1, align 8
  br label %29

29:                                               ; preds = %25, %8
  %30 = load %struct.vdoa_data*, %struct.vdoa_data** %1, align 8
  ret %struct.vdoa_data* %30
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.vdoa_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.vdoa_data* @ERR_PTR(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
