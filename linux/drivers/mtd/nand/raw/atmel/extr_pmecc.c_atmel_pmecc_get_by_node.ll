; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_get_by_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_get_by_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@devm_atmel_pmecc_put = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_pmecc* (%struct.device*, %struct.device_node*)* @atmel_pmecc_get_by_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_pmecc* @atmel_pmecc_get_by_node(%struct.device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.atmel_pmecc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.atmel_pmecc*, align 8
  %8 = alloca %struct.atmel_pmecc**, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %10)
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = icmp ne %struct.platform_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.atmel_pmecc* @ERR_PTR(i32 %16)
  store %struct.atmel_pmecc* %17, %struct.atmel_pmecc** %3, align 8
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %20 = call %struct.atmel_pmecc* @platform_get_drvdata(%struct.platform_device* %19)
  store %struct.atmel_pmecc* %20, %struct.atmel_pmecc** %7, align 8
  %21 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %7, align 8
  %22 = icmp ne %struct.atmel_pmecc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EPROBE_DEFER, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load i32, i32* @devm_atmel_pmecc_put, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.atmel_pmecc** @devres_alloc(i32 %27, i32 8, i32 %28)
  store %struct.atmel_pmecc** %29, %struct.atmel_pmecc*** %8, align 8
  %30 = load %struct.atmel_pmecc**, %struct.atmel_pmecc*** %8, align 8
  %31 = icmp ne %struct.atmel_pmecc** %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %7, align 8
  %37 = load %struct.atmel_pmecc**, %struct.atmel_pmecc*** %8, align 8
  store %struct.atmel_pmecc* %36, %struct.atmel_pmecc** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.atmel_pmecc**, %struct.atmel_pmecc*** %8, align 8
  %40 = call i32 @devres_add(%struct.device* %38, %struct.atmel_pmecc** %39)
  %41 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %7, align 8
  store %struct.atmel_pmecc* %41, %struct.atmel_pmecc** %3, align 8
  br label %48

42:                                               ; preds = %32, %23
  %43 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @put_device(i32* %44)
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.atmel_pmecc* @ERR_PTR(i32 %46)
  store %struct.atmel_pmecc* %47, %struct.atmel_pmecc** %3, align 8
  br label %48

48:                                               ; preds = %42, %35, %14
  %49 = load %struct.atmel_pmecc*, %struct.atmel_pmecc** %3, align 8
  ret %struct.atmel_pmecc* %49
}

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local %struct.atmel_pmecc* @ERR_PTR(i32) #1

declare dso_local %struct.atmel_pmecc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.atmel_pmecc** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.atmel_pmecc**) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
