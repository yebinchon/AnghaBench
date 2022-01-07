; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_cs.c_softingcs_probe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_cs.c_softingcs_probe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.resource** }
%struct.resource = type { i32 }
%struct.softing_platform_data = type { i32 }

@PCMCIA_IOMEM_0 = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_CM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@WIN_USE_WAIT = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i8*)* @softingcs_probe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softingcs_probe_config(%struct.pcmcia_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.softing_platform_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.softing_platform_data*
  store %struct.softing_platform_data* %10, %struct.softing_platform_data** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  %12 = icmp ne %struct.softing_platform_data* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 0
  %18 = load %struct.resource**, %struct.resource*** %17, align 8
  %19 = load i64, i64* @PCMCIA_IOMEM_0, align 8
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %18, i64 %19
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = call i32 @resource_size(%struct.resource* %22)
  %24 = icmp slt i32 %23, 4096
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %2
  %29 = load i32, i32* @WIN_MEMORY_TYPE_CM, align 4
  %30 = load i32, i32* @WIN_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  %37 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load i32, i32* @WIN_USE_WAIT, align 4
  %42 = load i32, i32* @WIN_DATA_WIDTH_8, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i32 3, i32* %8, align 4
  br label %54

48:                                               ; preds = %28
  %49 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %56 = load %struct.resource*, %struct.resource** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %55, %struct.resource* %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %25
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
