; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_check_coalesce_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_check_coalesce_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Check gl coalesce param fail. ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Check rl coalesce param fail. ret = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"adaptive-tx=%d and adaptive-rx=%d, tx_usecs or rx_usecs will changed dynamically.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @hns3_check_coalesce_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_check_coalesce_para(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %9 = call i32 @hns3_check_gl_coalesce_para(%struct.net_device* %7, %struct.ethtool_coalesce* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = call i32 @hns3_check_rl_coalesce_para(%struct.net_device* %18, %struct.ethtool_coalesce* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @netdev_err(%struct.net_device* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %17
  %29 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %33, %28
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netdev_info(%struct.net_device* %39, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %33
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %23, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @hns3_check_gl_coalesce_para(%struct.net_device*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @hns3_check_rl_coalesce_para(%struct.net_device*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
