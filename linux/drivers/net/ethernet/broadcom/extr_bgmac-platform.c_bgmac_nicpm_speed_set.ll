; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_bgmac_nicpm_speed_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_bgmac_nicpm_speed_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bgmac = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NICPM_PADRING_CFG_INIT_VAL = common dso_local global i32 0, align 4
@NICPM_PADRING_CFG = common dso_local global i64 0, align 8
@NICPM_IOMUX_CTRL_INIT_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unsupported speed. Defaulting to 1000Mb\0A\00", align 1
@NICPM_IOMUX_CTRL_SPD_1000M = common dso_local global i32 0, align 4
@NICPM_IOMUX_CTRL_SPD_SHIFT = common dso_local global i32 0, align 4
@NICPM_IOMUX_CTRL_SPD_100M = common dso_local global i32 0, align 4
@NICPM_IOMUX_CTRL_SPD_10M = common dso_local global i32 0, align 4
@NICPM_IOMUX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bgmac_nicpm_speed_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_nicpm_speed_set(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bgmac* @netdev_priv(%struct.net_device* %5)
  store %struct.bgmac* %6, %struct.bgmac** %3, align 8
  %7 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %8 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  %14 = load i32, i32* @NICPM_PADRING_CFG_INIT_VAL, align 4
  %15 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %16 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NICPM_PADRING_CFG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %14, i64 %20)
  %22 = load i32, i32* @NICPM_IOMUX_CTRL_INIT_VAL, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %24 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %30 [
    i32 128, label %33
    i32 129, label %39
    i32 130, label %45
  ]

30:                                               ; preds = %13
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %13, %30
  %34 = load i32, i32* @NICPM_IOMUX_CTRL_SPD_1000M, align 4
  %35 = load i32, i32* @NICPM_IOMUX_CTRL_SPD_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %13
  %40 = load i32, i32* @NICPM_IOMUX_CTRL_SPD_100M, align 4
  %41 = load i32, i32* @NICPM_IOMUX_CTRL_SPD_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %51

45:                                               ; preds = %13
  %46 = load i32, i32* @NICPM_IOMUX_CTRL_SPD_10M, align 4
  %47 = load i32, i32* @NICPM_IOMUX_CTRL_SPD_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %39, %33
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %54 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NICPM_IOMUX_CTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %52, i64 %58)
  %60 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %61 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @bgmac_adjust_link(%struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %51, %12
  ret void
}

declare dso_local %struct.bgmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @bgmac_adjust_link(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
