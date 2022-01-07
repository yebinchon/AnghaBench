; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.el3_private = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: shutting down ethercard.\0A\00", align 1
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RxDisable = common dso_local global i32 0, align 4
@TxDisable = common dso_local global i32 0, align 4
@StopCoax = common dso_local global i32 0, align 4
@WN4_MEDIA = common dso_local global i64 0, align 8
@WN0_IRQ = common dso_local global i64 0, align 8
@EL3_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.el3_private*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.el3_private* @netdev_priv(%struct.net_device* %6)
  store %struct.el3_private* %7, %struct.el3_private** %3, align 8
  %8 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %9 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %8, i32 0, i32 1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %21 = call i64 @pcmcia_dev_present(%struct.pcmcia_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %1
  %24 = load i32, i32* @StatsDisable, align 4
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @EL3_CMD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outw(i32 %24, i64 %28)
  %30 = load i32, i32* @RxDisable, align 4
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @EL3_CMD, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 %30, i64 %34)
  %36 = load i32, i32* @TxDisable, align 4
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @EL3_CMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outw(i32 %36, i64 %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %23
  %47 = load i32, i32* @StopCoax, align 4
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @EL3_CMD, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %47, i64 %51)
  br label %66

53:                                               ; preds = %23
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = call i32 @EL3WINDOW(i32 4)
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @WN4_MEDIA, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outw(i32 0, i64 %63)
  br label %65

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %65, %46
  %67 = call i32 @EL3WINDOW(i32 0)
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @WN0_IRQ, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 3840, i64 %71)
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @EL3_STATUS, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @inw(i64 %76)
  %78 = and i32 %77, 57344
  %79 = icmp eq i32 %78, 8192
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @update_stats(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %66
  br label %84

84:                                               ; preds = %83, %1
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %86 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = call i32 @netif_stop_queue(%struct.net_device* %89)
  %91 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %92 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %91, i32 0, i32 0
  %93 = call i32 @del_timer_sync(i32* %92)
  ret i32 0
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @update_stats(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
