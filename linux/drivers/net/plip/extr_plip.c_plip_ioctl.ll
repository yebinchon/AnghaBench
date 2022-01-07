; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.net_local = type { i32, i32 }
%struct.plipconf = type { i32, i32, i32 }

@SIOCDEVPLIP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @plip_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_local*, align 8
  %9 = alloca %struct.plipconf*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.net_local* @netdev_priv(%struct.net_device* %10)
  store %struct.net_local* %11, %struct.net_local** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.plipconf*
  store %struct.plipconf* %14, %struct.plipconf** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SIOCDEVPLIP, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.plipconf*, %struct.plipconf** %9, align 8
  %23 = getelementptr inbounds %struct.plipconf, %struct.plipconf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %54 [
    i32 129, label %25
    i32 128, label %36
  ]

25:                                               ; preds = %21
  %26 = load %struct.net_local*, %struct.net_local** %8, align 8
  %27 = getelementptr inbounds %struct.net_local, %struct.net_local* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.plipconf*, %struct.plipconf** %9, align 8
  %30 = getelementptr inbounds %struct.plipconf, %struct.plipconf* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.net_local*, %struct.net_local** %8, align 8
  %32 = getelementptr inbounds %struct.net_local, %struct.net_local* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.plipconf*, %struct.plipconf** %9, align 8
  %35 = getelementptr inbounds %struct.plipconf, %struct.plipconf* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %57

36:                                               ; preds = %21
  %37 = load i32, i32* @CAP_NET_ADMIN, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %58

43:                                               ; preds = %36
  %44 = load %struct.plipconf*, %struct.plipconf** %9, align 8
  %45 = getelementptr inbounds %struct.plipconf, %struct.plipconf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.net_local*, %struct.net_local** %8, align 8
  %48 = getelementptr inbounds %struct.net_local, %struct.net_local* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.plipconf*, %struct.plipconf** %9, align 8
  %50 = getelementptr inbounds %struct.plipconf, %struct.plipconf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_local*, %struct.net_local** %8, align 8
  %53 = getelementptr inbounds %struct.net_local, %struct.net_local* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %21
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %43, %25
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54, %40, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
