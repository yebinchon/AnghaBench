; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_au1550nd.c_au1550nd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_au1550nd.c_au1550nd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.au1550nd_ctx = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @au1550nd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550nd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.au1550nd_ctx*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.au1550nd_ctx* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.au1550nd_ctx* %6, %struct.au1550nd_ctx** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %10, i32 0, i32 1
  %12 = call i32 @nand_release(i32* %11)
  %13 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.au1550nd_ctx, %struct.au1550nd_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @iounmap(i32 %15)
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @release_mem_region(i32 %19, i32 4096)
  %21 = load %struct.au1550nd_ctx*, %struct.au1550nd_ctx** %3, align 8
  %22 = call i32 @kfree(%struct.au1550nd_ctx* %21)
  ret i32 0
}

declare dso_local %struct.au1550nd_ctx* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.au1550nd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
