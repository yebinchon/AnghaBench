; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.can_bittiming, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@IFI_CANFD_TIME_TIMEB_OFF = common dso_local global i32 0, align 4
@IFI_CANFD_TIME_TIMEA_OFF = common dso_local global i32 0, align 4
@IFI_CANFD_TIME_PRESCALE_OFF = common dso_local global i32 0, align 4
@IFI_CANFD_TIME_SJW_OFF_7_9_8_8 = common dso_local global i32 0, align 4
@IFI_CANFD_TIME = common dso_local global i64 0, align 8
@IFI_CANFD_FTIME = common dso_local global i64 0, align 8
@IFI_CANFD_TDELAY_MASK = common dso_local global i32 0, align 4
@IFI_CANFD_TDELAY_EN = common dso_local global i32 0, align 4
@IFI_CANFD_TDELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ifi_canfd_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifi_canfd_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ifi_canfd_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ifi_canfd_priv* %12, %struct.ifi_canfd_priv** %3, align 8
  %13 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.can_bittiming* %15, %struct.can_bittiming** %4, align 8
  %16 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.can_bittiming* %18, %struct.can_bittiming** %5, align 8
  %19 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %20 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %6, align 4
  %23 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %24 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %28 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IFI_CANFD_TIME_TIMEB_OFF, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IFI_CANFD_TIME_TIMEA_OFF, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @IFI_CANFD_TIME_PRESCALE_OFF, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IFI_CANFD_TIME_SJW_OFF_7_9_8_8, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IFI_CANFD_TIME, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %61 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %6, align 4
  %64 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %65 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %69 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %72 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %70, %73
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %77 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 2
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @IFI_CANFD_TIME_TIMEB_OFF, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IFI_CANFD_TIME_TIMEA_OFF, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @IFI_CANFD_TIME_PRESCALE_OFF, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @IFI_CANFD_TIME_SJW_OFF_7_9_8_8, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  %95 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %96 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IFI_CANFD_FTIME, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %102 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %105 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %108 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = mul nsw i32 %103, %110
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @IFI_CANFD_TDELAY_MASK, align 4
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @IFI_CANFD_TDELAY_EN, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %119 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IFI_CANFD_TDELAY, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  ret void
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
