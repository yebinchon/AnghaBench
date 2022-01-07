; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_do_change_param_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_do_change_param_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32*, i64, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_rwi = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Change param resetting driver (%d)\0A\00", align 1
@VNIC_OPEN = common dso_local global i64 0, align 8
@VNIC_PROBED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't initialize crq. rc=%d\0A\00", align 1
@IBMVNIC_INIT_FAILED = common dso_local global i32 0, align 4
@VNIC_CLOSED = common dso_local global i64 0, align 8
@IBMVNIC_OPEN_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_rwi*, i64)* @do_change_param_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_change_param_reset(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_rwi* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.ibmvnic_rwi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %5, align 8
  store %struct.ibmvnic_rwi* %1, %struct.ibmvnic_rwi** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 3
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  %17 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %6, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_rwi, %struct.ibmvnic_rwi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_dbg(%struct.net_device* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %6, align 8
  %24 = getelementptr inbounds %struct.ibmvnic_rwi, %struct.ibmvnic_rwi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call i32 @ibmvnic_cleanup(%struct.net_device* %28)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @VNIC_OPEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call i32 @__ibmvnic_close(%struct.net_device* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %129

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %43 = call i32 @release_resources(%struct.ibmvnic_adapter* %42)
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %45 = call i32 @release_sub_crqs(%struct.ibmvnic_adapter* %44, i32 1)
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %47 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %46)
  %48 = load i64, i64* @VNIC_PROBED, align 8
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %52 = call i32 @init_crq_queue(%struct.ibmvnic_adapter* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %56, i32 0, i32 3
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @netdev_err(%struct.net_device* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %129

62:                                               ; preds = %41
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %64 = call i32 @ibmvnic_reset_init(%struct.ibmvnic_adapter* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @IBMVNIC_INIT_FAILED, align 4
  store i32 %68, i32* %4, align 4
  br label %129

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @VNIC_PROBED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %129

74:                                               ; preds = %69
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = call i32 @ibmvnic_login(%struct.net_device* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %129

84:                                               ; preds = %74
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %86 = call i32 @init_resources(%struct.ibmvnic_adapter* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %129

91:                                               ; preds = %84
  %92 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %93 = call i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter* %92)
  %94 = load i64, i64* @VNIC_CLOSED, align 8
  %95 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @VNIC_CLOSED, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %4, align 4
  br label %129

101:                                              ; preds = %91
  %102 = load %struct.net_device*, %struct.net_device** %8, align 8
  %103 = call i32 @__ibmvnic_open(%struct.net_device* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @IBMVNIC_OPEN_FAILED, align 4
  store i32 %107, i32* %4, align 4
  br label %129

108:                                              ; preds = %101
  %109 = load %struct.net_device*, %struct.net_device** %8, align 8
  %110 = call i32 @ibmvnic_set_multi(%struct.net_device* %109)
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %125, %108
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @napi_schedule(i32* %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %111

128:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %106, %100, %89, %79, %73, %67, %55, %38
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_cleanup(%struct.net_device*) #1

declare dso_local i32 @__ibmvnic_close(%struct.net_device*) #1

declare dso_local i32 @release_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_sub_crqs(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @release_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ibmvnic_reset_init(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_login(%struct.net_device*) #1

declare dso_local i32 @init_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @__ibmvnic_open(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_set_multi(%struct.net_device*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
