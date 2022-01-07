; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_cxl_guest_reload_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_cxl_guest_reload_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_guest_reload_module(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %4 = load %struct.cxl*, %struct.cxl** %2, align 8
  %5 = getelementptr inbounds %struct.cxl, %struct.cxl* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %3, align 8
  %9 = load %struct.cxl*, %struct.cxl** %2, align 8
  %10 = call i32 @cxl_guest_remove_adapter(%struct.cxl* %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i32 @cxl_of_probe(%struct.platform_device* %11)
  ret void
}

declare dso_local i32 @cxl_guest_remove_adapter(%struct.cxl*) #1

declare dso_local i32 @cxl_of_probe(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
