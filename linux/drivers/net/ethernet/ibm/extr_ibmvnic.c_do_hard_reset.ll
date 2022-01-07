; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_do_hard_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_do_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i64, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_rwi = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Hard resetting driver (%d)\0A\00", align 1
@VNIC_PROBED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't initialize crq. rc=%d\0A\00", align 1
@VNIC_CLOSED = common dso_local global i64 0, align 8
@IBMVNIC_OPEN_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_rwi*, i64)* @do_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hard_reset(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_rwi* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.ibmvnic_rwi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %5, align 8
  store %struct.ibmvnic_rwi* %1, %struct.ibmvnic_rwi** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %6, align 8
  %17 = getelementptr inbounds %struct.ibmvnic_rwi, %struct.ibmvnic_rwi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netdev_dbg(%struct.net_device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %6, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_rwi, %struct.ibmvnic_rwi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call i32 @ibmvnic_cleanup(%struct.net_device* %27)
  %29 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %30 = call i32 @release_resources(%struct.ibmvnic_adapter* %29)
  %31 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %32 = call i32 @release_sub_crqs(%struct.ibmvnic_adapter* %31, i32 0)
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %34 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %33)
  %35 = load i64, i64* @VNIC_PROBED, align 8
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %38, i32 0, i32 2
  %40 = call i32 @reinit_completion(i32* %39)
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %42 = call i32 @init_crq_queue(%struct.ibmvnic_adapter* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %46, i32 0, i32 1
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %98

52:                                               ; preds = %3
  %53 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %54 = call i32 @ibmvnic_init(%struct.ibmvnic_adapter* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %98

59:                                               ; preds = %52
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @VNIC_PROBED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %98

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = call i32 @ibmvnic_login(%struct.net_device* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* @VNIC_PROBED, align 8
  %71 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  store i32 0, i32* %4, align 4
  br label %98

73:                                               ; preds = %64
  %74 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %75 = call i32 @init_resources(%struct.ibmvnic_adapter* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %73
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %82 = call i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter* %81)
  %83 = load i64, i64* @VNIC_CLOSED, align 8
  %84 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @VNIC_CLOSED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %98

90:                                               ; preds = %80
  %91 = load %struct.net_device*, %struct.net_device** %8, align 8
  %92 = call i32 @__ibmvnic_open(%struct.net_device* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @IBMVNIC_OPEN_FAILED, align 4
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %95, %89, %78, %69, %63, %57, %45
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_cleanup(%struct.net_device*) #1

declare dso_local i32 @release_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_sub_crqs(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @release_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @init_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ibmvnic_init(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_login(%struct.net_device*) #1

declare dso_local i32 @init_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @__ibmvnic_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
