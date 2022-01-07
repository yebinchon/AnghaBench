; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_ethernet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_ethernet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gemini_ethernet = type { i32, i32, i64, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GLOBAL_TOE_VERSION_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to reset ethernet\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Ethernet device ID: 0x%03x, revision 0x%01x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gemini_ethernet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_ethernet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gemini_ethernet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 5, i32* %6, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gemini_ethernet* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.gemini_ethernet* %13, %struct.gemini_ethernet** %5, align 8
  %14 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %15 = icmp ne %struct.gemini_ethernet* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %7, align 8
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %93

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = call i64 @devm_ioremap_resource(%struct.device* %29, %struct.resource* %30)
  %32 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %33 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %35 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @IS_ERR(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %41 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @PTR_ERR(i64 %42)
  store i32 %43, i32* %2, align 4
  br label %93

44:                                               ; preds = %28
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %47 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %46, i32 0, i32 3
  store %struct.device* %45, %struct.device** %47, align 8
  br label %48

48:                                               ; preds = %64, %44
  %49 = call i32 @udelay(i32 2)
  %50 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %51 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @GLOBAL_TOE_VERSION_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = call i32 (...) @barrier()
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  br i1 %65, label %48, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %93

74:                                               ; preds = %66
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 4095
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 15
  %81 = call i32 @dev_info(%struct.device* %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %83 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %82, i32 0, i32 1
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %86 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %85, i32 0, i32 0
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %5, align 8
  %90 = call i32 @platform_set_drvdata(%struct.platform_device* %88, %struct.gemini_ethernet* %89)
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @devm_of_platform_populate(%struct.device* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %74, %69, %39, %25, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.gemini_ethernet* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gemini_ethernet*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
