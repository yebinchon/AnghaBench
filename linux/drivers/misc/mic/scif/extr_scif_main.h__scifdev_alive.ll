; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.h__scifdev_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.h__scifdev_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scif_peer_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_dev*)* @_scifdev_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scifdev_alive(%struct.scif_dev* %0) #0 {
  %2 = alloca %struct.scif_dev*, align 8
  %3 = alloca %struct.scif_peer_dev*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %6 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.scif_peer_dev* @rcu_dereference(i32 %7)
  store %struct.scif_peer_dev* %8, %struct.scif_peer_dev** %3, align 8
  %9 = call i32 (...) @rcu_read_unlock()
  %10 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %3, align 8
  %11 = icmp ne %struct.scif_peer_dev* %10, null
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.scif_peer_dev* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
