; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_set_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"setting link state %d\0A\00", align 1
@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@LOGICAL_LINK_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set link state\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"timeout setting link state\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to set link state, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, i32)* @set_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_link_state(%struct.ibmvnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ibmvnic_crq, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = call i64 @msecs_to_jiffies(i32 30000)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @netdev_dbg(%struct.net_device* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @memset(%union.ibmvnic_crq* %8, i32 0, i32 12)
  %19 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %20 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @LOGICAL_LINK_STATE, align 4
  %23 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %72, %2
  store i32 0, i32* %9, align 4
  %29 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %29, i32 0, i32 1
  %31 = call i32 @reinit_completion(i32* %30)
  %32 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %33 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %32, %union.ibmvnic_crq* %8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %76

40:                                               ; preds = %28
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @wait_for_completion_timeout(i32* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %76

49:                                               ; preds = %40
  %50 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @mdelay(i32 1000)
  store i32 1, i32* %9, align 4
  br label %71

56:                                               ; preds = %49
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netdev_warn(%struct.net_device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %3, align 4
  br label %76

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %28, label %75

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %61, %46, %36
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
