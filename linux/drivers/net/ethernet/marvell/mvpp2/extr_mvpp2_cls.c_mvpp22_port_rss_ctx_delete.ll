; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_port_rss_ctx_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp22_port_rss_ctx_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32*, i32, %struct.TYPE_3__**, %struct.mvpp2* }
%struct.TYPE_3__ = type { %struct.ethtool_rxnfc }
%struct.ethtool_rxnfc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mvpp2 = type { i32** }

@MVPP22_N_RSS_TABLES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_N_RFS_ENTRIES_PER_FLOW = common dso_local global i32 0, align 4
@FLOW_RSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"couldn't remove classification rule %d associated to this context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp22_port_rss_ctx_delete(%struct.mvpp2_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca %struct.ethtool_rxnfc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 3
  %13 = load %struct.mvpp2*, %struct.mvpp2** %12, align 8
  store %struct.mvpp2* %13, %struct.mvpp2** %6, align 8
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @mvpp22_rss_ctx(%struct.mvpp2_port* %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MVPP22_N_RSS_TABLES, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %103

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %80, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MVPP2_N_RFS_ENTRIES_PER_FLOW, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %80

41:                                               ; preds = %31
  %42 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %43 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.ethtool_rxnfc* %49, %struct.ethtool_rxnfc** %7, align 8
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FLOW_RSS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %41
  %58 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %59 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %41
  br label %80

64:                                               ; preds = %57
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %66 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %67 = call i32 @mvpp2_ethtool_cls_rule_del(%struct.mvpp2_port* %65, %struct.ethtool_rxnfc* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %72 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %75 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netdev_warn(i32 %73, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %70, %64
  br label %80

80:                                               ; preds = %79, %63, %40
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %27

83:                                               ; preds = %27
  %84 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %85 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %93 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  store i32* null, i32** %97, align 8
  %98 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %99 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32 -1, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %83, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @mvpp22_rss_ctx(%struct.mvpp2_port*, i64) #1

declare dso_local i32 @mvpp2_ethtool_cls_rule_del(%struct.mvpp2_port*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
