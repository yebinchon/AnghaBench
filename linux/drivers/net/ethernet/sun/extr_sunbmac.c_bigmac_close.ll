; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunbmac.c_bigmac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bigmac = type { i64, i32, i32 }

@asleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bigmac_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bigmac_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bigmac*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bigmac* @netdev_priv(%struct.net_device* %4)
  store %struct.bigmac* %5, %struct.bigmac** %3, align 8
  %6 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %7 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %6, i32 0, i32 2
  %8 = call i32 @del_timer(i32* %7)
  %9 = load i32, i32* @asleep, align 4
  %10 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %11 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %13 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %15 = call i32 @bigmac_stop(%struct.bigmac* %14)
  %16 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %17 = call i32 @bigmac_clean_rings(%struct.bigmac* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bigmac*, %struct.bigmac** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.bigmac* %21)
  ret i32 0
}

declare dso_local %struct.bigmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @bigmac_stop(%struct.bigmac*) #1

declare dso_local i32 @bigmac_clean_rings(%struct.bigmac*) #1

declare dso_local i32 @free_irq(i32, %struct.bigmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
