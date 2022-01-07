; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_mtd_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_mtd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sa_info = type { i32 }
%struct.flash_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100_mtd_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_mtd_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sa_info*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sa_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sa_info* %6, %struct.sa_info** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.flash_platform_data* @dev_get_platdata(i32* %8)
  store %struct.flash_platform_data* %9, %struct.flash_platform_data** %4, align 8
  %10 = load %struct.sa_info*, %struct.sa_info** %3, align 8
  %11 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %12 = call i32 @sa1100_destroy(%struct.sa_info* %10, %struct.flash_platform_data* %11)
  ret i32 0
}

declare dso_local %struct.sa_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.flash_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @sa1100_destroy(%struct.sa_info*, %struct.flash_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
