; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_disable_parport_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_disable_parport_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.parport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.parport*)* }
%struct.net_local = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.parport* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @disable_parport_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_parport_interrupts(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.parport*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @netdev_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.net_local*
  %12 = getelementptr inbounds %struct.net_local, %struct.net_local* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.parport*, %struct.parport** %14, align 8
  store %struct.parport* %15, %struct.parport** %3, align 8
  %16 = load %struct.parport*, %struct.parport** %3, align 8
  %17 = getelementptr inbounds %struct.parport, %struct.parport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %19, align 8
  %21 = load %struct.parport*, %struct.parport** %3, align 8
  %22 = call i32 %20(%struct.parport* %21)
  br label %23

23:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
