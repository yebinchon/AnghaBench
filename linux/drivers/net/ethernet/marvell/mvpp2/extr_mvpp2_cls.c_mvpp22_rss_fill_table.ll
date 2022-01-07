; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_rss_fill_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_rss_fill_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.mvpp2* }
%struct.mvpp2 = type { i32 }
%struct.mvpp2_rss_table = type { i32* }

@MVPP22_RSS_TABLE_ENTRIES = common dso_local global i32 0, align 4
@MVPP22_RSS_INDEX = common dso_local global i32 0, align 4
@MVPP22_RSS_TABLE_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_rss_table*, i32)* @mvpp22_rss_fill_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_rss_fill_table(%struct.mvpp2_port* %0, %struct.mvpp2_rss_table* %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.mvpp2_rss_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.mvpp2_rss_table* %1, %struct.mvpp2_rss_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 0
  %12 = load %struct.mvpp2*, %struct.mvpp2** %11, align 8
  store %struct.mvpp2* %12, %struct.mvpp2** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %39, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MVPP22_RSS_TABLE_ENTRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @MVPP22_RSS_INDEX_TABLE(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @MVPP22_RSS_INDEX_TABLE_ENTRY(i32 %20)
  %22 = or i32 %19, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %24 = load i32, i32* @MVPP22_RSS_INDEX, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mvpp2_write(%struct.mvpp2* %23, i32 %24, i32 %25)
  %27 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %28 = load i32, i32* @MVPP22_RSS_TABLE_ENTRY, align 4
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %30 = load %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %5, align 8
  %31 = getelementptr inbounds %struct.mvpp2_rss_table, %struct.mvpp2_rss_table* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mvpp22_rxfh_indir(%struct.mvpp2_port* %29, i32 %36)
  %38 = call i32 @mvpp2_write(%struct.mvpp2* %27, i32 %28, i32 %37)
  br label %39

39:                                               ; preds = %17
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %13

42:                                               ; preds = %13
  ret void
}

declare dso_local i32 @MVPP22_RSS_INDEX_TABLE(i32) #1

declare dso_local i32 @MVPP22_RSS_INDEX_TABLE_ENTRY(i32) #1

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp22_rxfh_indir(%struct.mvpp2_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
