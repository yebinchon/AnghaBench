; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_devlink.c_ionic_devlink_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_devlink.c_ionic_devlink_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32 }
%struct.devlink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_devlink_unregister(%struct.ionic* %0) #0 {
  %2 = alloca %struct.ionic*, align 8
  %3 = alloca %struct.devlink*, align 8
  store %struct.ionic* %0, %struct.ionic** %2, align 8
  %4 = load %struct.ionic*, %struct.ionic** %2, align 8
  %5 = call %struct.devlink* @priv_to_devlink(%struct.ionic* %4)
  store %struct.devlink* %5, %struct.devlink** %3, align 8
  %6 = load %struct.ionic*, %struct.ionic** %2, align 8
  %7 = getelementptr inbounds %struct.ionic, %struct.ionic* %6, i32 0, i32 0
  %8 = call i32 @devlink_port_unregister(i32* %7)
  %9 = load %struct.devlink*, %struct.devlink** %3, align 8
  %10 = call i32 @devlink_unregister(%struct.devlink* %9)
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.ionic*) #1

declare dso_local i32 @devlink_port_unregister(i32*) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
