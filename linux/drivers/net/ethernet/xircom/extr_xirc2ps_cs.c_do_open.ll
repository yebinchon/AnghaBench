; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_do_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.local_info = type { %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"do_open(%p)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.local_info*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.local_info* @netdev_priv(%struct.net_device* %6)
  store %struct.local_info* %7, %struct.local_info** %4, align 8
  %8 = load %struct.local_info*, %struct.local_info** %4, align 8
  %9 = getelementptr inbounds %struct.local_info, %struct.local_info* %8, i32 0, i32 0
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %5, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.net_device* %13)
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %16 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netif_start_queue(%struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @do_reset(%struct.net_device* %28, i32 1)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.net_device*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @do_reset(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
