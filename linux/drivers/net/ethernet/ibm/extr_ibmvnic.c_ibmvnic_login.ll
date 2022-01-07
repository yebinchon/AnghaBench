; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i64, i32, i32 }

@IBMVNIC_MAX_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Login attempts exceeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unable to login\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Login timed out\0A\00", align 1
@PARTIALSUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Received partial success, retrying...\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Capabilities query timed out\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SCRQ initialization failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"SCRQ irq initialization failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Adapter login failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ibmvnic_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_login(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ibmvnic_adapter* %10, %struct.ibmvnic_adapter** %4, align 8
  %11 = call i64 @msecs_to_jiffies(i32 30000)
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %97, %1
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @IBMVNIC_MAX_QUEUES, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_warn(%struct.net_device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %106

19:                                               ; preds = %12
  %20 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 2
  %24 = call i32 @reinit_completion(i32* %23)
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %26 = call i32 @send_login(%struct.ibmvnic_adapter* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @netdev_warn(%struct.net_device* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %19
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 2
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @wait_for_completion_timeout(i32* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @netdev_warn(%struct.net_device* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %106

42:                                               ; preds = %33
  %43 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PARTIALSUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %52 = call i32 @release_sub_crqs(%struct.ibmvnic_adapter* %51, i32 1)
  store i32 1, i32* %7, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @netdev_dbg(%struct.net_device* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 2
  %59 = call i32 @reinit_completion(i32* %58)
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %61 = call i32 @send_cap_queries(%struct.ibmvnic_adapter* %60)
  %62 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %62, i32 0, i32 2
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @wait_for_completion_timeout(i32* %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %48
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @netdev_warn(%struct.net_device* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %106

70:                                               ; preds = %48
  %71 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %72 = call i32 @init_sub_crqs(%struct.ibmvnic_adapter* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netdev_warn(%struct.net_device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %106

78:                                               ; preds = %70
  %79 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %80 = call i32 @init_sub_crq_irqs(%struct.ibmvnic_adapter* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i32 @netdev_warn(%struct.net_device* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %106

86:                                               ; preds = %78
  br label %96

87:                                               ; preds = %42
  %88 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %89 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @netdev_warn(%struct.net_device* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %106

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %12, label %100

100:                                              ; preds = %97
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @__ibmvnic_set_mac(%struct.net_device* %101, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %92, %83, %75, %67, %39, %29, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @send_login(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @release_sub_crqs(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @send_cap_queries(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_sub_crqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_sub_crq_irqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @__ibmvnic_set_mac(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
