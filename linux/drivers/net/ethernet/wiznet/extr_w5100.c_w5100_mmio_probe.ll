; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_mmio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_mmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5100_ops = type { i32 }
%struct.platform_device = type { i32 }
%struct.wiznet_platform_data = type { i8*, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@W5100_BUS_DIRECT_SIZE = common dso_local global i64 0, align 8
@w5100_mmio_indirect_ops = common dso_local global %struct.w5100_ops zeroinitializer, align 4
@w5100_mmio_direct_ops = common dso_local global %struct.w5100_ops zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @w5100_mmio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_mmio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wiznet_platform_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.w5100_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.wiznet_platform_data* @dev_get_platdata(i32* %10)
  store %struct.wiznet_platform_data* %11, %struct.wiznet_platform_data** %4, align 8
  store i8* null, i8** %5, align 8
  %12 = load %struct.wiznet_platform_data*, %struct.wiznet_platform_data** %4, align 8
  %13 = icmp ne %struct.wiznet_platform_data* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.wiznet_platform_data*, %struct.wiznet_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.wiznet_platform_data, %struct.wiznet_platform_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @is_valid_ether_addr(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.wiznet_platform_data*, %struct.wiznet_platform_data** %4, align 8
  %22 = getelementptr inbounds %struct.wiznet_platform_data, %struct.wiznet_platform_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %20, %14, %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = call i64 @resource_size(%struct.resource* %28)
  %30 = load i64, i64* @W5100_BUS_DIRECT_SIZE, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store %struct.w5100_ops* @w5100_mmio_indirect_ops, %struct.w5100_ops** %7, align 8
  br label %34

33:                                               ; preds = %24
  store %struct.w5100_ops* @w5100_mmio_direct_ops, %struct.w5100_ops** %7, align 8
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @platform_get_irq(%struct.platform_device* %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %34
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.w5100_ops*, %struct.w5100_ops** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.wiznet_platform_data*, %struct.wiznet_platform_data** %4, align 8
  %48 = icmp ne %struct.wiznet_platform_data* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.wiznet_platform_data*, %struct.wiznet_platform_data** %4, align 8
  %51 = getelementptr inbounds %struct.wiznet_platform_data, %struct.wiznet_platform_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  br label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i32 [ %52, %49 ], [ %55, %53 ]
  %58 = call i32 @w5100_probe(i32* %43, %struct.w5100_ops* %44, i32 4, i8* %45, i32 %46, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %39
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.wiznet_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i64 @is_valid_ether_addr(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @w5100_probe(i32*, %struct.w5100_ops*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
