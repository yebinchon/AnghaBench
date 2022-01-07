; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.goya_device* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*, i32, i32, i32)* }
%struct.goya_device = type { i32 }

@HL_CPU_ACCESSIBLE_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_sw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_sw_fini(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %4 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %5 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %4, i32 0, i32 5
  %6 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  store %struct.goya_device* %6, %struct.goya_device** %3, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @gen_pool_destroy(i32 %9)
  %11 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.hl_device*, i32, i32, i32)*, i32 (%struct.hl_device*, i32, i32, i32)** %14, align 8
  %16 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %17 = load i32, i32* @HL_CPU_ACCESSIBLE_MEM_SIZE, align 4
  %18 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %15(%struct.hl_device* %16, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dma_pool_destroy(i32 %27)
  %29 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %30 = call i32 @kfree(%struct.goya_device* %29)
  ret i32 0
}

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.goya_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
