; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.encx24j600_priv = type { i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"promiscuous mode\0A\00", align 1
@RXFILTER_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%smulticast mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"all-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXFILTER_MULTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"normal mode\0A\00", align 1
@RXFILTER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @encx24j600_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.encx24j600_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.encx24j600_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.encx24j600_priv* %6, %struct.encx24j600_priv** %3, align 8
  %7 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %8 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %18 = load i32, i32* @link, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 (%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.encx24j600_priv* %17, i32 %18, %struct.net_device* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @RXFILTER_PROMISC, align 4
  %22 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %23 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %60

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_ALLMULTI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netdev_mc_empty(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %37 = load i32, i32* @link, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %47 = call i32 (%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.encx24j600_priv* %36, i32 %37, %struct.net_device* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @RXFILTER_MULTI, align 4
  %49 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %50 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %59

51:                                               ; preds = %31
  %52 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %53 = load i32, i32* @link, align 4
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 (%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.encx24j600_priv* %52, i32 %53, %struct.net_device* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @RXFILTER_NORMAL, align 4
  %57 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %58 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %35
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %63 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %68 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %67, i32 0, i32 2
  %69 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %70 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %69, i32 0, i32 1
  %71 = call i32 @kthread_queue_work(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %66, %60
  ret void
}

declare dso_local %struct.encx24j600_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @kthread_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
