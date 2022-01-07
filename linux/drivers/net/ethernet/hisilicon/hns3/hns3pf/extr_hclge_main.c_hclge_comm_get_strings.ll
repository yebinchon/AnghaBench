; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_comm_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_comm_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_comm_stats_str = type { i8* }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.hclge_comm_stats_str*, i32, i8*)* @hclge_comm_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hclge_comm_get_strings(i64 %0, %struct.hclge_comm_stats_str* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hclge_comm_stats_str*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.hclge_comm_stats_str* %1, %struct.hclge_comm_stats_str** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ETH_SS_STATS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %5, align 8
  br label %42

18:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %27 = load %struct.hclge_comm_stats_str*, %struct.hclge_comm_stats_str** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.hclge_comm_stats_str, %struct.hclge_comm_stats_str* %27, i64 %28
  %30 = getelementptr inbounds %struct.hclge_comm_stats_str, %struct.hclge_comm_stats_str* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %24
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %11, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i8*, i8** %5, align 8
  ret i8* %43
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
