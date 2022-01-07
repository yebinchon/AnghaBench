; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_failover_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_failover_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@H_VIOCTL = common dso_local global i32 0, align 4
@H_GET_SESSION_TOKEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't retrieve session token, rc %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Initiating client failover, session id %llx\0A\00", align 1
@H_SESSION_ERR_DETECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Client initiated failover failed, rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @failover_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @failover_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ibmvnic_adapter*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.net_device* @dev_get_drvdata(%struct.device* %17)
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %19)
  store %struct.ibmvnic_adapter* %20, %struct.ibmvnic_adapter** %11, align 8
  %21 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @sysfs_streq(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

31:                                               ; preds = %4
  %32 = load i32, i32* @H_VIOCTL, align 4
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %11, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @H_GET_SESSION_TOKEN, align 4
  %39 = call i64 @plpar_hcall(i32 %32, i64* %24, i32 %37, i32 %38, i32 0, i32 0, i32 0)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

48:                                               ; preds = %31
  %49 = getelementptr inbounds i64, i64* %24, i64 0
  %50 = load i64, i64* %49, align 16
  store i64 %50, i64* %14, align 8
  %51 = load %struct.net_device*, %struct.net_device** %10, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @be64_to_cpu(i64 %52)
  %54 = call i32 @netdev_dbg(%struct.net_device* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @H_VIOCTL, align 4
  %56 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %11, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @H_SESSION_ERR_DETECTED, align 4
  %62 = load i64, i64* %14, align 8
  %63 = call i64 @plpar_hcall_norets(i32 %55, i32 %60, i32 %61, i64 %62, i32 0, i32 0)
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %48
  %67 = load %struct.net_device*, %struct.net_device** %10, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @netdev_err(%struct.net_device* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @EINVAL, align 8
  %71 = sub i64 0, %70
  store i64 %71, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

72:                                               ; preds = %48
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %72, %66, %42, %28
  %75 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sysfs_streq(i8*, i8*) #1

declare dso_local i64 @plpar_hcall(i32, i64*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @be64_to_cpu(i64) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32, i64, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
