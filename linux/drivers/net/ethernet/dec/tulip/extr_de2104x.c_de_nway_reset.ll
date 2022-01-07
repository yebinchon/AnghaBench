; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de_private = type { i64, i32 }

@DE_MEDIA_TP_AUTO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SIAStatus = common dso_local global i32 0, align 4
@NWayState = common dso_local global i32 0, align 4
@NWayRestart = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"link nway restart, status %x,%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.de_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de_private* %7, %struct.de_private** %4, align 8
  %8 = load %struct.de_private*, %struct.de_private** %4, align 8
  %9 = getelementptr inbounds %struct.de_private, %struct.de_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DE_MEDIA_TP_AUTO, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.de_private*, %struct.de_private** %4, align 8
  %18 = getelementptr inbounds %struct.de_private, %struct.de_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @netif_carrier_ok(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.de_private*, %struct.de_private** %4, align 8
  %24 = call i32 @de_link_down(%struct.de_private* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* @SIAStatus, align 4
  %27 = call i32 @dr32(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @SIAStatus, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NWayState, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @NWayRestart, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @dw32(i32 %28, i32 %34)
  %36 = load %struct.de_private*, %struct.de_private** %4, align 8
  %37 = load i32, i32* @link, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SIAStatus, align 4
  %41 = call i32 @dr32(i32 %40)
  %42 = call i32 @netif_info(%struct.de_private* %36, i32 %37, %struct.net_device* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %25, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @de_link_down(%struct.de_private*) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @netif_info(%struct.de_private*, i32, %struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
