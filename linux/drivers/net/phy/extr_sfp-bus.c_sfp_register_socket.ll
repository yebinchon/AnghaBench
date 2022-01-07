; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_register_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_register_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i64, %struct.sfp_socket_ops*, %struct.sfp*, %struct.device* }
%struct.device = type { i32 }
%struct.sfp = type { i32 }
%struct.sfp_socket_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sfp_bus* @sfp_register_socket(%struct.device* %0, %struct.sfp* %1, %struct.sfp_socket_ops* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sfp*, align 8
  %6 = alloca %struct.sfp_socket_ops*, align 8
  %7 = alloca %struct.sfp_bus*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sfp* %1, %struct.sfp** %5, align 8
  store %struct.sfp_socket_ops* %2, %struct.sfp_socket_ops** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sfp_bus* @sfp_bus_get(i32 %11)
  store %struct.sfp_bus* %12, %struct.sfp_bus** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %14 = icmp ne %struct.sfp_bus* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %19 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %18, i32 0, i32 3
  store %struct.device* %17, %struct.device** %19, align 8
  %20 = load %struct.sfp*, %struct.sfp** %5, align 8
  %21 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %22 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %21, i32 0, i32 2
  store %struct.sfp* %20, %struct.sfp** %22, align 8
  %23 = load %struct.sfp_socket_ops*, %struct.sfp_socket_ops** %6, align 8
  %24 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %25 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %24, i32 0, i32 1
  store %struct.sfp_socket_ops* %23, %struct.sfp_socket_ops** %25, align 8
  %26 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %27 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %32 = call i32 @sfp_register_bus(%struct.sfp_bus* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %37 = call i32 @sfp_socket_clear(%struct.sfp_bus* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %15
  %40 = call i32 (...) @rtnl_unlock()
  br label %41

41:                                               ; preds = %39, %3
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %46 = call i32 @sfp_bus_put(%struct.sfp_bus* %45)
  store %struct.sfp_bus* null, %struct.sfp_bus** %7, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  ret %struct.sfp_bus* %48
}

declare dso_local %struct.sfp_bus* @sfp_bus_get(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @sfp_register_bus(%struct.sfp_bus*) #1

declare dso_local i32 @sfp_socket_clear(%struct.sfp_bus*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @sfp_bus_put(%struct.sfp_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
