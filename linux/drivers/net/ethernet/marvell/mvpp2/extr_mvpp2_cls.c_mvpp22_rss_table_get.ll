; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_rss_table_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_rss_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_rss_table = type { i32 }
%struct.mvpp2 = type { %struct.mvpp2_rss_table** }

@MVPP22_N_RSS_TABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvpp2_rss_table* (%struct.mvpp2*, i32)* @mvpp22_rss_table_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvpp2_rss_table* @mvpp22_rss_table_get(%struct.mvpp2* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_rss_table*, align 8
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MVPP22_N_RSS_TABLES, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  store %struct.mvpp2_rss_table* null, %struct.mvpp2_rss_table** %3, align 8
  br label %21

13:                                               ; preds = %8
  %14 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %15 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %14, i32 0, i32 0
  %16 = load %struct.mvpp2_rss_table**, %struct.mvpp2_rss_table*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %16, i64 %18
  %20 = load %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %19, align 8
  store %struct.mvpp2_rss_table* %20, %struct.mvpp2_rss_table** %3, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = load %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %3, align 8
  ret %struct.mvpp2_rss_table* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
