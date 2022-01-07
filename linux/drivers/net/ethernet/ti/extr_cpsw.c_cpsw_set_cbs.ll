; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_cbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_set_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc_cbs_qopt_offload = type { i32, i64, i32 }
%struct.cpsw_priv = type { i32, i32, i32*, i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.cpsw_slave* }
%struct.cpsw_slave = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Last tc%d can't be rate limited\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Link speed is not known\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tc_cbs_qopt_offload*)* @cpsw_set_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_set_cbs(%struct.net_device* %0, %struct.tc_cbs_qopt_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tc_cbs_qopt_offload*, align 8
  %6 = alloca %struct.cpsw_priv*, align 8
  %7 = alloca %struct.cpsw_common*, align 8
  %8 = alloca %struct.cpsw_slave*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tc_cbs_qopt_offload* %1, %struct.tc_cbs_qopt_offload** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.cpsw_priv* %15, %struct.cpsw_priv** %6, align 8
  %16 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %17 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %16, i32 0, i32 4
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %17, align 8
  store %struct.cpsw_common* %18, %struct.cpsw_common** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %20 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tc_cbs_qopt_offload*, %struct.tc_cbs_qopt_offload** %5, align 8
  %23 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_txq_to_tc(i32 %21, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpsw_tc_to_fifo(i32 %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %2
  %34 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %35 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %164

41:                                               ; preds = %2
  %42 = load %struct.tc_cbs_qopt_offload*, %struct.tc_cbs_qopt_offload** %5, align 8
  %43 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %48 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %164

56:                                               ; preds = %46, %41
  %57 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %58 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %57, i32 0, i32 1
  %59 = load %struct.cpsw_slave*, %struct.cpsw_slave** %58, align 8
  %60 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %61 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %62 = call i64 @cpsw_slave_index(%struct.cpsw_common* %60, %struct.cpsw_priv* %61)
  %63 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %59, i64 %62
  store %struct.cpsw_slave* %63, %struct.cpsw_slave** %8, align 8
  %64 = load %struct.cpsw_slave*, %struct.cpsw_slave** %8, align 8
  %65 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %102

68:                                               ; preds = %56
  %69 = load %struct.cpsw_slave*, %struct.cpsw_slave** %8, align 8
  %70 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %77 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %82 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.cpsw_slave*, %struct.cpsw_slave** %8, align 8
  %85 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %83, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %92 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %80, %75
  %95 = load %struct.cpsw_slave*, %struct.cpsw_slave** %8, align 8
  %96 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %101 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %94, %68, %56
  %103 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %104 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %109 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %164

112:                                              ; preds = %102
  %113 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %114 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @pm_runtime_get_sync(i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %121 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pm_runtime_put_noidle(i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %164

125:                                              ; preds = %112
  %126 = load %struct.tc_cbs_qopt_offload*, %struct.tc_cbs_qopt_offload** %5, align 8
  %127 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.tc_cbs_qopt_offload*, %struct.tc_cbs_qopt_offload** %5, align 8
  %132 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  br label %135

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %130
  %136 = phi i32 [ %133, %130 ], [ 0, %134 ]
  store i32 %136, i32* %13, align 4
  %137 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @cpsw_set_fifo_rlimit(%struct.cpsw_priv* %137, i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %146 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %143, %135
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %155 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dev_warn(i32 %156, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %153, %150, %147
  %159 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %160 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @pm_runtime_put_sync(i32 %161)
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %158, %119, %107, %55, %33
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_txq_to_tc(i32, i32) #1

declare dso_local i32 @cpsw_tc_to_fifo(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cpsw_set_fifo_rlimit(%struct.cpsw_priv*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
