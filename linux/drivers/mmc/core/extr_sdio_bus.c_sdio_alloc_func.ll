; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_alloc_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_alloc_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { %struct.TYPE_2__, %struct.mmc_card*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.mmc_card = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sdio_bus_type = common dso_local global i32 0, align 4
@sdio_release_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sdio_func* @kzalloc(i32 40, i32 %5)
  store %struct.sdio_func* %6, %struct.sdio_func** %4, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %8 = icmp ne %struct.sdio_func* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sdio_func* @ERR_PTR(i32 %11)
  store %struct.sdio_func* %12, %struct.sdio_func** %2, align 8
  br label %48

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kmalloc(i32 4, i32 %14)
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %13
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = call i32 @kfree(%struct.sdio_func* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.sdio_func* @ERR_PTR(i32 %26)
  store %struct.sdio_func* %27, %struct.sdio_func** %2, align 8
  br label %48

28:                                               ; preds = %13
  %29 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %30 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 1
  store %struct.mmc_card* %29, %struct.mmc_card** %31, align 8
  %32 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %33 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %32, i32 0, i32 0
  %34 = call i32 @device_initialize(%struct.TYPE_2__* %33)
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 0
  %37 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %38 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32* %36, i32** %39, align 8
  %40 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32* @sdio_bus_type, i32** %42, align 8
  %43 = load i32, i32* @sdio_release_func, align 4
  %44 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %45 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  store %struct.sdio_func* %47, %struct.sdio_func** %2, align 8
  br label %48

48:                                               ; preds = %28, %22, %9
  %49 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  ret %struct.sdio_func* %49
}

declare dso_local %struct.sdio_func* @kzalloc(i32, i32) #1

declare dso_local %struct.sdio_func* @ERR_PTR(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.sdio_func*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
