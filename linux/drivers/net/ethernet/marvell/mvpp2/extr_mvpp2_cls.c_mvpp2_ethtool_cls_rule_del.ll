; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_ethtool_cls_rule_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_ethtool_cls_rule_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.mvpp2_ethtool_fs**, i32 }
%struct.mvpp2_ethtool_fs = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_ethtool_cls_rule_del(%struct.mvpp2_port* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.mvpp2_ethtool_fs*, align 8
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load %struct.mvpp2_ethtool_fs**, %struct.mvpp2_ethtool_fs*** %9, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %10, i64 %14
  %16 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %15, align 8
  store %struct.mvpp2_ethtool_fs* %16, %struct.mvpp2_ethtool_fs** %6, align 8
  %17 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %6, align 8
  %18 = icmp ne %struct.mvpp2_ethtool_fs* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %24 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %6, align 8
  %25 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %24, i32 0, i32 0
  %26 = call i32 @mvpp2_port_cls_rfs_rule_remove(%struct.mvpp2_port* %23, i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %22
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %37 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %36, i32 0, i32 0
  %38 = load %struct.mvpp2_ethtool_fs**, %struct.mvpp2_ethtool_fs*** %37, align 8
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %38, i64 %42
  store %struct.mvpp2_ethtool_fs* null, %struct.mvpp2_ethtool_fs** %43, align 8
  %44 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %6, align 8
  %45 = call i32 @kfree(%struct.mvpp2_ethtool_fs* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %31, %29, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @mvpp2_port_cls_rfs_rule_remove(%struct.mvpp2_port*, i32*) #1

declare dso_local i32 @kfree(%struct.mvpp2_ethtool_fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
