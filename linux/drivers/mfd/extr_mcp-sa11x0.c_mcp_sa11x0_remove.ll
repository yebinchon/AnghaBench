; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mcp = type { i32 }
%struct.mcp_sa11x0 = type { i32, i32, i32 }
%struct.resource = type { i32 }

@MCCR0_MCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"device left active (missing disable call?)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcp_sa11x0_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_sa11x0_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mcp*, align 8
  %4 = alloca %struct.mcp_sa11x0*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.mcp* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.mcp* %8, %struct.mcp** %3, align 8
  %9 = load %struct.mcp*, %struct.mcp** %3, align 8
  %10 = call %struct.mcp_sa11x0* @priv(%struct.mcp* %9)
  store %struct.mcp_sa11x0* %10, %struct.mcp_sa11x0** %4, align 8
  %11 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %4, align 8
  %12 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MCCR0_MCE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 1)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.mcp*, %struct.mcp** %3, align 8
  %29 = call i32 @mcp_host_del(%struct.mcp* %28)
  %30 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %4, align 8
  %31 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.mcp_sa11x0*, %struct.mcp_sa11x0** %4, align 8
  %35 = getelementptr inbounds %struct.mcp_sa11x0, %struct.mcp_sa11x0* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.mcp*, %struct.mcp** %3, align 8
  %39 = call i32 @mcp_host_free(%struct.mcp* %38)
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i32 @resource_size(%struct.resource* %43)
  %45 = call i32 @release_mem_region(i32 %42, i32 %44)
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = call i32 @resource_size(%struct.resource* %49)
  %51 = call i32 @release_mem_region(i32 %48, i32 %50)
  ret i32 0
}

declare dso_local %struct.mcp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mcp_sa11x0* @priv(%struct.mcp*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @mcp_host_del(%struct.mcp*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mcp_host_free(%struct.mcp*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
