; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpmac_priv = type { i32, i32, i32 }

@CPMAC_MAC_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"host error %d on rx channel %d (macstatus %08x), resetting\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"host error %d on tx channel %d (macstatus %08x), resetting\0A\00", align 1
@CPMAC_MAC_INT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_check_status(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpmac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.cpmac_priv* %10, %struct.cpmac_priv** %3, align 8
  %11 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %12 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CPMAC_MAC_STATUS, align 4
  %15 = call i32 @cpmac_read(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 7
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 12
  %21 = and i32 %20, 15
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 7
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 20
  %27 = and i32 %26, 15
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %30, %1
  %34 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %35 = call i64 @netif_msg_drv(%struct.cpmac_priv* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = call i64 (...) @net_ratelimit()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @netdev_warn(%struct.net_device* %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @netdev_warn(%struct.net_device* %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58, %37, %33
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @cpmac_hw_stop(%struct.net_device* %62)
  %64 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %65 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %64, i32 0, i32 2
  %66 = call i64 @schedule_work(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %70 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %69, i32 0, i32 1
  %71 = call i32 @atomic_inc(i32* %70)
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %74 = call i32 @netif_msg_hw(%struct.cpmac_priv* %73)
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i32 @cpmac_dump_regs(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %30
  %82 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %83 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CPMAC_MAC_INT_CLEAR, align 4
  %86 = call i32 @cpmac_write(i32 %84, i32 %85, i32 255)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.cpmac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @cpmac_hw_stop(%struct.net_device*) #1

declare dso_local i64 @schedule_work(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_msg_hw(%struct.cpmac_priv*) #1

declare dso_local i32 @cpmac_dump_regs(%struct.net_device*) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
