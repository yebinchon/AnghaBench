; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_alloc_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_alloc_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__, %struct.mmc_host* }
%struct.TYPE_2__ = type { %struct.device_type*, i32, i32*, i32 }
%struct.mmc_host = type { i32 }
%struct.device_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmc_bus_type = common dso_local global i32 0, align 4
@mmc_release_card = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mmc_card* @mmc_alloc_card(%struct.mmc_host* %0, %struct.device_type* %1) #0 {
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.device_type*, align 8
  %6 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.device_type* %1, %struct.device_type** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mmc_card* @kzalloc(i32 40, i32 %7)
  store %struct.mmc_card* %8, %struct.mmc_card** %6, align 8
  %9 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %10 = icmp ne %struct.mmc_card* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mmc_card* @ERR_PTR(i32 %13)
  store %struct.mmc_card* %14, %struct.mmc_card** %3, align 8
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 1
  store %struct.mmc_host* %16, %struct.mmc_host** %18, align 8
  %19 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  %21 = call i32 @device_initialize(%struct.TYPE_2__* %20)
  %22 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %23 = call i32 @mmc_classdev(%struct.mmc_host* %22)
  %24 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32* @mmc_bus_type, i32** %29, align 8
  %30 = load i32, i32* @mmc_release_card, align 4
  %31 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.device_type*, %struct.device_type** %5, align 8
  %35 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.device_type* %34, %struct.device_type** %37, align 8
  %38 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  store %struct.mmc_card* %38, %struct.mmc_card** %3, align 8
  br label %39

39:                                               ; preds = %15, %11
  %40 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  ret %struct.mmc_card* %40
}

declare dso_local %struct.mmc_card* @kzalloc(i32, i32) #1

declare dso_local %struct.mmc_card* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @mmc_classdev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
