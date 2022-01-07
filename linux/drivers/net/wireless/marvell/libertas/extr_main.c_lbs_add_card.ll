; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_add_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_add_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i32, i32, %struct.wireless_dev*, i32, i8*, %struct.net_device*, %struct.wireless_dev* }
%struct.net_device = type { i32, i32, i32, i32*, i32*, %struct.lbs_private*, %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.net_device*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"cfg80211 init failed\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to initialize adapter structure\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"no memory for network device instance\0A\00", align 1
@lbs_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@lbs_ethtool_ops = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Starting main thread...\0A\00", align 1
@lbs_thread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"lbs_main\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Error creating main thread.\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"lbs_worker\00", align 1
@lbs_set_mcast_worker = common dso_local global i32 0, align 4
@EHS_REMOVE_WAKEUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lbs_private* @lbs_add_card(i8* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.lbs_private*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.lbs_private* null, %struct.lbs_private** %8, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.wireless_dev* @lbs_cfg_alloc(%struct.device* %10)
  store %struct.wireless_dev* %11, %struct.wireless_dev** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %13 = call i64 @IS_ERR(%struct.wireless_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.wireless_dev* %16)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %130

19:                                               ; preds = %2
  %20 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %24 = call %struct.lbs_private* @wdev_priv(%struct.wireless_dev* %23)
  store %struct.lbs_private* %24, %struct.lbs_private** %8, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %26 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 10
  store %struct.wireless_dev* %25, %struct.wireless_dev** %27, align 8
  %28 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %29 = call i32 @lbs_init_adapter(%struct.lbs_private* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %127

34:                                               ; preds = %19
  %35 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %36 = load i32, i32* @ether_setup, align 4
  %37 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  store %struct.net_device* %37, %struct.net_device** %6, align 8
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %124

45:                                               ; preds = %34
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 6
  store %struct.wireless_dev* %46, %struct.wireless_dev** %48, align 8
  %49 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 5
  store %struct.lbs_private* %49, %struct.lbs_private** %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 @SET_NETDEV_DEV(%struct.net_device* %52, %struct.device* %53)
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 0
  store %struct.net_device* %55, %struct.net_device** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 9
  store %struct.net_device* %58, %struct.net_device** %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 4
  store i32* @lbs_netdev_ops, i32** %62, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 5, %63
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 3
  store i32* @lbs_ethtool_ops, i32** %68, align 8
  %69 = load i32, i32* @IFF_BROADCAST, align 4
  %70 = load i32, i32* @IFF_MULTICAST, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %78 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcpy(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 @lbs_deb_thread(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 7
  %86 = call i32 @init_waitqueue_head(i32* %85)
  %87 = load i32, i32* @lbs_thread, align 4
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = call %struct.wireless_dev* @kthread_run(i32 %87, %struct.net_device* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %90 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %91 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %90, i32 0, i32 6
  store %struct.wireless_dev* %89, %struct.wireless_dev** %91, align 8
  %92 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 6
  %94 = load %struct.wireless_dev*, %struct.wireless_dev** %93, align 8
  %95 = call i64 @IS_ERR(%struct.wireless_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %45
  %98 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %99 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %98, i32 0, i32 6
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %99, align 8
  %101 = call i32 @PTR_ERR(%struct.wireless_dev* %100)
  store i32 %101, i32* %9, align 4
  %102 = call i32 @lbs_deb_thread(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %121

103:                                              ; preds = %45
  %104 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %105 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %106 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %108 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %107, i32 0, i32 4
  %109 = load i32, i32* @lbs_set_mcast_worker, align 4
  %110 = call i32 @INIT_WORK(i32* %108, i32 %109)
  %111 = load i32, i32* @EHS_REMOVE_WAKEUP, align 4
  %112 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %113 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %115 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %114, i32 0, i32 0
  store i32 255, i32* %115, align 8
  %116 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %117 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %116, i32 0, i32 1
  store i32 20, i32* %117, align 4
  %118 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %119 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  store %struct.lbs_private* %120, %struct.lbs_private** %3, align 8
  br label %133

121:                                              ; preds = %97
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = call i32 @free_netdev(%struct.net_device* %122)
  br label %124

124:                                              ; preds = %121, %40
  %125 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %126 = call i32 @lbs_free_adapter(%struct.lbs_private* %125)
  br label %127

127:                                              ; preds = %124, %32
  %128 = load %struct.lbs_private*, %struct.lbs_private** %8, align 8
  %129 = call i32 @lbs_cfg_free(%struct.lbs_private* %128)
  br label %130

130:                                              ; preds = %127, %15
  %131 = load i32, i32* %9, align 4
  %132 = call %struct.lbs_private* @ERR_PTR(i32 %131)
  store %struct.lbs_private* %132, %struct.lbs_private** %3, align 8
  br label %133

133:                                              ; preds = %130, %103
  %134 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  ret %struct.lbs_private* %134
}

declare dso_local %struct.wireless_dev* @lbs_cfg_alloc(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.lbs_private* @wdev_priv(%struct.wireless_dev*) #1

declare dso_local i32 @lbs_init_adapter(%struct.lbs_private*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @lbs_deb_thread(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.wireless_dev* @kthread_run(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @lbs_free_adapter(%struct.lbs_private*) #1

declare dso_local i32 @lbs_cfg_free(%struct.lbs_private*) #1

declare dso_local %struct.lbs_private* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
