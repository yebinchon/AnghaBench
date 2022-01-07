; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_initial_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_initial_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.link_params, i32, %struct.TYPE_2__ }
%struct.link_params = type { i64*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@LOAD_DIAG = common dso_local global i32 0, align 4
@LOOPBACK_XGXS = common dso_local global i32 0, align 4
@SPEED_20000 = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_20G = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@LOAD_LOOPBACK_EXT = common dso_local global i32 0, align 4
@LOOPBACK_EXT = common dso_local global i32 0, align 4
@STATS_EVENT_LINK_UP = common dso_local global i32 0, align 4
@bnx2x_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Bootcode is missing - can not initialize link\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_initial_phy_init(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.link_params*, align 8
  %10 = alloca %struct.link_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = call i32 @BP_NOMCP(%struct.bnx2x* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %143, label %24

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = call i32 @bnx2x_set_requested_fc(%struct.bnx2x* %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @LOAD_DIAG, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %24
  %33 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  store %struct.link_params* %34, %struct.link_params** %9, align 8
  %35 = load i32, i32* @LOOPBACK_XGXS, align 4
  %36 = load %struct.link_params*, %struct.link_params** %9, align 8
  %37 = getelementptr inbounds %struct.link_params, %struct.link_params* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.link_params*, %struct.link_params** %9, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPEED_20000, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %32
  %48 = load %struct.link_params*, %struct.link_params** %9, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_20G, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load i64, i64* @SPEED_20000, align 8
  %60 = load %struct.link_params*, %struct.link_params** %9, align 8
  %61 = getelementptr inbounds %struct.link_params, %struct.link_params* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  br label %94

66:                                               ; preds = %47
  %67 = load %struct.link_params*, %struct.link_params** %9, align 8
  %68 = getelementptr inbounds %struct.link_params, %struct.link_params* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load i64, i64* @SPEED_10000, align 8
  %79 = load %struct.link_params*, %struct.link_params** %9, align 8
  %80 = getelementptr inbounds %struct.link_params, %struct.link_params* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %78, i64* %84, align 8
  br label %93

85:                                               ; preds = %66
  %86 = load i64, i64* @SPEED_1000, align 8
  %87 = load %struct.link_params*, %struct.link_params** %9, align 8
  %88 = getelementptr inbounds %struct.link_params, %struct.link_params* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %86, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93, %58
  br label %95

95:                                               ; preds = %94, %32
  br label %96

96:                                               ; preds = %95, %24
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @LOAD_LOOPBACK_EXT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 0
  store %struct.link_params* %102, %struct.link_params** %10, align 8
  %103 = load i32, i32* @LOOPBACK_EXT, align 4
  %104 = load %struct.link_params*, %struct.link_params** %10, align 8
  %105 = getelementptr inbounds %struct.link_params, %struct.link_params* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 0
  %109 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %110 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %109, i32 0, i32 2
  %111 = call i32 @bnx2x_phy_init(%struct.link_params* %108, %struct.TYPE_2__* %110)
  store i32 %111, i32* %6, align 4
  %112 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %113 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %112)
  %114 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %115 = call i32 @bnx2x_init_dropless_fc(%struct.bnx2x* %114)
  %116 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %117 = call i32 @bnx2x_calc_fc_adv(%struct.bnx2x* %116)
  %118 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %119 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %125 = load i32, i32* @STATS_EVENT_LINK_UP, align 4
  %126 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %124, i32 %125)
  %127 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %128 = call i32 @bnx2x_link_report(%struct.bnx2x* %127)
  br label %129

129:                                              ; preds = %123, %106
  %130 = load i32, i32* @bnx2x_wq, align 4
  %131 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %132 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %131, i32 0, i32 1
  %133 = call i32 @queue_delayed_work(i32 %130, i32* %132, i32 0)
  %134 = load i64, i64* %8, align 8
  %135 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.link_params, %struct.link_params* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  store i64 %134, i64* %141, align 8
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %147

143:                                              ; preds = %2
  %144 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %143, %129
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_requested_fc(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_phy_init(%struct.link_params*, %struct.TYPE_2__*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_dropless_fc(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_calc_fc_adv(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
