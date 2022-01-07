; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32 }

@TXENcfg = common dso_local global i32 0, align 4
@COM20020_REG_W_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @com20020_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com20020_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.arcnet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %8)
  store %struct.arcnet_local* %9, %struct.arcnet_local** %4, align 8
  %10 = load i32, i32* @TXENcfg, align 4
  %11 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %12 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %20 = call i32 @arcnet_outb(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @arcnet_open(%struct.net_device* %21)
  ret i32 %22
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

declare dso_local i32 @arcnet_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
