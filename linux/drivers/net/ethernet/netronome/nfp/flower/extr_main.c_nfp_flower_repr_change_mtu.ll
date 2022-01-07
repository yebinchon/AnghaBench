; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_repr_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_repr_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32, %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_repr = type { %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@NFP_PORT_PHYS_PORT = common dso_local global i64 0, align 8
@NFP_FL_NBI_MTU_SETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Physical port MTU setting not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_FL_REPLY_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"MTU change not verified with fw\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32)* @nfp_flower_repr_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_repr_change_mtu(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_flower_priv*, align 8
  %9 = alloca %struct.nfp_repr*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 1
  %13 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %12, align 8
  store %struct.nfp_flower_priv* %13, %struct.nfp_flower_priv** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %14)
  store %struct.nfp_repr* %15, %struct.nfp_repr** %9, align 8
  %16 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %17 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NFP_PORT_PHYS_PORT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %113

24:                                               ; preds = %3
  %25 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NFP_FL_NBI_MTU_SETTING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %33 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nfp_err(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %113

38:                                               ; preds = %24
  %39 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %44 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %48 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %51 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %58 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %61 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @netif_carrier_ok(%struct.net_device* %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @nfp_flower_cmsg_portmod(%struct.nfp_repr* %64, i32 %66, i32 %67, i32 1)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %38
  %72 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %73 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %77 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %80 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %113

84:                                               ; preds = %38
  %85 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %86 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %90 = call i32 @nfp_flower_check_ack(%struct.nfp_flower_priv* %89)
  %91 = load i32, i32* @NFP_FL_REPLY_TIMEOUT, align 4
  %92 = call i32 @wait_event_timeout(i32 %88, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %84
  %95 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %96 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = call i32 @spin_lock_bh(i32* %97)
  %99 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %100 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %103 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %107 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @nfp_warn(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %84
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %94, %71, %31, %23
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_err(i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nfp_flower_cmsg_portmod(%struct.nfp_repr*, i32, i32, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @nfp_flower_check_ack(%struct.nfp_flower_priv*) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
