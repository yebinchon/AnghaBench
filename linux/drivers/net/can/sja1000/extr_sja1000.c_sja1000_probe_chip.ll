; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_probe_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_probe_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sja1000_priv = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"probing failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sja1000_probe_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_probe_chip(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sja1000_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.sja1000_priv* %6, %struct.sja1000_priv** %4, align 8
  %7 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %8 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %13 = call i64 @sja1000_is_absent(%struct.sja1000_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %19

18:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sja1000_is_absent(%struct.sja1000_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
