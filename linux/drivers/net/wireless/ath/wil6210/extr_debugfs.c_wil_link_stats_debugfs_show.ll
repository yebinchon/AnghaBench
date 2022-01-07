; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_debugfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_debugfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { i32, %struct.wil6210_vif** }
%struct.wil6210_vif = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"MID %d \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unused\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @wil_link_stats_debugfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_link_stats_debugfs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil6210_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  store %struct.wil6210_priv* %12, %struct.wil6210_priv** %6, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock_interruptible(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %24 = call i32 @GET_MAX_VIFS(%struct.wil6210_priv* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %27, i32 0, i32 1
  %29 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %29, i64 %31
  %33 = load %struct.wil6210_vif*, %struct.wil6210_vif** %32, align 8
  store %struct.wil6210_vif* %33, %struct.wil6210_vif** %7, align 8
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %38 = icmp ne %struct.wil6210_vif* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %46

42:                                               ; preds = %26
  %43 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 @wil_link_stats_debugfs_show_vif(%struct.wil6210_vif* %43, %struct.seq_file* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %51 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @wil_link_stats_debugfs_show_vif(%struct.wil6210_vif*, %struct.seq_file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
