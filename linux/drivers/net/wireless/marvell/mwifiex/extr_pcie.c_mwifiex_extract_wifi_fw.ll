; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_extract_wifi_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_extract_wifi_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_fw_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"extract wifi-only fw failure!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad FW parse\0A\00", align 1
@MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"input wifi-only firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"no cmd7 before cmd1!\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"unknown dnld_cmd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, i8*, i32)* @mwifiex_extract_wifi_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_extract_wifi_fw(%struct.mwifiex_adapter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_fw_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %3, %124
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20, %15
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %28, i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %125

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.mwifiex_fw_data*
  store %struct.mwifiex_fw_data* %36, %struct.mwifiex_fw_data** %8, align 8
  %37 = load %struct.mwifiex_fw_data*, %struct.mwifiex_fw_data** %8, align 8
  %38 = getelementptr inbounds %struct.mwifiex_fw_data, %struct.mwifiex_fw_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mwifiex_fw_data*, %struct.mwifiex_fw_data** %8, align 8
  %43 = getelementptr inbounds %struct.mwifiex_fw_data, %struct.mwifiex_fw_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %119 [
    i32 131, label %52
    i32 130, label %80
    i32 129, label %94
    i32 128, label %118
  ]

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %60 = load i32, i32* @ERROR, align 4
  %61 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %125

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %67 = load i32, i32* @MSG, align 4
  %68 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %74 = load i32, i32* @ERROR, align 4
  %75 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %73, i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %125

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %124

80:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %88 = load i32, i32* @ERROR, align 4
  %89 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %87, i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %125

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %124

94:                                               ; preds = %31
  store i32 1, i32* %14, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %102 = load i32, i32* @ERROR, align 4
  %103 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %101, i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %125

104:                                              ; preds = %94
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %113 = load i32, i32* @ERROR, align 4
  %114 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %112, i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %117

115:                                              ; preds = %104
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %115, %111
  br label %125

118:                                              ; preds = %31
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %124

119:                                              ; preds = %31
  %120 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %120, i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %12, align 4
  br label %125

124:                                              ; preds = %118, %90, %76
  br label %15

125:                                              ; preds = %119, %117, %100, %86, %72, %58, %27
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %65
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
