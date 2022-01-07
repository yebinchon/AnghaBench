; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_drv_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_drv_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.board_info = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dm9000_drv_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9000_drv_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.board_info*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.net_device* @dev_get_drvdata(%struct.device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.board_info* @netdev_priv(%struct.net_device* %7)
  store %struct.board_info* %8, %struct.board_info** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i64 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.board_info*, %struct.board_info** %4, align 8
  %17 = getelementptr inbounds %struct.board_info, %struct.board_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @dm9000_init_dm9000(%struct.net_device* %21)
  %23 = load %struct.board_info*, %struct.board_info** %4, align 8
  %24 = call i32 @dm9000_unmask_interrupts(%struct.board_info* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netif_device_attach(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %25, %11
  %29 = load %struct.board_info*, %struct.board_info** %4, align 8
  %30 = getelementptr inbounds %struct.board_info, %struct.board_info* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dm9000_init_dm9000(%struct.net_device*) #1

declare dso_local i32 @dm9000_unmask_interrupts(%struct.board_info*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
