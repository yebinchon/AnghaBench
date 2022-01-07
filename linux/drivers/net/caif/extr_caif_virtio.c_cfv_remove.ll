; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.cfv_info* }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (%struct.virtio_device*)* }
%struct.TYPE_5__ = type { i32 (i32)* }
%struct.cfv_info = type { i32, i32, i32*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @cfv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfv_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.cfv_info*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 2
  %6 = load %struct.cfv_info*, %struct.cfv_info** %5, align 8
  store %struct.cfv_info* %6, %struct.cfv_info** %3, align 8
  %7 = call i32 (...) @rtnl_lock()
  %8 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %9 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dev_close(i32 %10)
  %12 = call i32 (...) @rtnl_unlock()
  %13 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %14 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %13, i32 0, i32 5
  %15 = call i32 @tasklet_kill(i32* %14)
  %16 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %17 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @debugfs_remove_recursive(i32 %18)
  %20 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %21 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @vringh_kiov_cleanup(i32* %22)
  %24 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %25 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %27, align 8
  %29 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %30 = call i32 %28(%struct.virtio_device* %29)
  %31 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %32 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %37 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %35(i32 %38)
  %40 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %41 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %43 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %48 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %46(i32 %49)
  %51 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %52 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @unregister_netdev(i32 %53)
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @vringh_kiov_cleanup(i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
