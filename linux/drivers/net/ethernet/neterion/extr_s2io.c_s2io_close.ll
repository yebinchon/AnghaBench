; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s2io_nic = type { %struct.config_param }
%struct.config_param = type { i32 }

@S2IO_DISABLE_MAC_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @s2io_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca %struct.config_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.s2io_nic* %9, %struct.s2io_nic** %4, align 8
  %10 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %11 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %10, i32 0, i32 0
  store %struct.config_param* %11, %struct.config_param** %5, align 8
  %12 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %13 = call i32 @is_s2io_card_up(%struct.s2io_nic* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %18 = call i32 @s2io_stop_all_tx_queue(%struct.s2io_nic* %17)
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %37, %16
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.config_param*, %struct.config_param** %5, align 8
  %22 = getelementptr inbounds %struct.config_param, %struct.config_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @do_s2io_read_unicast_mc(%struct.s2io_nic* %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @S2IO_DISABLE_MAC_ENTRY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @do_s2io_delete_unicast_mc(%struct.s2io_nic* %33, i64 %34)
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %42 = call i32 @s2io_card_down(%struct.s2io_nic* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_s2io_card_up(%struct.s2io_nic*) #1

declare dso_local i32 @s2io_stop_all_tx_queue(%struct.s2io_nic*) #1

declare dso_local i64 @do_s2io_read_unicast_mc(%struct.s2io_nic*, i32) #1

declare dso_local i32 @do_s2io_delete_unicast_mc(%struct.s2io_nic*, i64) #1

declare dso_local i32 @s2io_card_down(%struct.s2io_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
