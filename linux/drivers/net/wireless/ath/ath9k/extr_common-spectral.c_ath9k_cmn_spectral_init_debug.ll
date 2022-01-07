; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath9k_cmn_spectral_init_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath9k_cmn_spectral_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_spec_scan_priv = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"spectral_scan\00", align 1
@rfs_spec_scan_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"spectral_scan_ctl\00", align 1
@fops_spec_scan_ctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"spectral_short_repeat\00", align 1
@fops_spectral_short_repeat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"spectral_count\00", align 1
@fops_spectral_count = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"spectral_period\00", align 1
@fops_spectral_period = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"spectral_fft_period\00", align 1
@fops_spectral_fft_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_spectral_init_debug(%struct.ath_spec_scan_priv* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.ath_spec_scan_priv*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.ath_spec_scan_priv* %0, %struct.ath_spec_scan_priv** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load %struct.dentry*, %struct.dentry** %4, align 8
  %6 = call i32 @relay_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dentry* %5, i32 1024, i32 256, i32* @rfs_spec_scan_cb, i32* null)
  %7 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %15, %struct.ath_spec_scan_priv* %16, i32* @fops_spec_scan_ctl)
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %20 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %18, %struct.ath_spec_scan_priv* %19, i32* @fops_spectral_short_repeat)
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %21, %struct.ath_spec_scan_priv* %22, i32* @fops_spectral_count)
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %26 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %24, %struct.ath_spec_scan_priv* %25, i32* @fops_spectral_period)
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %3, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %27, %struct.ath_spec_scan_priv* %28, i32* @fops_spectral_fft_period)
  br label %30

30:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @relay_open(i8*, %struct.dentry*, i32, i32, i32*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.ath_spec_scan_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
