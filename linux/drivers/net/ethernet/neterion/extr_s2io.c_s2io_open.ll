; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.s2io_nic = type { i32, i64, i64, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.swStat }
%struct.swStat = type { i32 }

@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: H/W initialization failed\0A\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Set Mac Address Failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MSI_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @s2io_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca %struct.swStat*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.s2io_nic* %8, %struct.s2io_nic** %4, align 8
  %9 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %10 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.swStat* %13, %struct.swStat** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %17 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %19 = call i32 @s2io_card_up(%struct.s2io_nic* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* @ERR_DBG, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %46

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @do_s2io_prog_unicast(%struct.net_device* %29, i32 %32)
  %34 = load i64, i64* @FAILURE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @ERR_DBG, align 4
  %38 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %40 = call i32 @s2io_card_down(%struct.s2io_nic* %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %45 = call i32 @s2io_start_all_tx_queue(%struct.s2io_nic* %44)
  store i32 0, i32* %2, align 4
  br label %98

46:                                               ; preds = %36, %22
  %47 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %48 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MSI_X, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %46
  %54 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %55 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %60 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @kfree(i64 %61)
  %63 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %64 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = load %struct.swStat*, %struct.swStat** %5, align 8
  %69 = getelementptr inbounds %struct.swStat, %struct.swStat* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  br label %74

74:                                               ; preds = %58, %53
  %75 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %76 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %81 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @kfree(i64 %82)
  %84 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %85 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = load %struct.swStat*, %struct.swStat** %5, align 8
  %90 = getelementptr inbounds %struct.swStat, %struct.swStat* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  br label %95

95:                                               ; preds = %79, %74
  br label %96

96:                                               ; preds = %95, %46
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %43
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @s2io_card_up(%struct.s2io_nic*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

declare dso_local i64 @do_s2io_prog_unicast(%struct.net_device*, i32) #1

declare dso_local i32 @s2io_card_down(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_start_all_tx_queue(%struct.s2io_nic*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
