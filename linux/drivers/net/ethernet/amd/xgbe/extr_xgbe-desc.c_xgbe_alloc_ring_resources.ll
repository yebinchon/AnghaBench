; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_alloc_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_alloc_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, %struct.xgbe_channel** }
%struct.xgbe_channel = type { i32, i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s - Tx ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error initializing Tx ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s - Rx ring:\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"error initializing Rx ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_alloc_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_alloc_ring_resources(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %71, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %7
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 4
  %16 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %16, i64 %18
  %20 = load %struct.xgbe_channel*, %struct.xgbe_channel** %19, align 8
  store %struct.xgbe_channel* %20, %struct.xgbe_channel** %4, align 8
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %22 = load i32, i32* @drv, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netif_dbg(%struct.xgbe_prv_data* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %31 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %32 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xgbe_init_ring(%struct.xgbe_prv_data* %30, i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %13
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netdev_alert(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %75

45:                                               ; preds = %13
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %47 = load i32, i32* @drv, align 4
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %52 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_dbg(%struct.xgbe_prv_data* %46, i32 %47, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %60 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @xgbe_init_ring(%struct.xgbe_prv_data* %55, i32 %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netdev_alert(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %75

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %7

74:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %79

75:                                               ; preds = %65, %40
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %77 = call i32 @xgbe_free_ring_resources(%struct.xgbe_prv_data* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32) #1

declare dso_local i32 @xgbe_init_ring(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @netdev_alert(i32, i8*) #1

declare dso_local i32 @xgbe_free_ring_resources(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
