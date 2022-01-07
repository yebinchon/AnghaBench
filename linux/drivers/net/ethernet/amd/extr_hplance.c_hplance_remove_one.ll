; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_hplance.c_hplance_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio_dev = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dio_dev*)* @hplance_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hplance_remove_one(%struct.dio_dev* %0) #0 {
  %2 = alloca %struct.dio_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.dio_dev* %0, %struct.dio_dev** %2, align 8
  %4 = load %struct.dio_dev*, %struct.dio_dev** %2, align 8
  %5 = call %struct.net_device* @dio_get_drvdata(%struct.dio_dev* %4)
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i32 @unregister_netdev(%struct.net_device* %6)
  %8 = load %struct.dio_dev*, %struct.dio_dev** %2, align 8
  %9 = call i32 @dio_resource_start(%struct.dio_dev* %8)
  %10 = load %struct.dio_dev*, %struct.dio_dev** %2, align 8
  %11 = call i32 @dio_resource_len(%struct.dio_dev* %10)
  %12 = call i32 @release_mem_region(i32 %9, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @free_netdev(%struct.net_device* %13)
  ret void
}

declare dso_local %struct.net_device* @dio_get_drvdata(%struct.dio_dev*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @dio_resource_start(%struct.dio_dev*) #1

declare dso_local i32 @dio_resource_len(%struct.dio_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
