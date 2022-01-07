; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hnae3_handle = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*, i32*)* }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @hns3_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %9)
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %8, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %114 [
    i32 128, label %14
    i32 129, label %21
    i32 131, label %44
    i32 130, label %67
    i32 132, label %90
  ]

14:                                               ; preds = %3
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %117

21:                                               ; preds = %3
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %27, align 8
  %29 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %36, align 8
  %38 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %40 = call i32 %37(%struct.hnae3_handle* %38, %struct.ethtool_rxnfc* %39)
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %21
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %117

44:                                               ; preds = %3
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %46 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %50, align 8
  %52 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %55 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %59, align 8
  %61 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %62 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %63 = call i32 %60(%struct.hnae3_handle* %61, %struct.ethtool_rxnfc* %62)
  store i32 %63, i32* %4, align 4
  br label %117

64:                                               ; preds = %44
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %117

67:                                               ; preds = %3
  %68 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %69 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %73, align 8
  %75 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %78 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %82, align 8
  %84 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %85 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %86 = call i32 %83(%struct.hnae3_handle* %84, %struct.ethtool_rxnfc* %85)
  store i32 %86, i32* %4, align 4
  br label %117

87:                                               ; preds = %67
  %88 = load i32, i32* @EOPNOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %117

90:                                               ; preds = %3
  %91 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %92 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*, i32*)** %96, align 8
  %98 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*, i32*)* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %101 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*, i32*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*, i32*)** %105, align 8
  %107 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  %108 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 %106(%struct.hnae3_handle* %107, %struct.ethtool_rxnfc* %108, i32* %109)
  store i32 %110, i32* %4, align 4
  br label %117

111:                                              ; preds = %90
  %112 = load i32, i32* @EOPNOTSUPP, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %117

114:                                              ; preds = %3
  %115 = load i32, i32* @EOPNOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %111, %99, %87, %76, %64, %53, %41, %30, %14
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
