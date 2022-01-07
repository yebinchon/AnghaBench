; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }
%struct.octeon_mgmt = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Link is up - %d/%s\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @octeon_mgmt_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_mgmt*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_mgmt* %8, %struct.octeon_mgmt** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = icmp ne %struct.phy_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %108

15:                                               ; preds = %1
  %16 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %16, i32 0, i32 3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %26 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %24, %15
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  %36 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %37 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %35
  %44 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %45 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51, %43, %35
  %60 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %61 = call i32 @octeon_mgmt_disable_link(%struct.octeon_mgmt* %60)
  store i32 1, i32* %6, align 4
  %62 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %63 = call i32 @octeon_mgmt_update_link(%struct.octeon_mgmt* %62)
  %64 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %65 = call i32 @octeon_mgmt_enable_link(%struct.octeon_mgmt* %64)
  br label %66

66:                                               ; preds = %59, %51, %30
  %67 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %71 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %73 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %76 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %81 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %82, i32 0, i32 3
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %66
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DUPLEX_FULL, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %103 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %95, i8* %102)
  br label %107

104:                                              ; preds = %88
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %91
  br label %108

108:                                              ; preds = %14, %107, %66
  ret void
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @octeon_mgmt_disable_link(%struct.octeon_mgmt*) #1

declare dso_local i32 @octeon_mgmt_update_link(%struct.octeon_mgmt*) #1

declare dso_local i32 @octeon_mgmt_enable_link(%struct.octeon_mgmt*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
