; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_rx_coal_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_rx_coal_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.enic = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.enic_rx_coal }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.enic_rx_coal = type { i32, i32, i32, i32 }

@ENIC_LINK_SPEED_10G = common dso_local global i32 0, align 4
@ENIC_LINK_40G_INDEX = common dso_local global i32 0, align 4
@ENIC_LINK_SPEED_4G = common dso_local global i32 0, align 4
@ENIC_LINK_10G_INDEX = common dso_local global i32 0, align 4
@ENIC_LINK_4G_INDEX = common dso_local global i32 0, align 4
@mod_range = common dso_local global %struct.TYPE_6__* null, align 8
@ENIC_RX_COALESCE_RANGE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*)* @enic_set_rx_coal_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_set_rx_coal_setting(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.enic_rx_coal*, align 8
  store %struct.enic* %0, %struct.enic** %2, align 8
  store i32 -1, i32* %4, align 4
  %6 = load %struct.enic*, %struct.enic** %2, align 8
  %7 = getelementptr inbounds %struct.enic, %struct.enic* %6, i32 0, i32 4
  store %struct.enic_rx_coal* %7, %struct.enic_rx_coal** %5, align 8
  %8 = load %struct.enic*, %struct.enic** %2, align 8
  %9 = getelementptr inbounds %struct.enic, %struct.enic* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @vnic_dev_port_speed(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @ENIC_LINK_SPEED_10G, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENIC_LINK_40G_INDEX, align 4
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @ENIC_LINK_SPEED_4G, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @ENIC_LINK_10G_INDEX, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @ENIC_LINK_4G_INDEX, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mod_range, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %34 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mod_range, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %42 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ENIC_RX_COALESCE_RANGE_END, align 4
  %44 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %45 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %64, %26
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.enic*, %struct.enic** %2, align 8
  %49 = getelementptr inbounds %struct.enic, %struct.enic* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.enic*, %struct.enic** %2, align 8
  %54 = getelementptr inbounds %struct.enic, %struct.enic* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.enic*, %struct.enic** %2, align 8
  %58 = getelementptr inbounds %struct.enic, %struct.enic* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.enic_rx_coal*, %struct.enic_rx_coal** %5, align 8
  %69 = getelementptr inbounds %struct.enic_rx_coal, %struct.enic_rx_coal* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  ret void
}

declare dso_local i32 @vnic_dev_port_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
