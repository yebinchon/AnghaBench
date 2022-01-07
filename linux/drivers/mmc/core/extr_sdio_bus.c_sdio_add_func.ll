; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_add_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_add_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_add_func(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %4 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %5 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %4, i32 0, i32 0
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mmc_card_id(i32 %8)
  %10 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_set_name(i32* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %15 = call i32 @sdio_set_of_node(%struct.sdio_func* %14)
  %16 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %17 = call i32 @sdio_acpi_set_handle(%struct.sdio_func* %16)
  %18 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 0
  %20 = call i32 @device_enable_async_suspend(i32* %19)
  %21 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %22 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 0
  %23 = call i32 @device_add(i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %28 = call i32 @sdio_func_set_present(%struct.sdio_func* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dev_set_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @mmc_card_id(i32) #1

declare dso_local i32 @sdio_set_of_node(%struct.sdio_func*) #1

declare dso_local i32 @sdio_acpi_set_handle(%struct.sdio_func*) #1

declare dso_local i32 @device_enable_async_suspend(i32*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @sdio_func_set_present(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
