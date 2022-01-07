; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_attr_ageing_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_attr_ageing_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { %struct.ocelot* }
%struct.ocelot = type { i32 }

@ANA_AUTOAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot_port*, i64)* @ocelot_port_attr_ageing_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_port_attr_ageing_set(%struct.ocelot_port* %0, i64 %1) #0 {
  %3 = alloca %struct.ocelot_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ocelot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ocelot_port* %0, %struct.ocelot_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %9 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %8, i32 0, i32 0
  %10 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  store %struct.ocelot* %10, %struct.ocelot** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @clock_t_to_jiffies(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @jiffies_to_msecs(i64 %13)
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ocelot*, %struct.ocelot** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 2
  %19 = call i32 @ANA_AUTOAGE_AGE_PERIOD(i32 %18)
  %20 = load i32, i32* @ANA_AUTOAGE, align 4
  %21 = call i32 @ocelot_write(%struct.ocelot* %16, i32 %19, i32 %20)
  ret void
}

declare dso_local i64 @clock_t_to_jiffies(i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @ANA_AUTOAGE_AGE_PERIOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
