; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_add_pvc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_add_pvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.pvc_device*, i32, i8*, i8*, i32*, i32, i64 }
%struct.pvc_device = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Memory squeeze on fr_add_pvc()\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pvceth%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"pvc%d\00", align 1
@pvc_setup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Memory squeeze on fr_pvc()\0A\00", align 1
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@pvc_ops = common dso_local global i32 0, align 4
@HDLC_MAX_MTU = common dso_local global i8* null, align 8
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @fr_add_pvc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fr_add_pvc(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pvc_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32* @dev_to_hdlc(%struct.net_device* %12)
  store i32* %13, i32** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.pvc_device* @add_pvc(%struct.net_device* %14, i32 %15)
  store %struct.pvc_device* %16, %struct.pvc_device** %9, align 8
  %17 = icmp eq %struct.pvc_device* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netdev_warn(%struct.net_device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %129

23:                                               ; preds = %3
  %24 = load %struct.pvc_device*, %struct.pvc_device** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.net_device** @get_dev_p(%struct.pvc_device* %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %129

32:                                               ; preds = %23
  %33 = load %struct.pvc_device*, %struct.pvc_device** %9, align 8
  %34 = call i32 @pvc_is_used(%struct.pvc_device* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ARPHRD_ETHER, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %40 = load i32, i32* @ether_setup, align 4
  %41 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  store %struct.net_device* %41, %struct.net_device** %10, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %44 = load i32, i32* @pvc_setup, align 4
  %45 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  store %struct.net_device* %45, %struct.net_device** %10, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @netdev_warn(%struct.net_device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @delete_unused_pvcs(i32* %52)
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %129

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ARPHRD_ETHER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.net_device*, %struct.net_device** %10, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.net_device*, %struct.net_device** %10, align 8
  %68 = call i32 @eth_hw_addr_random(%struct.net_device* %67)
  br label %81

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @htons(i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %10, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  store i32 %71, i32* %75, align 4
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @dlci_to_q922(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %60
  %82 = load %struct.net_device*, %struct.net_device** %10, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 6
  store i32* @pvc_ops, i32** %83, align 8
  %84 = load i8*, i8** @HDLC_MAX_MTU, align 8
  %85 = load %struct.net_device*, %struct.net_device** %10, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %10, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  store i32 68, i32* %88, align 8
  %89 = load i8*, i8** @HDLC_MAX_MTU, align 8
  %90 = load %struct.net_device*, %struct.net_device** %10, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @IFF_NO_QUEUE, align 4
  %93 = load %struct.net_device*, %struct.net_device** %10, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.pvc_device*, %struct.pvc_device** %9, align 8
  %98 = load %struct.net_device*, %struct.net_device** %10, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 2
  store %struct.pvc_device* %97, %struct.pvc_device** %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %10, align 8
  %101 = call i64 @register_netdevice(%struct.net_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %81
  %104 = load %struct.net_device*, %struct.net_device** %10, align 8
  %105 = call i32 @free_netdev(%struct.net_device* %104)
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @delete_unused_pvcs(i32* %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %129

110:                                              ; preds = %81
  %111 = load %struct.net_device*, %struct.net_device** %10, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.net_device*, %struct.net_device** %10, align 8
  %114 = load %struct.pvc_device*, %struct.pvc_device** %9, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call %struct.net_device** @get_dev_p(%struct.pvc_device* %114, i32 %115)
  store %struct.net_device* %113, %struct.net_device** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %110
  %120 = load i32*, i32** %8, align 8
  %121 = call %struct.TYPE_2__* @state(i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = call %struct.TYPE_2__* @state(i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %119, %110
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %103, %49, %29, %18
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.pvc_device* @add_pvc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local %struct.net_device** @get_dev_p(%struct.pvc_device*, i32) #1

declare dso_local i32 @pvc_is_used(%struct.pvc_device*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @delete_unused_pvcs(i32*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dlci_to_q922(i32, i32) #1

declare dso_local i64 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
