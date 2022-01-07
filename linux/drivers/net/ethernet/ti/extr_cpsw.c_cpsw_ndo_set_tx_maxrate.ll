; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_set_tx_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_set_tx_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.cpsw_slave*, %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32 }
%struct.cpsw_slave = type { %struct.net_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"The channel rate cannot be less than %dMbps\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"The channel rate cannot be more than 2Gbps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @cpsw_ndo_set_tx_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_set_tx_maxrate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpsw_priv*, align 8
  %9 = alloca %struct.cpsw_common*, align 8
  %10 = alloca %struct.cpsw_slave*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.cpsw_priv* %16, %struct.cpsw_priv** %8, align 8
  %17 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %18 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %17, i32 0, i32 1
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %18, align 8
  store %struct.cpsw_common* %19, %struct.cpsw_common** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.TYPE_6__* @netdev_get_tx_queue(%struct.net_device* %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 1000
  store i32 %31, i32* %12, align 4
  %32 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %33 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpdma_chan_get_min_rate(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %44 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %130

50:                                               ; preds = %39, %29
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %53 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %58 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %130

63:                                               ; preds = %50
  %64 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %65 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pm_runtime_get_sync(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %72 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pm_runtime_put_noidle(i32 %73)
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %4, align 4
  br label %130

76:                                               ; preds = %63
  %77 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %78 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %77, i32 0, i32 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @cpdma_chan_set_rate(i32 %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %88 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pm_runtime_put(i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %4, align 4
  br label %130

95:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %123, %95
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %99 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %96
  %104 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %105 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %104, i32 0, i32 1
  %106 = load %struct.cpsw_slave*, %struct.cpsw_slave** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %106, i64 %108
  store %struct.cpsw_slave* %109, %struct.cpsw_slave** %10, align 8
  %110 = load %struct.cpsw_slave*, %struct.cpsw_slave** %10, align 8
  %111 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %110, i32 0, i32 0
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = icmp ne %struct.net_device* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  br label %123

115:                                              ; preds = %103
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.cpsw_slave*, %struct.cpsw_slave** %10, align 8
  %118 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %117, i32 0, i32 0
  %119 = load %struct.net_device*, %struct.net_device** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call %struct.TYPE_6__* @netdev_get_tx_queue(%struct.net_device* %119, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %114
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %96

126:                                              ; preds = %96
  %127 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %128 = call i32 @cpsw_split_res(%struct.cpsw_common* %127)
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %93, %70, %56, %42, %28
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_6__* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @cpdma_chan_get_min_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @cpdma_chan_set_rate(i32, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @cpsw_split_res(%struct.cpsw_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
