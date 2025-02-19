; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_probe_maple_vmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_probe_maple_vmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device = type { %struct.maple_driver*, i32, i32 }
%struct.maple_driver = type { i32 }

@vmu_can_unload = common dso_local global i32 0, align 4
@vmu_file_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @probe_maple_vmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_maple_vmu(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.maple_device*, align 8
  %6 = alloca %struct.maple_driver*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.maple_device* @to_maple_dev(%struct.device* %7)
  store %struct.maple_device* %8, %struct.maple_device** %5, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.maple_driver* @to_maple_driver(i32 %11)
  store %struct.maple_driver* %12, %struct.maple_driver** %6, align 8
  %13 = load i32, i32* @vmu_can_unload, align 4
  %14 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %15 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @vmu_file_error, align 4
  %17 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %18 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.maple_driver*, %struct.maple_driver** %6, align 8
  %20 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %21 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %20, i32 0, i32 0
  store %struct.maple_driver* %19, %struct.maple_driver** %21, align 8
  %22 = load %struct.maple_device*, %struct.maple_device** %5, align 8
  %23 = call i32 @vmu_connect(%struct.maple_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.maple_device* @to_maple_dev(%struct.device*) #1

declare dso_local %struct.maple_driver* @to_maple_driver(i32) #1

declare dso_local i32 @vmu_connect(%struct.maple_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
