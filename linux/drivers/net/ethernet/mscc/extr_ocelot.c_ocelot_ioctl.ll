; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.ocelot_port = type { %struct.ocelot* }
%struct.ocelot = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ocelot_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocelot_port*, align 8
  %9 = alloca %struct.ocelot*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %10)
  store %struct.ocelot_port* %11, %struct.ocelot_port** %8, align 8
  %12 = load %struct.ocelot_port*, %struct.ocelot_port** %8, align 8
  %13 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %12, i32 0, i32 0
  %14 = load %struct.ocelot*, %struct.ocelot** %13, align 8
  store %struct.ocelot* %14, %struct.ocelot** %9, align 8
  %15 = load %struct.ocelot*, %struct.ocelot** %9, align 8
  %16 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %32 [
    i32 128, label %24
    i32 129, label %28
  ]

24:                                               ; preds = %22
  %25 = load %struct.ocelot_port*, %struct.ocelot_port** %8, align 8
  %26 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %27 = call i32 @ocelot_hwstamp_set(%struct.ocelot_port* %25, %struct.ifreq* %26)
  store i32 %27, i32* %4, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.ocelot_port*, %struct.ocelot_port** %8, align 8
  %30 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %31 = call i32 @ocelot_hwstamp_get(%struct.ocelot_port* %29, %struct.ifreq* %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %28, %24, %19
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_hwstamp_set(%struct.ocelot_port*, %struct.ifreq*) #1

declare dso_local i32 @ocelot_hwstamp_get(%struct.ocelot_port*, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
