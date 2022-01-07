; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_port_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_port_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32*, i32, i32 }
%struct.mvpp2_rss_table = type { i32* }

@MVPP22_N_RSS_TABLES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP22_RSS_TABLE_ENTRIES = common dso_local global i32 0, align 4
@MVPP22_FLOW_IP4 = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_IP4_2T = common dso_local global i32 0, align 4
@MVPP22_FLOW_IP6 = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_IP6_2T = common dso_local global i32 0, align 4
@MVPP22_FLOW_TCP4 = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_IP4_5T = common dso_local global i32 0, align 4
@MVPP22_FLOW_TCP6 = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_IP6_5T = common dso_local global i32 0, align 4
@MVPP22_FLOW_UDP4 = common dso_local global i32 0, align 4
@MVPP22_FLOW_UDP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp22_port_rss_init(%struct.mvpp2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_rss_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MVPP22_N_RSS_TABLES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %8

22:                                               ; preds = %8
  %23 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %24 = call i32 @mvpp22_rss_context_create(%struct.mvpp2_port* %23, i32* %5)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %22
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.mvpp2_rss_table* @mvpp22_rss_table_get(i32 %32, i32 %33)
  store %struct.mvpp2_rss_table* %34, %struct.mvpp2_rss_table** %4, align 8
  %35 = load %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %4, align 8
  %36 = icmp ne %struct.mvpp2_rss_table* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %95

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %43 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %62, %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MVPP22_RSS_TABLE_ENTRIES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ethtool_rxfh_indir_default(i32 %51, i32 %54)
  %56 = load %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %4, align 8
  %57 = getelementptr inbounds %struct.mvpp2_rss_table, %struct.mvpp2_rss_table* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %67 = load %struct.mvpp2_rss_table*, %struct.mvpp2_rss_table** %4, align 8
  %68 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %69 = call i32 @mvpp22_rss_ctx(%struct.mvpp2_port* %68, i32 0)
  %70 = call i32 @mvpp22_rss_fill_table(%struct.mvpp2_port* %66, %struct.mvpp2_rss_table* %67, i32 %69)
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %72 = load i32, i32* @MVPP22_FLOW_IP4, align 4
  %73 = load i32, i32* @MVPP22_CLS_HEK_IP4_2T, align 4
  %74 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %71, i32 %72, i32 %73)
  %75 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %76 = load i32, i32* @MVPP22_FLOW_IP6, align 4
  %77 = load i32, i32* @MVPP22_CLS_HEK_IP6_2T, align 4
  %78 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %75, i32 %76, i32 %77)
  %79 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %80 = load i32, i32* @MVPP22_FLOW_TCP4, align 4
  %81 = load i32, i32* @MVPP22_CLS_HEK_IP4_5T, align 4
  %82 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %79, i32 %80, i32 %81)
  %83 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %84 = load i32, i32* @MVPP22_FLOW_TCP6, align 4
  %85 = load i32, i32* @MVPP22_CLS_HEK_IP6_5T, align 4
  %86 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %83, i32 %84, i32 %85)
  %87 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %88 = load i32, i32* @MVPP22_FLOW_UDP4, align 4
  %89 = load i32, i32* @MVPP22_CLS_HEK_IP4_5T, align 4
  %90 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %87, i32 %88, i32 %89)
  %91 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %92 = load i32, i32* @MVPP22_FLOW_UDP6, align 4
  %93 = load i32, i32* @MVPP22_CLS_HEK_IP6_5T, align 4
  %94 = call i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port* %91, i32 %92, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %65, %37, %27
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @mvpp22_rss_context_create(%struct.mvpp2_port*, i32*) #1

declare dso_local %struct.mvpp2_rss_table* @mvpp22_rss_table_get(i32, i32) #1

declare dso_local i32 @ethtool_rxfh_indir_default(i32, i32) #1

declare dso_local i32 @mvpp22_rss_fill_table(%struct.mvpp2_port*, %struct.mvpp2_rss_table*, i32) #1

declare dso_local i32 @mvpp22_rss_ctx(%struct.mvpp2_port*, i32) #1

declare dso_local i32 @mvpp2_port_rss_hash_opts_set(%struct.mvpp2_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
