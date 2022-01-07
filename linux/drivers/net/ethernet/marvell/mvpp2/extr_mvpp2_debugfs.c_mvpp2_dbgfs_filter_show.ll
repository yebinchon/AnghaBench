; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_filter_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_filter_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_port* }
%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_MAC_RANGE_START = common dso_local global i32 0, align 4
@MVPP2_PE_MAC_RANGE_END = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_MAC = common dso_local global i64 0, align 8
@MVPP2_PRS_UDF_MAC_DEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_filter_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_filter_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca %struct.mvpp2_prs_entry, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %16, align 8
  store %struct.mvpp2_port* %17, %struct.mvpp2_port** %5, align 8
  %18 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %19 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %18, i32 0, i32 1
  %20 = load %struct.mvpp2*, %struct.mvpp2** %19, align 8
  store %struct.mvpp2* %20, %struct.mvpp2** %6, align 8
  %21 = load i32, i32* @MVPP2_PE_MAC_RANGE_START, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %101, %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MVPP2_PE_MAC_RANGE_END, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %22
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %35 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %26
  %44 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %45 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MVPP2_PRS_LU_MAC, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %65, label %54

54:                                               ; preds = %43
  %55 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %56 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MVPP2_PRS_UDF_MAC_DEF, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54, %43, %26
  store i32 4, i32* %14, align 4
  br label %97

66:                                               ; preds = %54
  %67 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %67, %struct.mvpp2_prs_entry* %7, i32 %68)
  %70 = call i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry* %7)
  store i64 %70, i64* %8, align 8
  %71 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %72 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @test_bit(i32 %73, i64* %8)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  store i32 4, i32* %14, align 4
  br label %97

77:                                               ; preds = %66
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %30, i64 %85
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %33, i64 %88
  %90 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %7, i32 %83, i8* %86, i8* %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %94, %76, %65
  %98 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %14, align 4
  switch i32 %99, label %105 [
    i32 0, label %100
    i32 4, label %101
  ]

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %22

104:                                              ; preds = %22
  ret i32 0

105:                                              ; preds = %97
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #2

declare dso_local i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry*) #2

declare dso_local i32 @test_bit(i32, i64*) #2

declare dso_local i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry*, i32, i8*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
