; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_file = type { i32 }
%struct.tun_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_file*, i32)* @tun_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_detach(%struct.tun_file* %0, i32 %1) #0 {
  %3 = alloca %struct.tun_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tun_struct*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.tun_file* %0, %struct.tun_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @rtnl_lock()
  %8 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %9 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.tun_struct* @rtnl_dereference(i32 %10)
  store %struct.tun_struct* %11, %struct.tun_struct** %5, align 8
  %12 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %13 = icmp ne %struct.tun_struct* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.tun_struct*, %struct.tun_struct** %5, align 8
  %16 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.net_device* [ %17, %14 ], [ null, %18 ]
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  %21 = load %struct.tun_file*, %struct.tun_file** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @__tun_detach(%struct.tun_file* %21, i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call i32 @netdev_state_change(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.tun_struct* @rtnl_dereference(i32) #1

declare dso_local i32 @__tun_detach(%struct.tun_file*, i32) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
