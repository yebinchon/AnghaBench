; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_get_stats_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_ethtool.c_ionic_get_stats_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ionic_lif*, i32**)* }
%struct.ionic_lif = type { i32 }

@ionic_num_stats_grps = common dso_local global i64 0, align 8
@ionic_stats_groups = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*, i32*)* @ionic_get_stats_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_get_stats_strings(%struct.ionic_lif* %0, i32* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @ionic_num_stats_grps, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ionic_stats_groups, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ionic_lif*, i32**)*, i32 (%struct.ionic_lif*, i32**)** %14, align 8
  %16 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %17 = call i32 %15(%struct.ionic_lif* %16, i32** %4)
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %5, align 8
  br label %6

21:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
