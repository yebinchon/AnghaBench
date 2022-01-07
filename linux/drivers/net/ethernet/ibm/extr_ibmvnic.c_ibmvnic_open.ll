; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i64, i64 }

@VNIC_OPEN = common dso_local global i64 0, align 8
@VNIC_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to initialize resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ibmvnic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ibmvnic_adapter* %7, %struct.ibmvnic_adapter** %4, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @VNIC_OPEN, align 8
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  store i32 0, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VNIC_CLOSED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @ibmvnic_login(%struct.net_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %31 = call i32 @init_resources(%struct.ibmvnic_adapter* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %38 = call i32 @release_resources(%struct.ibmvnic_adapter* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @__ibmvnic_open(%struct.net_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %34, %27, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_login(%struct.net_device*) #1

declare dso_local i32 @init_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @release_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @__ibmvnic_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
