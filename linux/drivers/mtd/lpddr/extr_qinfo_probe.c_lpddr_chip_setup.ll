; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_qinfo_probe.c_lpddr_chip_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_qinfo_probe.c_lpddr_chip_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.lpddr_private = type { %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PFOW_MANUFACTURER_ID = common dso_local global i64 0, align 8
@PFOW_DEVICE_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"DevSizeShift\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"TotalBlocksNum\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"BufSizeShift\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"HWPartsNum\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"UniformBlockSizeShift\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SuspEraseSupp\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"SingleWordProgTime\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ProgBufferTime\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"BlockEraseTime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.lpddr_private*)* @lpddr_chip_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_chip_setup(%struct.map_info* %0, %struct.lpddr_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca %struct.lpddr_private*, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store %struct.lpddr_private* %1, %struct.lpddr_private** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.TYPE_2__* @kzalloc(i32 4, i32 %6)
  %8 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %9 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %8, i32 0, i32 0
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %11 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

15:                                               ; preds = %2
  %16 = load %struct.map_info*, %struct.map_info** %4, align 8
  %17 = load %struct.map_info*, %struct.map_info** %4, align 8
  %18 = getelementptr inbounds %struct.map_info, %struct.map_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PFOW_MANUFACTURER_ID, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @map_read(%struct.map_info* %16, i64 %21)
  %23 = call i8* @CMDVAL(i32 %22)
  %24 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %25 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.map_info*, %struct.map_info** %4, align 8
  %27 = load %struct.map_info*, %struct.map_info** %4, align 8
  %28 = getelementptr inbounds %struct.map_info, %struct.map_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PFOW_DEVICE_ID, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @map_read(%struct.map_info* %26, i64 %31)
  %33 = call i8* @CMDVAL(i32 %32)
  %34 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %35 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.map_info*, %struct.map_info** %4, align 8
  %37 = call i8* @lpddr_info_query(%struct.map_info* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %39 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 8
  store i8* %37, i8** %41, align 8
  %42 = load %struct.map_info*, %struct.map_info** %4, align 8
  %43 = call i8* @lpddr_info_query(%struct.map_info* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %45 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  store i8* %43, i8** %47, align 8
  %48 = load %struct.map_info*, %struct.map_info** %4, align 8
  %49 = call i8* @lpddr_info_query(%struct.map_info* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %51 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  store i8* %49, i8** %53, align 8
  %54 = load %struct.map_info*, %struct.map_info** %4, align 8
  %55 = call i8* @lpddr_info_query(%struct.map_info* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %57 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  store i8* %55, i8** %59, align 8
  %60 = load %struct.map_info*, %struct.map_info** %4, align 8
  %61 = call i8* @lpddr_info_query(%struct.map_info* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %63 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i8* %61, i8** %65, align 8
  %66 = load %struct.map_info*, %struct.map_info** %4, align 8
  %67 = call i8* @lpddr_info_query(%struct.map_info* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %69 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  %72 = load %struct.map_info*, %struct.map_info** %4, align 8
  %73 = call i8* @lpddr_info_query(%struct.map_info* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %75 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i8* %73, i8** %77, align 8
  %78 = load %struct.map_info*, %struct.map_info** %4, align 8
  %79 = call i8* @lpddr_info_query(%struct.map_info* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %80 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %81 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i8* %79, i8** %83, align 8
  %84 = load %struct.map_info*, %struct.map_info** %4, align 8
  %85 = call i8* @lpddr_info_query(%struct.map_info* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %86 = load %struct.lpddr_private*, %struct.lpddr_private** %5, align 8
  %87 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %15, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i8* @CMDVAL(i32) #1

declare dso_local i32 @map_read(%struct.map_info*, i64) #1

declare dso_local i8* @lpddr_info_query(%struct.map_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
