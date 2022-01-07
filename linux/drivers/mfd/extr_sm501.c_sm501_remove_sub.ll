; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_remove_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_remove_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.sm501_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501_devdata*, %struct.sm501_device*)* @sm501_remove_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501_remove_sub(%struct.sm501_devdata* %0, %struct.sm501_device* %1) #0 {
  %3 = alloca %struct.sm501_devdata*, align 8
  %4 = alloca %struct.sm501_device*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %3, align 8
  store %struct.sm501_device* %1, %struct.sm501_device** %4, align 8
  %5 = load %struct.sm501_device*, %struct.sm501_device** %4, align 8
  %6 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %5, i32 0, i32 1
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.sm501_device*, %struct.sm501_device** %4, align 8
  %9 = getelementptr inbounds %struct.sm501_device, %struct.sm501_device* %8, i32 0, i32 0
  %10 = call i32 @platform_device_unregister(i32* %9)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @platform_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
