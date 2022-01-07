; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rhine_private = type { i32 }

@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Interrupt, status %08x\0A\00", align 1
@RHINE_EVENT = common dso_local global i32 0, align 4
@IntrLinkChange = common dso_local global i32 0, align 4
@IntrStatsMax = common dso_local global i32 0, align 4
@RHINE_EVENT_NAPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Something Wicked happened! %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rhine_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rhine_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rhine_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %11)
  store %struct.rhine_private* %12, %struct.rhine_private** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %14 = call i32 @rhine_get_events(%struct.rhine_private* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %16 = load i32, i32* @intr, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @netif_dbg(%struct.rhine_private* %15, i32 %16, %struct.net_device* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @RHINE_EVENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %25 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %26 = call i32 @rhine_irq_disable(%struct.rhine_private* %25)
  %27 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %28 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %27, i32 0, i32 0
  %29 = call i32 @napi_schedule(i32* %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IntrLinkChange, align 4
  %33 = load i32, i32* @IntrStatsMax, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RHINE_EVENT_NAPI, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %31, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %42 = load i32, i32* @intr, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @netif_err(%struct.rhine_private* %41, i32 %42, %struct.net_device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @IRQ_RETVAL(i32 %47)
  ret i32 %48
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rhine_get_events(%struct.rhine_private*) #1

declare dso_local i32 @netif_dbg(%struct.rhine_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @rhine_irq_disable(%struct.rhine_private*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @netif_err(%struct.rhine_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
