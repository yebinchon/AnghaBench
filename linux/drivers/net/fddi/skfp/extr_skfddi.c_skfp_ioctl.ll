; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.s_skfp_ioctl = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ioctl for %s: unknown cmd: %04x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @skfp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skfp_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s_smc*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.s_skfp_ioctl, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.s_smc* @netdev_priv(%struct.net_device* %12)
  store %struct.s_smc* %13, %struct.s_smc** %8, align 8
  %14 = load %struct.s_smc*, %struct.s_smc** %8, align 8
  %15 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %14, i32 0, i32 0
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @copy_from_user(%struct.s_skfp_ioctl* %10, i32 %18, i32 12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.s_skfp_ioctl, %struct.s_skfp_ioctl* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %55 [
    i32 128, label %27
    i32 129, label %43
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.s_skfp_ioctl, %struct.s_skfp_ioctl* %10, i32 0, i32 1
  store i32 4, i32* %28, align 4
  %29 = getelementptr inbounds %struct.s_skfp_ioctl, %struct.s_skfp_ioctl* %10, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @skfp_ctl_get_stats(%struct.net_device* %31)
  %33 = getelementptr inbounds %struct.s_skfp_ioctl, %struct.s_skfp_ioctl* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @copy_to_user(i32 %30, i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  store i32 %42, i32* %11, align 4
  br label %64

43:                                               ; preds = %24
  %44 = load i32, i32* @CAP_NET_ADMIN, align 4
  %45 = call i32 @capable(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @EPERM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @memset(i32* %52, i32 0, i32 4)
  br label %54

54:                                               ; preds = %50, %47
  br label %64

55:                                               ; preds = %24
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.s_skfp_ioctl, %struct.s_skfp_ioctl* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60)
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %55, %54, %41
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.s_smc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.s_skfp_ioctl*, i32, i32) #1

declare dso_local i32 @copy_to_user(i32, i32, i32) #1

declare dso_local i32 @skfp_ctl_get_stats(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
