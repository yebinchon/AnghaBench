; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_connect_local_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_connect_local_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.altera_tse_private = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@POLL_PHY = common dso_local global i64 0, align 8
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"trying to attach to %s\0A\00", align 1
@altera_tse_adjust_link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"No PHY found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_device* (%struct.net_device*)* @connect_local_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_device* @connect_local_phy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.altera_tse_private*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %10)
  store %struct.altera_tse_private* %11, %struct.altera_tse_private** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %12 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %13 = add nsw i32 %12, 3
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %18 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @POLL_PHY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %24 = add nsw i32 %23, 3
  %25 = load i8*, i8** @PHY_ID_FMT, align 8
  %26 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %27 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %32 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @snprintf(i8* %16, i32 %24, i8* %25, i32 %30, i64 %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netdev_dbg(%struct.net_device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %16)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %39 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.phy_device* @phy_connect(%struct.net_device* %37, i8* %16, i32* @altera_tse_adjust_link, i32 %40)
  store %struct.phy_device* %41, %struct.phy_device** %5, align 8
  %42 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %43 = call i64 @IS_ERR(%struct.phy_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  br label %48

48:                                               ; preds = %45, %22
  br label %73

49:                                               ; preds = %1
  %50 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %51 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call %struct.phy_device* @phy_find_first(%struct.TYPE_2__* %52)
  store %struct.phy_device* %53, %struct.phy_device** %5, align 8
  %54 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %55 = icmp eq %struct.phy_device* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  store %struct.phy_device* %59, %struct.phy_device** %2, align 8
  store i32 1, i32* %9, align 4
  br label %75

60:                                               ; preds = %49
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %63 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %64 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @phy_connect_direct(%struct.net_device* %61, %struct.phy_device* %62, i32* @altera_tse_adjust_link, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netdev_err(%struct.net_device* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  store %struct.phy_device* %74, %struct.phy_device** %2, align 8
  store i32 1, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %56
  %76 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  ret %struct.phy_device* %77
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i8*) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.phy_device* @phy_find_first(%struct.TYPE_2__*) #1

declare dso_local i32 @phy_connect_direct(%struct.net_device*, %struct.phy_device*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
