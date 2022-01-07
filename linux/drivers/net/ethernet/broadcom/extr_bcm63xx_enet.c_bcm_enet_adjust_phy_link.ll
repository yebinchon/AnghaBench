; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_adjust_phy_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_adjust_phy_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32, i32 }
%struct.bcm_enet_priv = type { i64, i64, i32, i32, i32, i32 }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s: link %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" - %d/%s - flow control %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rx&tx\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcm_enet_adjust_phy_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_adjust_phy_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_enet_priv* %9, %struct.bcm_enet_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DUPLEX_FULL, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 @bcm_enet_set_duplex(%struct.bcm_enet_priv* %40, i32 %47)
  store i32 1, i32* %5, align 4
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %53 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %39, %31, %26
  %55 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %64 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %59
  %68 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %87

73:                                               ; preds = %67
  %74 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %75 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %83 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %7, align 4
  br label %86

85:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %78
  br label %87

87:                                               ; preds = %86, %72
  %88 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @bcm_enet_set_flow(%struct.bcm_enet_priv* %88, i32 %89, i32 %90)
  store i32 1, i32* %5, align 4
  %92 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %96 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %87, %59, %54
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %97
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %110 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %103, i8* %109)
  %111 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %100
  %116 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %117 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* @DUPLEX_FULL, align 8
  %120 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %121 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %126 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %127 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 1
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %132 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %118, i8* %125, i8* %131)
  br label %133

133:                                              ; preds = %115, %100
  %134 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %97
  ret void
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_enet_set_duplex(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @bcm_enet_set_flow(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
