; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth-debugfs.c_dpaa2_dbg_fqs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth-debugfs.c_dpaa2_dbg_fqs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.dpaa2_eth_priv = type { i32, %struct.dpaa2_eth_fq*, %struct.TYPE_3__* }
%struct.dpaa2_eth_fq = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"FQ stats for %s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s%16s%16s%16s%16s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VFQID\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Pending frames\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%5d%16d%16s%16llu%16u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dpaa2_dbg_fqs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_dbg_fqs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca %struct.dpaa2_eth_fq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.dpaa2_eth_priv*
  store %struct.dpaa2_eth_priv* %14, %struct.dpaa2_eth_priv** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %17 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %62, %2
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %29 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %26
  %33 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %34 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %33, i32 0, i32 1
  %35 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %35, i64 %37
  store %struct.dpaa2_eth_fq* %38, %struct.dpaa2_eth_fq** %6, align 8
  %39 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %6, align 8
  %40 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @dpaa2_io_query_fq_count(i32* null, i8* %41, i8** %7, i8** %8)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i8* null, i8** %7, align 8
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %6, align 8
  %49 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %6, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %6, align 8
  %55 = call i8* @fq_type_to_str(%struct.dpaa2_eth_fq* %54)
  %56 = load %struct.dpaa2_eth_fq*, %struct.dpaa2_eth_fq** %6, align 8
  %57 = getelementptr inbounds %struct.dpaa2_eth_fq, %struct.dpaa2_eth_fq* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %50, i8* %53, i8* %55, i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %26

65:                                               ; preds = %26
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @dpaa2_io_query_fq_count(i32*, i8*, i8**, i8**) #1

declare dso_local i8* @fq_type_to_str(%struct.dpaa2_eth_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
