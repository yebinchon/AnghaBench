; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_com_dev_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_com_dev_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_stats = type { i8* }

@ENA_STATS_ARRAY_ENA_COM = common dso_local global i32 0, align 4
@ena_stats_ena_com_strings = common dso_local global %struct.ena_stats* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ena_admin_q_%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**)* @ena_com_dev_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_dev_strings(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.ena_stats*, align 8
  %4 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ENA_STATS_ARRAY_ENA_COM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.ena_stats*, %struct.ena_stats** @ena_stats_ena_com_strings, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %10, i64 %12
  store %struct.ena_stats* %13, %struct.ena_stats** %3, align 8
  %14 = load i32**, i32*** %2, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %17 = load %struct.ena_stats*, %struct.ena_stats** %3, align 8
  %18 = getelementptr inbounds %struct.ena_stats, %struct.ena_stats* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i32* %15, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %22 = load i32**, i32*** %2, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %22, align 8
  br label %26

26:                                               ; preds = %9
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
