; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @hns3_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %7)
  store %struct.hnae3_handle* %8, %struct.hnae3_handle** %6, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %81 [
    i32 128, label %12
    i32 129, label %35
    i32 130, label %58
  ]

12:                                               ; preds = %2
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %18, align 8
  %20 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %27, align 8
  %29 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = call i32 %28(%struct.hnae3_handle* %29, %struct.ethtool_rxnfc* %30)
  store i32 %31, i32* %3, align 4
  br label %84

32:                                               ; preds = %12
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %2
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %41, align 8
  %43 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %46 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %50, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %53 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %54 = call i32 %51(%struct.hnae3_handle* %52, %struct.ethtool_rxnfc* %53)
  store i32 %54, i32* %3, align 4
  br label %84

55:                                               ; preds = %35
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %84

58:                                               ; preds = %2
  %59 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %60 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %64, align 8
  %66 = icmp ne i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %69 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)*, i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)** %73, align 8
  %75 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %76 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %77 = call i32 %74(%struct.hnae3_handle* %75, %struct.ethtool_rxnfc* %76)
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %58
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %84

81:                                               ; preds = %2
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %78, %67, %55, %44, %32, %21
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
