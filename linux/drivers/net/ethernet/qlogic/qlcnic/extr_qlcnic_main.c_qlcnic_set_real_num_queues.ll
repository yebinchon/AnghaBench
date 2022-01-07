; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_set_real_num_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_set_real_num_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to set %d Tx queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set %d Rx queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_set_real_num_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_real_num_queues(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
