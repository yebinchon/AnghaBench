; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_enable_net_traffic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_enable_net_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@MII_LPA = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@mii_mode = common dso_local global i64 0, align 8
@loopback = common dso_local global i64 0, align 8
@EthCtrl0 = common dso_local global i32 0, align 4
@usb_dev_id = common dso_local global %struct.TYPE_8__* null, align 8
@VENDOR_LINKSYS = common dso_local global i64 0, align 8
@VENDOR_LINKSYS2 = common dso_local global i64 0, align 8
@VENDOR_DLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.usb_device*)* @enable_net_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_net_traffic(%struct.net_device* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MII_LPA, align 4
  %17 = call i32 @read_mii_word(%struct.TYPE_7__* %12, i32 %15, i32 %16, i32* %5)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 200, i32* %18, align 16
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ADVERTISE_100FULL, align 4
  %22 = load i32, i32* @ADVERTISE_10FULL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 32
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ADVERTISE_100FULL, align 4
  %33 = load i32, i32* @ADVERTISE_100HALF, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 16
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i64, i64* @mii_mode, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i64, i64* @loopback, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 9, i32 1
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %56 = call i32 @memcpy(i32 %54, i32* %55, i32 16)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = load i32, i32* @EthCtrl0, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %60 = call i32 @set_registers(%struct.TYPE_7__* %57, i32 %58, i32 3, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dev_id, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @VENDOR_LINKSYS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %46
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dev_id, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VENDOR_LINKSYS2, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @usb_dev_id, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VENDOR_DLINK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80, %70, %46
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = call i32 @read_mii_word(%struct.TYPE_7__* %91, i32 0, i32 27, i32* %9)
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, 4
  store i32 %94, i32* %9, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = call i32 @write_mii_word(%struct.TYPE_7__* %95, i32 0, i32 27, i32* %9)
  br label %97

97:                                               ; preds = %90, %80
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @read_mii_word(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @set_registers(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @write_mii_word(%struct.TYPE_7__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
