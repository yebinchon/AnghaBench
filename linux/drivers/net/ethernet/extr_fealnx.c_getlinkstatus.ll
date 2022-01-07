; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_getlinkstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_getlinkstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i64, i32*, i64 }

@MysonPHY = common dso_local global i64 0, align 8
@BMCRSR = common dso_local global i64 0, align 8
@LinkIsUp2 = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @getlinkstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getlinkstatus(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  store i32 4096, i32* %5, align 4
  %8 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MysonPHY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %22 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BMCRSR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @ioread32(i64 %25)
  %27 = load i32, i32* @LinkIsUp2, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %65

33:                                               ; preds = %20
  %34 = call i32 @udelay(i32 100)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %16

38:                                               ; preds = %16
  br label %65

39:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %47 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MII_BMSR, align 4
  %52 = call i32 @mdio_read(%struct.net_device* %45, i32 %50, i32 %51)
  %53 = load i32, i32* @BMSR_LSTATUS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %65

59:                                               ; preds = %44
  %60 = call i32 @udelay(i32 100)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %40

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %30, %56, %64, %38
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
