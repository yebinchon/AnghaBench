; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_probe_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_probe_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Probe phy can't get phy capabilities (rc: %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Probe phy can't update link (rc: %x)\0A\00", align 1
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE = common dso_local global i32 0, align 4
@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_probe_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_probe_phy(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_link_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 2
  store %struct.bnxt_link_info* %9, %struct.bnxt_link_info** %7, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %11 = call i32 @bnxt_hwrm_phy_qcaps(%struct.bnxt* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %126

21:                                               ; preds = %2
  %22 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %23 = call i32 @bnxt_update_link(%struct.bnxt* %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %126

33:                                               ; preds = %21
  %34 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %35 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %40 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %45 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %48 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %47, i32 0, i32 12
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %38, %33
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %126

53:                                               ; preds = %49
  %54 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %55 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @BNXT_AUTO_MODE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %53
  %60 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %61 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %62 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %65, 66049
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %69 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %76 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %77 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %67
  br label %87

81:                                               ; preds = %59
  %82 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %83 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %84 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %80
  %88 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %89 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %92 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %91, i32 0, i32 9
  store i64 %90, i64* %92, align 8
  br label %104

93:                                               ; preds = %53
  %94 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %95 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %98 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %100 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %103 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %93, %87
  %105 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %106 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %113 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BNXT_LINK_PAUSE_BOTH, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %118 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  br label %125

119:                                              ; preds = %104
  %120 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %121 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %7, align 8
  %124 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %119, %111
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %52, %26, %14
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @bnxt_hwrm_phy_qcaps(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnxt_update_link(%struct.bnxt*, i32) #1

declare dso_local i64 @BNXT_AUTO_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
