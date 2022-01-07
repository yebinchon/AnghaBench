; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_link_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_link_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { i32, %struct.wil6210_vif**, %struct.wil_sta_info* }
%struct.wil6210_vif = type { i32 }
%struct.wil_sta_info = type { i32, i64, i32 }
%struct.station_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unused   \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pending  \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@U8_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"[%d][MID %d] %pM %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"  Tx_mcs = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  Rx_mcs = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"  SQ     = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"  INVALID MID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @link_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.station_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wil_sta_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wil6210_vif*, align 8
  %13 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 0
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %15, align 8
  store %struct.wil6210_priv* %16, %struct.wil6210_priv** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.station_info* @kzalloc(i32 12, i32 %17)
  store %struct.station_info* %18, %struct.station_info** %7, align 8
  %19 = load %struct.station_info*, %struct.station_info** %7, align 8
  %20 = icmp ne %struct.station_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %125

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %117, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %120

31:                                               ; preds = %25
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 2
  %34 = load %struct.wil_sta_info*, %struct.wil_sta_info** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %34, i64 %36
  store %struct.wil_sta_info* %37, %struct.wil_sta_info** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %38 = load %struct.wil_sta_info*, %struct.wil_sta_info** %10, align 8
  %39 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %44 [
    i32 128, label %41
    i32 130, label %42
    i32 129, label %43
  ]

41:                                               ; preds = %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %44

42:                                               ; preds = %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %44

43:                                               ; preds = %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %44

44:                                               ; preds = %31, %43, %42, %41
  %45 = load %struct.wil_sta_info*, %struct.wil_sta_info** %10, align 8
  %46 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 128
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.wil_sta_info*, %struct.wil_sta_info** %10, align 8
  %51 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  br label %55

53:                                               ; preds = %44
  %54 = load i64, i64* @U8_MAX, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i64 [ %52, %49 ], [ %54, %53 ]
  store i64 %56, i64* %13, align 8
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.wil_sta_info*, %struct.wil_sta_info** %10, align 8
  %61 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %58, i64 %59, i32 %62, i8* %63)
  %65 = load %struct.wil_sta_info*, %struct.wil_sta_info** %10, align 8
  %66 = getelementptr inbounds %struct.wil_sta_info, %struct.wil_sta_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 129
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %117

70:                                               ; preds = %55
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %73 = call i64 @GET_MAX_VIFS(%struct.wil6210_priv* %72)
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %77 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %76, i32 0, i32 1
  %78 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %78, i64 %79
  %81 = load %struct.wil6210_vif*, %struct.wil6210_vif** %80, align 8
  br label %83

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %75
  %84 = phi %struct.wil6210_vif* [ %81, %75 ], [ null, %82 ]
  store %struct.wil6210_vif* %84, %struct.wil6210_vif** %12, align 8
  %85 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %86 = icmp ne %struct.wil6210_vif* %85, null
  br i1 %86, label %87, label %113

87:                                               ; preds = %83
  %88 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.station_info*, %struct.station_info** %7, align 8
  %91 = call i32 @wil_cid_fill_sinfo(%struct.wil6210_vif* %88, i32 %89, %struct.station_info* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %121

95:                                               ; preds = %87
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = load %struct.station_info*, %struct.station_info** %7, align 8
  %98 = getelementptr inbounds %struct.station_info, %struct.station_info* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = load %struct.station_info*, %struct.station_info** %7, align 8
  %104 = getelementptr inbounds %struct.station_info, %struct.station_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = load %struct.station_info*, %struct.station_info** %7, align 8
  %110 = getelementptr inbounds %struct.station_info, %struct.station_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  br label %116

113:                                              ; preds = %83
  %114 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %115 = call i32 @seq_puts(%struct.seq_file* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %95
  br label %117

117:                                              ; preds = %116, %69
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %25

120:                                              ; preds = %25
  br label %121

121:                                              ; preds = %120, %94
  %122 = load %struct.station_info*, %struct.station_info** %7, align 8
  %123 = call i32 @kfree(%struct.station_info* %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %21
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.station_info* @kzalloc(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i64 @GET_MAX_VIFS(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_cid_fill_sinfo(%struct.wil6210_vif*, i32, %struct.station_info*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @kfree(%struct.station_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
