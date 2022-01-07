; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth-debugfs.c_dpaa2_dbg_ch_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth-debugfs.c_dpaa2_dbg_ch_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.dpaa2_eth_priv = type { i32, %struct.dpaa2_eth_channel**, %struct.TYPE_4__* }
%struct.dpaa2_eth_channel = type { i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Channel stats for %s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s%16s%16s%16s%16s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CHID\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Deq busy\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"CDANs\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Buf count\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%4d%16d%16llu%16llu%16d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dpaa2_dbg_ch_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_dbg_ch_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca %struct.dpaa2_eth_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dpaa2_eth_priv*
  store %struct.dpaa2_eth_priv* %11, %struct.dpaa2_eth_priv** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %14 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %57, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %26 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %23
  %30 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %31 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %30, i32 0, i32 1
  %32 = load %struct.dpaa2_eth_channel**, %struct.dpaa2_eth_channel*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %32, i64 %34
  %36 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %35, align 8
  store %struct.dpaa2_eth_channel* %36, %struct.dpaa2_eth_channel** %6, align 8
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %42 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %46 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %50 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %54 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %40, i8* %44, i8* %48, i8* %52, i8* %55)
  br label %57

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %23

60:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
