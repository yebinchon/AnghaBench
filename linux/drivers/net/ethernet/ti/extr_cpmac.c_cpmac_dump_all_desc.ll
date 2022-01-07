; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_dump_all_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_dump_all_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpmac_priv = type { %struct.cpmac_desc* }
%struct.cpmac_desc = type { %struct.cpmac_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_dump_all_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_dump_all_desc(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpmac_priv*, align 8
  %4 = alloca %struct.cpmac_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.cpmac_priv* %6, %struct.cpmac_priv** %3, align 8
  %7 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %7, i32 0, i32 0
  %9 = load %struct.cpmac_desc*, %struct.cpmac_desc** %8, align 8
  store %struct.cpmac_desc* %9, %struct.cpmac_desc** %4, align 8
  br label %10

10:                                               ; preds = %17, %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %13 = call i32 @cpmac_dump_desc(%struct.net_device* %11, %struct.cpmac_desc* %12)
  %14 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %15 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %14, i32 0, i32 0
  %16 = load %struct.cpmac_desc*, %struct.cpmac_desc** %15, align 8
  store %struct.cpmac_desc* %16, %struct.cpmac_desc** %4, align 8
  br label %17

17:                                               ; preds = %10
  %18 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %19 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %19, i32 0, i32 0
  %21 = load %struct.cpmac_desc*, %struct.cpmac_desc** %20, align 8
  %22 = icmp ne %struct.cpmac_desc* %18, %21
  br i1 %22, label %10, label %23

23:                                               ; preds = %17
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpmac_dump_desc(%struct.net_device*, %struct.cpmac_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
