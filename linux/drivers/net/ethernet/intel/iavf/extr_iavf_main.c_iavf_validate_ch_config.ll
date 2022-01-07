; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_validate_ch_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_validate_ch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tc_mqprio_qopt_offload = type { %struct.TYPE_4__, i32*, i64* }
%struct.TYPE_4__ = type { i32, i32*, i64* }

@IAVF_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Invalid min tx rate (greater than 0) specified\0A\00", align 1
@IAVF_MBPS_DIVISOR = common dso_local global i32 0, align 4
@IAVF_MAX_REQ_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, %struct.tc_mqprio_qopt_offload*)* @iavf_validate_ch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_validate_ch_config(%struct.iavf_adapter* %0, %struct.tc_mqprio_qopt_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca %struct.tc_mqprio_qopt_offload*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store %struct.tc_mqprio_qopt_offload* %1, %struct.tc_mqprio_qopt_offload** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %12 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IAVF_MAX_TRAFFIC_CLASS, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %19 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %116

26:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %101, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %30 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = icmp sle i32 %28, %33
  br i1 %34, label %35, label %104

35:                                               ; preds = %27
  %36 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %37 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %47 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45, %35
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %116

59:                                               ; preds = %45
  %60 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %61 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %70 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %116

76:                                               ; preds = %59
  %77 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %78 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IAVF_MBPS_DIVISOR, align 4
  %85 = call i64 @div_u64(i32 %83, i32 %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %6, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %6, align 8
  %89 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %5, align 8
  %90 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %76
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %27

104:                                              ; preds = %27
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @IAVF_MAX_REQ_QUEUES, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %116

111:                                              ; preds = %104
  %112 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @iavf_validate_tx_bandwidth(%struct.iavf_adapter* %112, i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %108, %68, %56, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @iavf_validate_tx_bandwidth(%struct.iavf_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
