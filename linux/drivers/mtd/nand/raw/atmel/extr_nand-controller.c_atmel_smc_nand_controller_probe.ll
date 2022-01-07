; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_controller_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_controller_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.atmel_nand_controller_caps = type { i32 }
%struct.atmel_smc_nand_controller = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.atmel_nand_controller_caps*)* @atmel_smc_nand_controller_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_smc_nand_controller_probe(%struct.platform_device* %0, %struct.atmel_nand_controller_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.atmel_nand_controller_caps*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.atmel_smc_nand_controller*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.atmel_nand_controller_caps* %1, %struct.atmel_nand_controller_caps** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.atmel_smc_nand_controller* @devm_kzalloc(%struct.device* %11, i32 4, i32 %12)
  store %struct.atmel_smc_nand_controller* %13, %struct.atmel_smc_nand_controller** %7, align 8
  %14 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %7, align 8
  %15 = icmp ne %struct.atmel_smc_nand_controller* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %2
  %20 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %7, align 8
  %21 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %20, i32 0, i32 0
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = load %struct.atmel_nand_controller_caps*, %struct.atmel_nand_controller_caps** %5, align 8
  %24 = call i32 @atmel_nand_controller_init(i32* %21, %struct.platform_device* %22, %struct.atmel_nand_controller_caps* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %7, align 8
  %31 = call i32 @atmel_smc_nand_controller_init(%struct.atmel_smc_nand_controller* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.atmel_smc_nand_controller*, %struct.atmel_smc_nand_controller** %7, align 8
  %38 = getelementptr inbounds %struct.atmel_smc_nand_controller, %struct.atmel_smc_nand_controller* %37, i32 0, i32 0
  %39 = call i32 @atmel_nand_controller_add_nands(i32* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %34, %27, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.atmel_smc_nand_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @atmel_nand_controller_init(i32*, %struct.platform_device*, %struct.atmel_nand_controller_caps*) #1

declare dso_local i32 @atmel_smc_nand_controller_init(%struct.atmel_smc_nand_controller*) #1

declare dso_local i32 @atmel_nand_controller_add_nands(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
