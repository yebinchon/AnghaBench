; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_mids_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_mids_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { i32, %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }
%struct.net_device = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"[%d] %pM %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"[%d] unused\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mids_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mids_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  store %struct.wil6210_priv* %11, %struct.wil6210_priv** %5, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %47, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %18 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 1
  %23 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %23, i64 %25
  %27 = load %struct.wil6210_vif*, %struct.wil6210_vif** %26, align 8
  store %struct.wil6210_vif* %27, %struct.wil6210_vif** %6, align 8
  %28 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %29 = icmp ne %struct.wil6210_vif* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %32 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %31)
  store %struct.net_device* %32, %struct.net_device** %7, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  br label %46

42:                                               ; preds = %20
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %52 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
