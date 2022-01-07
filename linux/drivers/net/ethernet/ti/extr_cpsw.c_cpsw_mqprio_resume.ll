; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_mqprio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_mqprio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_slave = type { i32 }
%struct.cpsw_priv = type { i32, i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i64 }

@CPSW_FIFO_SHAPERS_NUM = common dso_local global i32 0, align 4
@CPSW_VERSION_1 = common dso_local global i64 0, align 8
@CPSW1_TX_PRI_MAP = common dso_local global i32 0, align 4
@CPSW2_TX_PRI_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_slave*, %struct.cpsw_priv*)* @cpsw_mqprio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_mqprio_resume(%struct.cpsw_slave* %0, %struct.cpsw_priv* %1) #0 {
  %3 = alloca %struct.cpsw_slave*, align 8
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca %struct.cpsw_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpsw_slave* %0, %struct.cpsw_slave** %3, align 8
  store %struct.cpsw_priv* %1, %struct.cpsw_priv** %4, align 8
  %11 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %11, i32 0, i32 2
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %12, align 8
  store %struct.cpsw_common* %13, %struct.cpsw_common** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %25 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @netdev_get_prio_tc_map(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @CPSW_FIFO_SHAPERS_NUM, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 4, %33
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %43 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CPSW_VERSION_1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @CPSW1_TX_PRI_MAP, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @CPSW2_TX_PRI_MAP, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %10, align 4
  %53 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @slave_write(%struct.cpsw_slave* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %18
  ret void
}

declare dso_local i32 @netdev_get_prio_tc_map(i32, i32) #1

declare dso_local i32 @slave_write(%struct.cpsw_slave*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
