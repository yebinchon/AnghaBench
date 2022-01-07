; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.axnet_dev = type { i32 }

@CISREG_CCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @axnet_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axnet_resume(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.axnet_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 1
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.axnet_dev* @PRIV(%struct.net_device* %8)
  store %struct.axnet_dev* %9, %struct.axnet_dev** %4, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.axnet_dev*, %struct.axnet_dev** %4, align 8
  %16 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %21 = load i32, i32* @CISREG_CCSR, align 4
  %22 = call i32 @pcmcia_write_config_byte(%struct.pcmcia_device* %20, i32 %21, i32 4)
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @axnet_reset_8390(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @AX88190_init(%struct.net_device* %26, i32 1)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_device_attach(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %23, %1
  ret i32 0
}

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @pcmcia_write_config_byte(%struct.pcmcia_device*, i32, i32) #1

declare dso_local i32 @axnet_reset_8390(%struct.net_device*) #1

declare dso_local i32 @AX88190_init(%struct.net_device*, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
