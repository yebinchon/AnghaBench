; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i64 }
%struct.sxgbe_priv_data = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@SXGBE_SPEED_10G = common dso_local global i32 0, align 4
@SXGBE_SPEED_2_5G = common dso_local global i32 0, align 4
@SXGBE_SPEED_1G = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Speed (%d) not supported\0A\00", align 1
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sxgbe_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sxgbe_priv_data*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.sxgbe_priv_data* %8, %struct.sxgbe_priv_data** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 255, i32* %6, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %97

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %15
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %25 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %38 [
    i32 129, label %32
    i32 128, label %34
    i32 130, label %36
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @SXGBE_SPEED_10G, align 4
  store i32 %33, i32* %6, align 4
  br label %46

34:                                               ; preds = %28
  %35 = load i32, i32* @SXGBE_SPEED_2_5G, align 4
  store i32 %35, i32* %6, align 4
  br label %46

36:                                               ; preds = %28
  %37 = load i32, i32* @SXGBE_SPEED_1G, align 4
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %28
  %39 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %40 = load i32, i32* @link, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netif_err(%struct.sxgbe_priv_data* %39, i32 %40, %struct.net_device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %36, %34, %32
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %51 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %53 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %60 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 %58(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %46, %20
  %65 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %66 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  store i32 1, i32* %5, align 4
  %70 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %71 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %85

73:                                               ; preds = %15
  %74 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %75 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  %79 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %80 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @SPEED_UNKNOWN, align 4
  %82 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %83 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %88 = call i32 @netif_msg_link(%struct.sxgbe_priv_data* %87)
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %93 = call i32 @phy_print_status(%struct.phy_device* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %96 = call i32 @sxgbe_eee_adjust(%struct.sxgbe_priv_data* %95)
  br label %97

97:                                               ; preds = %94, %14
  ret void
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.sxgbe_priv_data*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_msg_link(%struct.sxgbe_priv_data*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @sxgbe_eee_adjust(%struct.sxgbe_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
