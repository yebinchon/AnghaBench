; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bdx_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @ENTER, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %15 = add nsw i32 %14, 15
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bdx_ioctl_priv(%struct.net_device* %18, %struct.ifreq* %19, i32 %20)
  %22 = call i32 @RET(i32 %21)
  br label %27

23:                                               ; preds = %12, %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @RET(i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @RET(i32) #1

declare dso_local i32 @bdx_ioctl_priv(%struct.net_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
