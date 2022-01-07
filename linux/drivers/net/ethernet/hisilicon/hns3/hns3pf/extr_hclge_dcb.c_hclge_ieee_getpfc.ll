; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_getpfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ieee_getpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.ieee_pfc = type { i64, i8**, i8**, i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64*, i64, i64 }

@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@HNAE3_MAX_USER_PRIO = common dso_local global i64 0, align 8
@HCLGE_MAX_TC_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ieee_pfc*)* @hclge_ieee_getpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_ieee_getpfc(%struct.hnae3_handle* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ieee_pfc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hclge_vport*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %5, align 8
  %17 = load i32, i32* @HNAE3_MAX_TC, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @HNAE3_MAX_TC, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8*, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %25 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %24)
  store %struct.hclge_vport* %25, %struct.hclge_vport** %9, align 8
  %26 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %27 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %26, i32 0, i32 0
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %27, align 8
  store %struct.hclge_dev* %28, %struct.hclge_dev** %10, align 8
  %29 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %30 = call i32 @memset(%struct.ieee_pfc* %29, i32 0, i32 32)
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %35 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %14, align 8
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %81, %2
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @HNAE3_MAX_USER_PRIO, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i64*, i64** %14, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @BIT(i64 %65)
  %67 = and i64 %64, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @BIT(i64 %70)
  %72 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %73 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %69, %63, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  br label %52

80:                                               ; preds = %52
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %44

84:                                               ; preds = %44
  %85 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %86 = call i32 @hclge_pfc_tx_stats_get(%struct.hclge_dev* %85, i8** %20)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %124

91:                                               ; preds = %84
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %93 = call i32 @hclge_pfc_rx_stats_get(%struct.hclge_dev* %92, i8** %23)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %124

98:                                               ; preds = %91
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %120, %98
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @HCLGE_MAX_TC_NUM, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i8*, i8** %20, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %108 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i8*, i8** %109, i64 %110
  store i8* %106, i8** %111, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds i8*, i8** %23, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %116 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  store i8* %114, i8** %119, align 8
  br label %120

120:                                              ; preds = %103
  %121 = load i64, i64* %11, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %11, align 8
  br label %99

123:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %123, %96, %89
  %125 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #2

declare dso_local i32 @memset(%struct.ieee_pfc*, i32, i32) #2

declare dso_local i64 @BIT(i64) #2

declare dso_local i32 @hclge_pfc_tx_stats_get(%struct.hclge_dev*, i8**) #2

declare dso_local i32 @hclge_pfc_rx_stats_get(%struct.hclge_dev*, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
