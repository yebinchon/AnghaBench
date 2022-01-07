; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mot_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mot_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__**, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.smc_private = type { i64 }

@MOT_UART = common dso_local global i64 0, align 8
@CISREG_IOBASE_0 = common dso_local global i64 0, align 8
@CISREG_IOBASE_1 = common dso_local global i64 0, align 8
@MOT_NORMAL = common dso_local global i32 0, align 4
@CISREG_COR = common dso_local global i64 0, align 8
@MOT_LAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @mot_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mot_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.smc_private* @netdev_priv(%struct.net_device* %10)
  store %struct.smc_private* %11, %struct.smc_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %25 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MOT_UART, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @CISREG_IOBASE_0, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb(i32 %23, i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = lshr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %36 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MOT_UART, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* @CISREG_IOBASE_1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writeb(i32 %34, i64 %41)
  %43 = load i32, i32* @MOT_NORMAL, align 4
  %44 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %45 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MOT_UART, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @CISREG_COR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 %43, i64 %50)
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 255
  %54 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %55 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MOT_LAN, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @CISREG_IOBASE_0, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writeb(i32 %53, i64 %60)
  %62 = load i32, i32* %5, align 4
  %63 = lshr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %66 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MOT_LAN, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* @CISREG_IOBASE_1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writeb(i32 %64, i64 %71)
  %73 = load i32, i32* @MOT_NORMAL, align 4
  %74 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %75 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MOT_LAN, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* @CISREG_COR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writeb(i32 %73, i64 %80)
  %82 = call i32 @mdelay(i32 100)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
