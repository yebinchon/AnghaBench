; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_debugfs_show_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_debugfs_show_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i64, i32, i32 }
%struct.seq_file = type { i32 }
%struct.wil6210_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.wmi_link_stats_basic }
%struct.wmi_link_stats_basic = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"no statistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"TSF %lld\0A\00", align 1
@wil_sta_unused = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_vif*, %struct.seq_file*)* @wil_link_stats_debugfs_show_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_link_stats_debugfs_show_vif(%struct.wil6210_vif* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wmi_link_stats_basic*, align 8
  %7 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %9 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %8)
  store %struct.wil6210_priv* %9, %struct.wil6210_priv** %5, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %20 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %67, %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %23
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @wil_sta_unused, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %67

41:                                               ; preds = %29
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %43 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %51 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %67

55:                                               ; preds = %41
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %57 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store %struct.wmi_link_stats_basic* %62, %struct.wmi_link_stats_basic** %6, align 8
  %63 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %66 = call i32 @wil_link_stats_print_basic(%struct.wil6210_vif* %63, %struct.seq_file* %64, %struct.wmi_link_stats_basic* %65)
  br label %67

67:                                               ; preds = %55, %54, %40
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %23

70:                                               ; preds = %14, %23
  ret void
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @wil_link_stats_print_basic(%struct.wil6210_vif*, %struct.seq_file*, %struct.wmi_link_stats_basic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
