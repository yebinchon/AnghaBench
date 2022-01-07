; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x__link_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x__link_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32*, i32, i8**, i8**, i8**, i32, %struct.bnx2x* }
%struct.TYPE_4__ = type { i32*, i32* }

@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@STATS_EVENT_LINK_UP = common dso_local global i32 0, align 4
@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_2500baseX_Full = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@BNX2X_FLOW_CTRL_NONE = common dso_local global i8* null, align 8
@SPEED_10000 = common dso_local global i8* null, align 8
@SWITCH_CFG_10G = common dso_local global i32 0, align 4
@MAC_TYPE_BMAC = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@LINK_STATUS_SPEED_AND_DUPLEX_10GTFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x__link_status_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %147

9:                                                ; preds = %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i64 @IS_PF(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = call i32 @bnx2x_dcbx_pmf_update(%struct.bnx2x* %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 2
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 1
  %20 = call i32 @bnx2x_link_status_update(%struct.TYPE_5__* %17, %struct.TYPE_6__* %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i32, i32* @STATS_EVENT_LINK_UP, align 4
  %29 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %27, i32 %28)
  br label %34

30:                                               ; preds = %13
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = load i32, i32* @STATS_EVENT_STOP, align 4
  %33 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = call i32 @bnx2x_link_report(%struct.bnx2x* %35)
  br label %147

37:                                               ; preds = %9
  %38 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %39 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SUPPORTED_2500baseX_Full, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SUPPORTED_TP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SUPPORTED_Pause, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %60
  store i32 %67, i32* %65, align 4
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %73, i32* %78, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %81 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  store %struct.bnx2x* %79, %struct.bnx2x** %82, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %84 = call i32 @BP_PORT(%struct.bnx2x* %83)
  %85 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %86 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 8
  %88 = load i8*, i8** @DUPLEX_FULL, align 8
  %89 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %88, i8** %93, align 8
  %94 = load i8*, i8** @BNX2X_FLOW_CTRL_NONE, align 8
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %94, i8** %99, align 8
  %100 = load i8*, i8** @SPEED_10000, align 8
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %100, i8** %105, align 8
  %106 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 8323072, i32* %110, align 4
  %111 = load i32, i32* @SWITCH_CFG_10G, align 4
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* @MAC_TYPE_BMAC, align 4
  %116 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %117 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  store i32 %115, i32* %118, align 8
  %119 = load i8*, i8** @SPEED_10000, align 8
  %120 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %121 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i8* %119, i8** %122, align 8
  %123 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %124 = load i32, i32* @LINK_STATUS_SPEED_AND_DUPLEX_10GTFD, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %127 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %130 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i8*, i8** @DUPLEX_FULL, align 8
  %133 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %134 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  store i8* %132, i8** %135, align 8
  %136 = load i8*, i8** @BNX2X_FLOW_CTRL_NONE, align 8
  %137 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  %140 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %141 = call i32 @__bnx2x_link_report(%struct.bnx2x* %140)
  %142 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %143 = call i32 @bnx2x_sample_bulletin(%struct.bnx2x* %142)
  %144 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %145 = load i32, i32* @STATS_EVENT_LINK_UP, align 4
  %146 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %144, i32 %145)
  br label %147

147:                                              ; preds = %8, %37, %34
  ret void
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_pmf_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_status_update(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @__bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sample_bulletin(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
