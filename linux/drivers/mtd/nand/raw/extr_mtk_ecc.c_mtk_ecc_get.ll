; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_ecc* (%struct.device_node*)* @mtk_ecc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_ecc* @mtk_ecc_get(%struct.device_node* %0) #0 {
  %2 = alloca %struct.mtk_ecc*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mtk_ecc*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %6)
  store %struct.platform_device* %7, %struct.platform_device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = icmp ne %struct.platform_device* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPROBE_DEFER, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.mtk_ecc* @ERR_PTR(i32 %12)
  store %struct.mtk_ecc* %13, %struct.mtk_ecc** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = call %struct.mtk_ecc* @platform_get_drvdata(%struct.platform_device* %15)
  store %struct.mtk_ecc* %16, %struct.mtk_ecc** %5, align 8
  %17 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %18 = icmp ne %struct.mtk_ecc* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @put_device(i32* %21)
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mtk_ecc* @ERR_PTR(i32 %24)
  store %struct.mtk_ecc* %25, %struct.mtk_ecc** %2, align 8
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  %31 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  %32 = call i32 @mtk_ecc_hw_init(%struct.mtk_ecc* %31)
  %33 = load %struct.mtk_ecc*, %struct.mtk_ecc** %5, align 8
  store %struct.mtk_ecc* %33, %struct.mtk_ecc** %2, align 8
  br label %34

34:                                               ; preds = %26, %19, %10
  %35 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  ret %struct.mtk_ecc* %35
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.mtk_ecc* @ERR_PTR(i32) #1

declare dso_local %struct.mtk_ecc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mtk_ecc_hw_init(%struct.mtk_ecc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
