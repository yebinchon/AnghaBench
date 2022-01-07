; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_unregister_qpls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_unregister_qpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to unregister queue page list %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*)* @gve_unregister_qpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_unregister_qpls(%struct.gve_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  %7 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %8 = call i32 @gve_num_tx_qpls(%struct.gve_priv* %7)
  %9 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %10 = call i32 @gve_num_rx_qpls(%struct.gve_priv* %9)
  %11 = add nsw i32 %8, %10
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %18 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %19 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gve_adminq_unregister_page_list(%struct.gve_priv* %17, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %16
  %30 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %31 = load i32, i32* @drv, align 4
  %32 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %33 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %36 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_err(%struct.gve_priv* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @gve_num_tx_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_num_rx_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_adminq_unregister_page_list(%struct.gve_priv*, i32) #1

declare dso_local i32 @netif_err(%struct.gve_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
