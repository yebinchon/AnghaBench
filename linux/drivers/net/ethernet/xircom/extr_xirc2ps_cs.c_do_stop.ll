; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_do_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_do_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.local_info = type { %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"do_stop(%p)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XIRCREG_CR = common dso_local global i32 0, align 4
@XIRCREG1_IMR0 = common dso_local global i32 0, align 4
@XIRCREG4_GPR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @do_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_stop(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.local_info*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.local_info* @netdev_priv(%struct.net_device* %10)
  store %struct.local_info* %11, %struct.local_info** %5, align 8
  %12 = load %struct.local_info*, %struct.local_info** %5, align 8
  %13 = getelementptr inbounds %struct.local_info, %struct.local_info* %12, i32 0, i32 0
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %13, align 8
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %6, align 8
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.net_device* %17)
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %20 = icmp ne %struct.pcmcia_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netif_stop_queue(%struct.net_device* %25)
  %27 = call i32 @SelectPage(i32 0)
  %28 = load i32, i32* @XIRCREG_CR, align 4
  %29 = call i32 @PutByte(i32 %28, i32 0)
  %30 = call i32 @SelectPage(i32 1)
  %31 = load i32, i32* @XIRCREG1_IMR0, align 4
  %32 = call i32 @PutByte(i32 %31, i32 0)
  %33 = call i32 @SelectPage(i32 4)
  %34 = load i32, i32* @XIRCREG4_GPR1, align 4
  %35 = call i32 @PutByte(i32 %34, i32 0)
  %36 = call i32 @SelectPage(i32 0)
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
