; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_init_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.c_xvip_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_device = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xvip_init_resources(%struct.xvip_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xvip_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.xvip_device* %0, %struct.xvip_device** %3, align 8
  %6 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %7 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %5, align 8
  %13 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %14 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.resource*, %struct.resource** %5, align 8
  %17 = call i32 @devm_ioremap_resource(i32 %15, %struct.resource* %16)
  %18 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %19 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %21 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %27 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %1
  %31 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %32 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @devm_clk_get(i32 %33, i32* null)
  %35 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %36 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %38 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %44 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %30
  %48 = load %struct.xvip_device*, %struct.xvip_device** %3, align 8
  %49 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_prepare_enable(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %42, %25
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
