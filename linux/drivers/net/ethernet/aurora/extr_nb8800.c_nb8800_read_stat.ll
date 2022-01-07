; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_read_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_read_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nb8800_priv = type { i32 }

@NB8800_STAT_INDEX = common dso_local global i32 0, align 4
@NB8800_STAT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nb8800_read_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_read_stat(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nb8800_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.nb8800_priv* %7, %struct.nb8800_priv** %5, align 8
  %8 = load %struct.nb8800_priv*, %struct.nb8800_priv** %5, align 8
  %9 = load i32, i32* @NB8800_STAT_INDEX, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @nb8800_writeb(%struct.nb8800_priv* %8, i32 %9, i32 %10)
  %12 = load %struct.nb8800_priv*, %struct.nb8800_priv** %5, align 8
  %13 = load i32, i32* @NB8800_STAT_DATA, align 4
  %14 = call i32 @nb8800_readl(%struct.nb8800_priv* %12, i32 %13)
  ret i32 %14
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nb8800_writeb(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @nb8800_readl(%struct.nb8800_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
