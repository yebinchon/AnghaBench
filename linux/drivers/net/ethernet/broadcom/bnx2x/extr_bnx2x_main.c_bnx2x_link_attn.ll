; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_link_attn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_link_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.host_port_stats = type { i32* }

@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@MAC_TYPE_EMAC = common dso_local global i64 0, align 8
@port_stats = common dso_local global i32 0, align 4
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@STATS_EVENT_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_link_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_link_attn(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.host_port_stats*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = load i32, i32* @STATS_EVENT_STOP, align 4
  %6 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %4, i32 %5)
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 2
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 1
  %11 = call i32 @bnx2x_link_update(i32* %8, %struct.TYPE_2__* %10)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i32 @bnx2x_init_dropless_fc(%struct.bnx2x* %12)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAC_TYPE_EMAC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i32, i32* @port_stats, align 4
  %29 = call %struct.host_port_stats* @bnx2x_sp(%struct.bnx2x* %27, i32 %28)
  store %struct.host_port_stats* %29, %struct.host_port_stats** %3, align 8
  %30 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %31 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @memset(i32* %33, i32 0, i32 4)
  br label %35

35:                                               ; preds = %26, %19
  %36 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = load i32, i32* @STATS_EVENT_LINK_UP, align 4
  %44 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = call i32 @bnx2x_set_local_cmng(%struct.bnx2x* %59)
  br label %61

61:                                               ; preds = %58, %52, %46
  %62 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %63 = call i32 @__bnx2x_link_report(%struct.bnx2x* %62)
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = call i64 @IS_MF(%struct.bnx2x* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %69 = call i32 @bnx2x_link_sync_notify(%struct.bnx2x* %68)
  br label %70

70:                                               ; preds = %67, %61
  ret void
}

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_update(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @bnx2x_init_dropless_fc(%struct.bnx2x*) #1

declare dso_local %struct.host_port_stats* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bnx2x_set_local_cmng(%struct.bnx2x*) #1

declare dso_local i32 @__bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_sync_notify(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
