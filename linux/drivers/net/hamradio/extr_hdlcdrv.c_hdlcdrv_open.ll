; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlcdrv_state = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 (%struct.net_device*)* }
%struct.TYPE_11__ = type { i32, i64, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hdlcdrv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcdrv_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hdlcdrv_state*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.hdlcdrv_state* @netdev_priv(%struct.net_device* %6)
  store %struct.hdlcdrv_state* %7, %struct.hdlcdrv_state** %4, align 8
  %8 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %9 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %14 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.net_device*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %92

22:                                               ; preds = %12
  %23 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %24 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %26 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %30 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %34 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %37 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %40 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %44 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %48 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %51 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %54 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %57 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %60 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %63 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %66 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %69 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %73 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %76 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %79 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %81, align 8
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = call i32 %82(%struct.net_device* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %22
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %92

89:                                               ; preds = %22
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @netif_start_queue(%struct.net_device* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %87, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.hdlcdrv_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
