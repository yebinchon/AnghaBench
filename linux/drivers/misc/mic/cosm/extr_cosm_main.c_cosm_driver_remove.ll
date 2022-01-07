; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32, i32, i32, i32, i32, i32, i32 }

@g_cosm_class = common dso_local global i32 0, align 4
@g_num_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosm_device*)* @cosm_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cosm_driver_remove(%struct.cosm_device* %0) #0 {
  %2 = alloca %struct.cosm_device*, align 8
  store %struct.cosm_device* %0, %struct.cosm_device** %2, align 8
  %3 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %4 = call i32 @cosm_delete_debug_dir(%struct.cosm_device* %3)
  %5 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %6 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @sysfs_put(i32 %7)
  %9 = load i32, i32* @g_cosm_class, align 4
  %10 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %11 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MKDEV(i32 0, i32 %12)
  %14 = call i32 @device_destroy(i32 %9, i32 %13)
  %15 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %16 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %15, i32 0, i32 4
  %17 = call i32 @flush_work(i32* %16)
  %18 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %19 = call i32 @cosm_stop(%struct.cosm_device* %18, i32 0)
  %20 = call i64 @atomic_dec_and_test(i32* @g_num_dev)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (...) @cosm_scif_exit()
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %26 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %30 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  %33 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %34 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kfree(i32 %35)
  %37 = load %struct.cosm_device*, %struct.cosm_device** %2, align 8
  %38 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  ret void
}

declare dso_local i32 @cosm_delete_debug_dir(%struct.cosm_device*) #1

declare dso_local i32 @sysfs_put(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @cosm_stop(%struct.cosm_device*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cosm_scif_exit(...) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
