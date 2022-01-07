; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GVE_MAX_ADMINQ_RELEASE_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unrecoverable platform error!\00", align 1
@GVE_ADMINQ_SLEEP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gve_adminq_release(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %5 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @iowrite32be(i32 0, i32* %7)
  br label %9

9:                                                ; preds = %22, %1
  %10 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %11 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i64 @ioread32be(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GVE_MAX_ADMINQ_RELEASE_CHECK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @GVE_ADMINQ_SLEEP_LEN, align 4
  %26 = call i32 @msleep(i32 %25)
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %29 = call i32 @gve_clear_device_rings_ok(%struct.gve_priv* %28)
  %30 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %31 = call i32 @gve_clear_device_resources_ok(%struct.gve_priv* %30)
  %32 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %33 = call i32 @gve_clear_admin_queue_ok(%struct.gve_priv* %32)
  ret void
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i64 @ioread32be(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gve_clear_device_rings_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_clear_device_resources_ok(%struct.gve_priv*) #1

declare dso_local i32 @gve_clear_admin_queue_ok(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
