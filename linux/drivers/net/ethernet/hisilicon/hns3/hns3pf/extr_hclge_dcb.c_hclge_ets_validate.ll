; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ets_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_ets_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee_ets = type { i64*, i32*, i32* }

@HNAE3_MAX_USER_PRIO = common dso_local global i64 0, align 8
@HNAE3_MAX_TC = common dso_local global i64 0, align 8
@HCLGE_SCH_MODE_SP = common dso_local global i32 0, align 4
@HCLGE_SCH_MODE_DWRR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BW_PERCENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.ieee_ets*, i64*, i32*)* @hclge_ets_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_ets_validate(%struct.hclge_dev* %0, %struct.ieee_ets* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca %struct.ieee_ets*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %53, %4
  %16 = load i64, i64* %14, align 8
  %17 = load i64, i64* @HNAE3_MAX_USER_PRIO, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %21 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %14, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %25, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32*, i32** %9, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %38 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %47 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %45, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %14, align 8
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  %60 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %61 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @hclge_dcb_common_validate(%struct.hclge_dev* %57, i64 %59, i64* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %148

68:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %121, %68
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* @HNAE3_MAX_TC, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %124

73:                                               ; preds = %69
  %74 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %75 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %117 [
    i32 128, label %80
    i32 129, label %94
  ]

80:                                               ; preds = %73
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HCLGE_SCH_MODE_SP, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32*, i32** %9, align 8
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %80
  br label %120

94:                                               ; preds = %73
  %95 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %96 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HCLGE_SCH_MODE_DWRR, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32*, i32** %9, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %94
  %108 = load %struct.ieee_ets*, %struct.ieee_ets** %7, align 8
  %109 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %11, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %11, align 8
  store i32 1, i32* %10, align 4
  br label %120

117:                                              ; preds = %73
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %148

120:                                              ; preds = %107, %93
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %14, align 8
  br label %69

124:                                              ; preds = %69
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @BW_PERCENT, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %148

134:                                              ; preds = %127, %124
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  %137 = load i64*, i64** %8, align 8
  store i64 %136, i64* %137, align 8
  %138 = load i64*, i64** %8, align 8
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %141 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %139, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32*, i32** %9, align 8
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %145, %134
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %131, %117, %66
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @hclge_dcb_common_validate(%struct.hclge_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
