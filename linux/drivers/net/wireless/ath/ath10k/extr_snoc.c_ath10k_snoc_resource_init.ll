; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_resource_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_resource_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.TYPE_2__*, %struct.platform_device*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"membase\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Memory base not found in DT\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Memory base ioremap failed with physical address %pa\0A\00", align 1
@CE_COUNT = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get IRQ%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_snoc_resource_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_resource_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_snoc*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %9)
  store %struct.ath10k_snoc* %10, %struct.ath10k_snoc** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %11, i32 0, i32 1
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %14, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = call i32 @resource_size(%struct.resource* %35)
  %37 = call i32 @devm_ioremap(i32* %31, i32 %34, i32 %36)
  %38 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %39 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %24
  %45 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %46 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %46, i32 0, i32 2
  %48 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %88

51:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CE_COUNT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %58 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %57, i32 0, i32 1
  %59 = load %struct.platform_device*, %struct.platform_device** %58, align 8
  %60 = load i32, i32* @IORESOURCE_IRQ, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 %61)
  store %struct.resource* %62, %struct.resource** %6, align 8
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %86

71:                                               ; preds = %56
  %72 = load %struct.resource*, %struct.resource** %6, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %52

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85, %65
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %44, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
