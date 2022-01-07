; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c___nsim_dev_port_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c___nsim_dev_port_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_dev_port = type { i32, i32, %struct.devlink_port }
%struct.devlink_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nsim_dev_port*)* @__nsim_dev_port_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nsim_dev_port_del(%struct.nsim_dev_port* %0) #0 {
  %2 = alloca %struct.nsim_dev_port*, align 8
  %3 = alloca %struct.devlink_port*, align 8
  store %struct.nsim_dev_port* %0, %struct.nsim_dev_port** %2, align 8
  %4 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %5 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %4, i32 0, i32 2
  store %struct.devlink_port* %5, %struct.devlink_port** %3, align 8
  %6 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %7 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %10 = call i32 @devlink_port_type_clear(%struct.devlink_port* %9)
  %11 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %12 = getelementptr inbounds %struct.nsim_dev_port, %struct.nsim_dev_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nsim_destroy(i32 %13)
  %15 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %16 = call i32 @nsim_dev_port_debugfs_exit(%struct.nsim_dev_port* %15)
  %17 = load %struct.devlink_port*, %struct.devlink_port** %3, align 8
  %18 = call i32 @devlink_port_unregister(%struct.devlink_port* %17)
  %19 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %2, align 8
  %20 = call i32 @kfree(%struct.nsim_dev_port* %19)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devlink_port_type_clear(%struct.devlink_port*) #1

declare dso_local i32 @nsim_destroy(i32) #1

declare dso_local i32 @nsim_dev_port_debugfs_exit(%struct.nsim_dev_port*) #1

declare dso_local i32 @devlink_port_unregister(%struct.devlink_port*) #1

declare dso_local i32 @kfree(%struct.nsim_dev_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
