; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_omap3isp_resizer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.isp_res_device }
%struct.isp_res_device = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3isp_resizer_init(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.isp_res_device*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %4 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %5 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %4, i32 0, i32 0
  store %struct.isp_res_device* %5, %struct.isp_res_device** %3, align 8
  %6 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %7 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %6, i32 0, i32 2
  %8 = call i32 @init_waitqueue_head(i32* %7)
  %9 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %10 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %9, i32 0, i32 1
  %11 = call i32 @atomic_set(i32* %10, i32 0)
  %12 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %13 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %16 = call i32 @resizer_init_entities(%struct.isp_res_device* %15)
  ret i32 %16
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @resizer_init_entities(%struct.isp_res_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
