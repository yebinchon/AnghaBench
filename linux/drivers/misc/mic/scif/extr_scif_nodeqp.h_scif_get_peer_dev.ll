; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.h_scif_get_peer_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.h_scif_get_peer_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scif_dev = type { i32 }
%struct.scif_peer_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.scif_dev*)* @scif_get_peer_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @scif_get_peer_dev(%struct.scif_dev* %0) #0 {
  %2 = alloca %struct.scif_dev*, align 8
  %3 = alloca %struct.scif_peer_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %7 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.scif_peer_dev* @rcu_dereference(i32 %8)
  store %struct.scif_peer_dev* %9, %struct.scif_peer_dev** %3, align 8
  %10 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %3, align 8
  %11 = icmp ne %struct.scif_peer_dev* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %3, align 8
  %14 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %13, i32 0, i32 0
  %15 = call %struct.device* @get_device(i32* %14)
  store %struct.device* %15, %struct.device** %4, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.device* @ERR_PTR(i32 %18)
  store %struct.device* %19, %struct.device** %4, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load %struct.device*, %struct.device** %4, align 8
  ret %struct.device* %22
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.scif_peer_dev* @rcu_dereference(i32) #1

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
