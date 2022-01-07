; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_dlci.c_dlci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_dlci.c_dlci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.dlci_local = type { %struct.net_device* }
%struct.frad_local = type { i32 (%struct.net_device*, %struct.net_device*)* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dlci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlci_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dlci_local*, align 8
  %5 = alloca %struct.frad_local*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i8* @netdev_priv(%struct.net_device* %7)
  %9 = bitcast i8* %8 to %struct.dlci_local*
  store %struct.dlci_local* %9, %struct.dlci_local** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i16*
  %14 = load i16, i16* %13, align 2
  %15 = icmp ne i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load %struct.dlci_local*, %struct.dlci_local** %4, align 8
  %21 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOTCONN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.dlci_local*, %struct.dlci_local** %4, align 8
  %30 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %29, i32 0, i32 0
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = call i8* @netdev_priv(%struct.net_device* %31)
  %33 = bitcast i8* %32 to %struct.frad_local*
  store %struct.frad_local* %33, %struct.frad_local** %5, align 8
  %34 = load %struct.frad_local*, %struct.frad_local** %5, align 8
  %35 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.net_device*, %struct.net_device*)** %35, align 8
  %37 = load %struct.dlci_local*, %struct.dlci_local** %4, align 8
  %38 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %37, i32 0, i32 0
  %39 = load %struct.net_device*, %struct.net_device** %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 %36(%struct.net_device* %39, %struct.net_device* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %28
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @netif_start_queue(%struct.net_device* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %44, %25, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
