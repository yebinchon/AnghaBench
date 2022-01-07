; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_ethtool_op_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_ethtool_op_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ethtool begin failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_ethtool_op_begin(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpsw_priv* %7, %struct.cpsw_priv** %3, align 8
  %8 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %8, i32 0, i32 0
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  store %struct.cpsw_common* %10, %struct.cpsw_common** %4, align 8
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %19 = load i32, i32* @drv, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cpsw_err(%struct.cpsw_priv* %18, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %23 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_put_noidle(i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cpsw_err(%struct.cpsw_priv*, i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
