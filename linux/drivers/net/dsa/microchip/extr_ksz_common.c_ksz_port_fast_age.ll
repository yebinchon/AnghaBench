; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_port_fast_age.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_port_fast_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ksz_device*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksz_port_fast_age(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  store %struct.ksz_device* %8, %struct.ksz_device** %5, align 8
  %9 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ksz_device*, i32)*, i32 (%struct.ksz_device*, i32)** %12, align 8
  %14 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %13(%struct.ksz_device* %14, i32 %15)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
