; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_mqprio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_mqprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_mqprio_qopt_offload = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32*, i64 }
%struct.cpsw_priv = type { i64, %struct.cpsw_common* }
%struct.cpsw_common = type { i64, i32, %struct.cpsw_slave* }
%struct.cpsw_slave = type { i32 }

@CPSW_TC_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TC_MQPRIO_MODE_DCB = common dso_local global i64 0, align 8
@TX_PRIORITY_MAPPING = common dso_local global i32 0, align 4
@CPSW_VERSION_1 = common dso_local global i64 0, align 8
@CPSW1_TX_PRI_MAP = common dso_local global i32 0, align 4
@CPSW2_TX_PRI_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @cpsw_set_mqprio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_set_mqprio(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tc_mqprio_qopt_offload*, align 8
  %7 = alloca %struct.cpsw_priv*, align 8
  %8 = alloca %struct.cpsw_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cpsw_slave*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.tc_mqprio_qopt_offload*
  store %struct.tc_mqprio_qopt_offload* %19, %struct.tc_mqprio_qopt_offload** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %20)
  store %struct.cpsw_priv* %21, %struct.cpsw_priv** %7, align 8
  %22 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %23 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %22, i32 0, i32 1
  %24 = load %struct.cpsw_common*, %struct.cpsw_common** %23, align 8
  store %struct.cpsw_common* %24, %struct.cpsw_common** %8, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %26 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CPSW_TC_NUM, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %162

35:                                               ; preds = %2
  %36 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %37 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TC_MQPRIO_MODE_DCB, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %162

44:                                               ; preds = %35
  %45 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %46 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pm_runtime_get_sync(i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %53 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pm_runtime_put_noidle(i32 %54)
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %3, align 4
  br label %162

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %119

60:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %66 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @cpsw_tc_to_fifo(i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %15, align 4
  %78 = mul nsw i32 4, %77
  %79 = shl i32 %76, %78
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %64
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @netdev_set_num_tc(%struct.net_device* %86, i32 %87)
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %115, %85
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %89
  %94 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %95 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %11, align 4
  %102 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %103 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %12, align 4
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @netdev_set_tc_queue(%struct.net_device* %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %93
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %89

118:                                              ; preds = %89
  br label %119

119:                                              ; preds = %118, %57
  %120 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %121 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %119
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = call i32 @netdev_reset_tc(%struct.net_device* %126)
  %128 = load i32, i32* @TX_PRIORITY_MAPPING, align 4
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %125, %119
  %130 = load %struct.tc_mqprio_qopt_offload*, %struct.tc_mqprio_qopt_offload** %6, align 8
  %131 = getelementptr inbounds %struct.tc_mqprio_qopt_offload, %struct.tc_mqprio_qopt_offload* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %135 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %137 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CPSW_VERSION_1, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* @CPSW1_TX_PRI_MAP, align 4
  br label %145

143:                                              ; preds = %129
  %144 = load i32, i32* @CPSW2_TX_PRI_MAP, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  store i32 %146, i32* %12, align 4
  %147 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %148 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %147, i32 0, i32 2
  %149 = load %struct.cpsw_slave*, %struct.cpsw_slave** %148, align 8
  %150 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %151 = load %struct.cpsw_priv*, %struct.cpsw_priv** %7, align 8
  %152 = call i64 @cpsw_slave_index(%struct.cpsw_common* %150, %struct.cpsw_priv* %151)
  %153 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %149, i64 %152
  store %struct.cpsw_slave* %153, %struct.cpsw_slave** %13, align 8
  %154 = load %struct.cpsw_slave*, %struct.cpsw_slave** %13, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @slave_write(%struct.cpsw_slave* %154, i32 %155, i32 %156)
  %158 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %159 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @pm_runtime_put_sync(i32 %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %145, %51, %41, %32
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cpsw_tc_to_fifo(i32, i32) #1

declare dso_local i32 @netdev_set_num_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @netdev_reset_tc(%struct.net_device*) #1

declare dso_local i64 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @slave_write(%struct.cpsw_slave*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
