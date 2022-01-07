; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_destroy_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_destroy_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to destroy tx queue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"destroyed tx queue %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to destroy rx queue %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"destroyed rx queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*)* @gve_destroy_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_destroy_rings(%struct.gve_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %9 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %6
  %14 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @gve_adminq_destroy_tx_queue(%struct.gve_priv* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %21 = load i32, i32* @drv, align 4
  %22 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %23 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @netif_err(%struct.gve_priv* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %74

28:                                               ; preds = %13
  %29 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %30 = load i32, i32* @drv, align 4
  %31 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %32 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @netif_dbg(%struct.gve_priv* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %6

39:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %70, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %43 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %40
  %48 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @gve_adminq_destroy_rx_queue(%struct.gve_priv* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %55 = load i32, i32* @drv, align 4
  %56 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %57 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @netif_err(%struct.gve_priv* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %74

62:                                               ; preds = %47
  %63 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %64 = load i32, i32* @drv, align 4
  %65 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %66 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @netif_dbg(%struct.gve_priv* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %40

73:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %53, %19
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @gve_adminq_destroy_tx_queue(%struct.gve_priv*, i32) #1

declare dso_local i32 @netif_err(%struct.gve_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @netif_dbg(%struct.gve_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @gve_adminq_destroy_rx_queue(%struct.gve_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
