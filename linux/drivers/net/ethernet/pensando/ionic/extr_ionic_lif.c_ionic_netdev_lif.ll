; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_netdev_lif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_netdev_lif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ionic_start_xmit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ionic_lif* (%struct.net_device*)* @ionic_netdev_lif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ionic_lif* @ionic_netdev_lif(%struct.net_device* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = icmp ne %struct.net_device* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ionic_start_xmit, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %6, %1
  store %struct.ionic_lif* null, %struct.ionic_lif** %2, align 8
  br label %18

15:                                               ; preds = %6
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %16)
  store %struct.ionic_lif* %17, %struct.ionic_lif** %2, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  ret %struct.ionic_lif* %19
}

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
