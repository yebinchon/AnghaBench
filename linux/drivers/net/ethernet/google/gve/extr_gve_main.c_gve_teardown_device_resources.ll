; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_teardown_device_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_teardown_device_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Could not deconfigure device resources: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*)* @gve_teardown_device_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_teardown_device_resources(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  %4 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %5 = call i64 @gve_get_device_resources_ok(%struct.gve_priv* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %9 = call i32 @gve_adminq_deconfigure_device_resources(%struct.gve_priv* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %14 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %20 = call i32 @gve_trigger_reset(%struct.gve_priv* %19)
  br label %21

21:                                               ; preds = %12, %7
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %24 = call i32 @gve_free_counter_array(%struct.gve_priv* %23)
  %25 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %26 = call i32 @gve_free_notify_blocks(%struct.gve_priv* %25)
  %27 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %28 = call i32 @gve_clear_device_resources_ok(%struct.gve_priv* %27)
  ret void
}

declare dso_local i64 @gve_get_device_resources_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_adminq_deconfigure_device_resources(%struct.gve_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gve_trigger_reset(%struct.gve_priv*) #1

declare dso_local i32 @gve_free_counter_array(%struct.gve_priv*) #1

declare dso_local i32 @gve_free_notify_blocks(%struct.gve_priv*) #1

declare dso_local i32 @gve_clear_device_resources_ok(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
