; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_..nfp_app.h_nfp_app_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_..nfp_app.h_nfp_app_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.nfp_app*, i32, i32*)* @nfp_app_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @nfp_app_dev_get(%struct.nfp_app* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %9 = icmp ne %struct.nfp_app* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to %struct.net_device* (%struct.nfp_app*, i32, i32*)**
  %16 = load %struct.net_device* (%struct.nfp_app*, i32, i32*)*, %struct.net_device* (%struct.nfp_app*, i32, i32*)** %15, align 8
  %17 = icmp ne %struct.net_device* (%struct.nfp_app*, i32, i32*)* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %10, %3
  %20 = phi i1 [ true, %3 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %36

25:                                               ; preds = %19
  %26 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to %struct.net_device* (%struct.nfp_app*, i32, i32*)**
  %31 = load %struct.net_device* (%struct.nfp_app*, i32, i32*)*, %struct.net_device* (%struct.nfp_app*, i32, i32*)** %30, align 8
  %32 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.net_device* %31(%struct.nfp_app* %32, i32 %33, i32* %34)
  store %struct.net_device* %35, %struct.net_device** %4, align 8
  br label %36

36:                                               ; preds = %25, %24
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %37
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
