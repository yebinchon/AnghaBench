; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_ecc.c_ingenic_ecc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_ingenic_ecc.c_ingenic_ecc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ingenic_ecc* (%struct.device_node*)* @ingenic_ecc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ingenic_ecc* @ingenic_ecc_get(%struct.device_node* %0) #0 {
  %2 = alloca %struct.ingenic_ecc*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ingenic_ecc*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %6)
  store %struct.platform_device* %7, %struct.platform_device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = icmp ne %struct.platform_device* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = call %struct.ingenic_ecc* @platform_get_drvdata(%struct.platform_device* %11)
  %13 = icmp ne %struct.ingenic_ecc* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ingenic_ecc* @ERR_PTR(i32 %16)
  store %struct.ingenic_ecc* %17, %struct.ingenic_ecc** %2, align 8
  br label %29

18:                                               ; preds = %10
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @get_device(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = call %struct.ingenic_ecc* @platform_get_drvdata(%struct.platform_device* %22)
  store %struct.ingenic_ecc* %23, %struct.ingenic_ecc** %5, align 8
  %24 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %25 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_prepare_enable(i32 %26)
  %28 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  store %struct.ingenic_ecc* %28, %struct.ingenic_ecc** %2, align 8
  br label %29

29:                                               ; preds = %18, %14
  %30 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %2, align 8
  ret %struct.ingenic_ecc* %30
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.ingenic_ecc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ingenic_ecc* @ERR_PTR(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
