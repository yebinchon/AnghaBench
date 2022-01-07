; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_register_upstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_register_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i64, i8*, %struct.sfp_upstream_ops* }
%struct.fwnode_handle = type { i32 }
%struct.sfp_upstream_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sfp_bus* @sfp_register_upstream(%struct.fwnode_handle* %0, i8* %1, %struct.sfp_upstream_ops* %2) #0 {
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sfp_upstream_ops*, align 8
  %7 = alloca %struct.sfp_bus*, align 8
  %8 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sfp_upstream_ops* %2, %struct.sfp_upstream_ops** %6, align 8
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %10 = call %struct.sfp_bus* @sfp_bus_get(%struct.fwnode_handle* %9)
  store %struct.sfp_bus* %10, %struct.sfp_bus** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %12 = icmp ne %struct.sfp_bus* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = call i32 (...) @rtnl_lock()
  %15 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %6, align 8
  %16 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %17 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %16, i32 0, i32 2
  store %struct.sfp_upstream_ops* %15, %struct.sfp_upstream_ops** %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %20 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %22 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %27 = call i32 @sfp_register_bus(%struct.sfp_bus* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %32 = call i32 @sfp_upstream_clear(%struct.sfp_bus* %31)
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %33, %13
  %35 = call i32 (...) @rtnl_unlock()
  br label %36

36:                                               ; preds = %34, %3
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  %41 = call i32 @sfp_bus_put(%struct.sfp_bus* %40)
  store %struct.sfp_bus* null, %struct.sfp_bus** %7, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.sfp_bus*, %struct.sfp_bus** %7, align 8
  ret %struct.sfp_bus* %43
}

declare dso_local %struct.sfp_bus* @sfp_bus_get(%struct.fwnode_handle*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @sfp_register_bus(%struct.sfp_bus*) #1

declare dso_local i32 @sfp_upstream_clear(%struct.sfp_bus*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @sfp_bus_put(%struct.sfp_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
