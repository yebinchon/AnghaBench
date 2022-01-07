; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.ace_private = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"acenic\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%i.%i.%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ace_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ace_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ace_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ace_private* %7, %struct.ace_private** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strlcpy(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %16 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %19 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %22 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %26 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ace_private*, %struct.ace_private** %5, align 8
  %34 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @pci_name(i64 %35)
  %37 = call i32 @strlcpy(i32 %32, i8* %36, i32 4)
  br label %38

38:                                               ; preds = %29, %2
  ret void
}

declare dso_local %struct.ace_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @pci_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
