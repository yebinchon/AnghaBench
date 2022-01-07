; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_repair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.de4x5_private = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@srom_repair_info = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @srom_repair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srom_repair(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.de4x5_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %34 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %11 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %10, i32 0, i32 1
  %12 = bitcast %struct.TYPE_2__* %11 to i8*
  %13 = call i32 @memset(i8* %12, i32 0, i32 4)
  %14 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %15 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i32 @memcpy(i32 %17, i8* %21, i32 %22)
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @srom_repair_info, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 127
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @memcpy(i32 %27, i8* %30, i32 100)
  %32 = load %struct.de4x5_private*, %struct.de4x5_private** %5, align 8
  %33 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %2, %9
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
