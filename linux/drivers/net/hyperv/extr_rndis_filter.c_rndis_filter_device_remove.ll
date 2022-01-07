; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { %struct.rndis_device* }
%struct.rndis_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rndis_filter_device_remove(%struct.hv_device* %0, %struct.netvsc_device* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.netvsc_device*, align 8
  %5 = alloca %struct.rndis_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %4, align 8
  %6 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %7 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %6, i32 0, i32 0
  %8 = load %struct.rndis_device*, %struct.rndis_device** %7, align 8
  store %struct.rndis_device* %8, %struct.rndis_device** %5, align 8
  %9 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %10 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %11 = call i32 @rndis_filter_halt_device(%struct.netvsc_device* %9, %struct.rndis_device* %10)
  %12 = load %struct.netvsc_device*, %struct.netvsc_device** %4, align 8
  %13 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %12, i32 0, i32 0
  store %struct.rndis_device* null, %struct.rndis_device** %13, align 8
  %14 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %15 = call i32 @netvsc_device_remove(%struct.hv_device* %14)
  ret void
}

declare dso_local i32 @rndis_filter_halt_device(%struct.netvsc_device*, %struct.rndis_device*) #1

declare dso_local i32 @netvsc_device_remove(%struct.hv_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
