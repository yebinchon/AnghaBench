; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@EADDRINUSE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FDB_AGE_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vxlan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vxlan_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.vxlan_dev* %7, %struct.vxlan_dev** %4, align 8
  %8 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %9 = call i32 @vxlan_sock_add(%struct.vxlan_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %16 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i64 @vxlan_addr_multicast(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %22 = call i32 @vxlan_igmp_join(%struct.vxlan_dev* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EADDRINUSE, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %33 = call i32 @vxlan_sock_release(%struct.vxlan_dev* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %38 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.vxlan_dev*, %struct.vxlan_dev** %4, align 8
  %44 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %43, i32 0, i32 0
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @FDB_AGE_INTERVAL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @mod_timer(i32* %44, i64 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %31, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxlan_sock_add(%struct.vxlan_dev*) #1

declare dso_local i64 @vxlan_addr_multicast(i32*) #1

declare dso_local i32 @vxlan_igmp_join(%struct.vxlan_dev*) #1

declare dso_local i32 @vxlan_sock_release(%struct.vxlan_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
