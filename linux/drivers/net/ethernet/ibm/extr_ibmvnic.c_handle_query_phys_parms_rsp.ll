; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_phys_parms_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_phys_parms_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error %d in QUERY_PHYS_PARMS\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_25000 = common dso_local global i32 0, align 4
@SPEED_40000 = common dso_local global i32 0, align 4
@SPEED_50000 = common dso_local global i32 0, align 4
@SPEED_100000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown speed 0x%08x\0A\00", align 1
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IBMVNIC_FULL_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@IBMVNIC_HALF_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_query_phys_parms_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_query_phys_parms_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ibmvnic_crq*, align 8
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %4, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %5, align 8
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %13 = bitcast %union.ibmvnic_crq* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cpu_to_be32(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %18 = bitcast %union.ibmvnic_crq* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %63 [
    i32 132, label %31
    i32 134, label %35
    i32 131, label %39
    i32 133, label %43
    i32 130, label %47
    i32 129, label %51
    i32 128, label %55
    i32 135, label %59
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @SPEED_10, align 4
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %75

35:                                               ; preds = %29
  %36 = load i32, i32* @SPEED_100, align 4
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %75

39:                                               ; preds = %29
  %40 = load i32, i32* @SPEED_1000, align 4
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %75

43:                                               ; preds = %29
  %44 = load i32, i32* @SPEED_10000, align 4
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %75

47:                                               ; preds = %29
  %48 = load i32, i32* @SPEED_25000, align 4
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %75

51:                                               ; preds = %29
  %52 = load i32, i32* @SPEED_40000, align 4
  %53 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %75

55:                                               ; preds = %29
  %56 = load i32, i32* @SPEED_50000, align 4
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %75

59:                                               ; preds = %29
  %60 = load i32, i32* @SPEED_100000, align 4
  %61 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %29
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = call i32 @netif_carrier_ok(%struct.net_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @netdev_warn(%struct.net_device* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @SPEED_UNKNOWN, align 4
  %73 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %59, %55, %51, %47, %43, %39, %35, %31
  %76 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %77 = bitcast %union.ibmvnic_crq* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IBMVNIC_FULL_DUPLEX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* @DUPLEX_FULL, align 4
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %104

87:                                               ; preds = %75
  %88 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %89 = bitcast %union.ibmvnic_crq* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IBMVNIC_HALF_DUPLEX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @DUPLEX_HALF, align 4
  %97 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %98 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %87
  %100 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %101 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %24
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
