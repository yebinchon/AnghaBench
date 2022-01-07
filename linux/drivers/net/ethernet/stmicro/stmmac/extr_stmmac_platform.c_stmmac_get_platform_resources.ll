; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_platform.c_stmmac_get_platform_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_platform.c_stmmac_get_platform_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stmmac_resources = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"macirq\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"eth_wake_irq\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"eth_lpi\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_get_platform_resources(%struct.platform_device* %0, %struct.stmmac_resources* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stmmac_resources*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stmmac_resources* %1, %struct.stmmac_resources** %5, align 8
  %7 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %8 = call i32 @memset(%struct.stmmac_resources* %7, i32 0, i32 16)
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = call i8* @platform_get_irq_byname(%struct.platform_device* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %13 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %15 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %20 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = call i8* @platform_get_irq_byname(%struct.platform_device* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %27 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %29 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %34 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %32
  %43 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %44 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %47 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %22
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = call i8* @platform_get_irq_byname(%struct.platform_device* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %53 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %55 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %48
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = call %struct.resource* @platform_get_resource(%struct.platform_device* %64, i32 %65, i32 0)
  store %struct.resource* %66, %struct.resource** %6, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.resource*, %struct.resource** %6, align 8
  %70 = call i32 @devm_ioremap_resource(i32* %68, %struct.resource* %69)
  %71 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %72 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.stmmac_resources*, %struct.stmmac_resources** %5, align 8
  %74 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR_OR_ZERO(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %63, %60, %39, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.stmmac_resources*, i32, i32) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
