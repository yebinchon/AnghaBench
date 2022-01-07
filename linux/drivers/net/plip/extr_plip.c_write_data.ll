; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.parport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.parport*, i8)* }
%struct.net_local = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.parport* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8)* @write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_data(%struct.net_device* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.parport*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call i64 @netdev_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.net_local*
  %9 = getelementptr inbounds %struct.net_local, %struct.net_local* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.parport*, %struct.parport** %11, align 8
  store %struct.parport* %12, %struct.parport** %5, align 8
  %13 = load %struct.parport*, %struct.parport** %5, align 8
  %14 = getelementptr inbounds %struct.parport, %struct.parport* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.parport*, i8)*, i32 (%struct.parport*, i8)** %16, align 8
  %18 = load %struct.parport*, %struct.parport** %5, align 8
  %19 = load i8, i8* %4, align 1
  %20 = call i32 %17(%struct.parport* %18, i8 zeroext %19)
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
