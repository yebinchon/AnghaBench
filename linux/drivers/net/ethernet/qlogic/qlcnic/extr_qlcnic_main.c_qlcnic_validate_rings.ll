; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_validate_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_validate_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.net_device* }
%struct.net_device = type { i32 }

@QLCNIC_RX_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SDS\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s rings value should be a power of 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_TX_QUEUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"No Multi Tx queue support\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"%s value[%u] should not be higher than, number of online CPUs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_validate_rings(%struct.qlcnic_adapter* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca [8 x i8], align 1
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @QLCNIC_RX_QUEUE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %22

19:                                               ; preds = %3
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @is_power_of_2(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %22
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %34 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @QLCNIC_TX_QUEUE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %42 = call i32 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %61

49:                                               ; preds = %40, %36, %32
  %50 = load i64, i64* %6, align 8
  %51 = call i64 (...) @num_online_cpus()
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %56 = call i64 (...) @num_online_cpus()
  %57 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %55, i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %53, %44, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i64 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
