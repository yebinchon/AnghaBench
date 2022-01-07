; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_enc28j60_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enc28j60_net = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"promiscuous mode\0A\00", align 1
@RXFILTER_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%smulticast mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"all-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RXFILTER_MULTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"normal mode\0A\00", align 1
@RXFILTER_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @enc28j60_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enc28j60_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.enc28j60_net*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.enc28j60_net* @netdev_priv(%struct.net_device* %5)
  store %struct.enc28j60_net* %6, %struct.enc28j60_net** %3, align 8
  %7 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %8 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %18 = call i64 @netif_msg_link(%struct.enc28j60_net* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @RXFILTER_PROMISC, align 4
  %25 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %26 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %69

27:                                               ; preds = %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_ALLMULTI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @netdev_mc_empty(%struct.net_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %40 = call i64 @netif_msg_link(%struct.enc28j60_net* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_ALLMULTI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %52 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %42, %38
  %54 = load i32, i32* @RXFILTER_MULTI, align 4
  %55 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %56 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %68

57:                                               ; preds = %34
  %58 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %59 = call i64 @netif_msg_link(%struct.enc28j60_net* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* @RXFILTER_NORMAL, align 4
  %66 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %67 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %53
  br label %69

69:                                               ; preds = %68, %23
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %72 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.enc28j60_net*, %struct.enc28j60_net** %3, align 8
  %77 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %76, i32 0, i32 1
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %69
  ret void
}

declare dso_local %struct.enc28j60_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.enc28j60_net*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
