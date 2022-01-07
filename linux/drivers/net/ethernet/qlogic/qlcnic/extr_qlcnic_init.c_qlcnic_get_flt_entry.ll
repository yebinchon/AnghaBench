; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_get_flt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_get_flt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_flt_entry = type { i64 }
%struct.qlcnic_flt_header = type { i32 }

@QLCNIC_FLT_LOCATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"error reading flash layout header\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"error reading flash layout entries\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"region=%x not found in %d regions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i64, %struct.qlcnic_flt_entry*)* @qlcnic_get_flt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_flt_entry(%struct.qlcnic_adapter* %0, i64 %1, %struct.qlcnic_flt_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlcnic_flt_entry*, align 8
  %8 = alloca %struct.qlcnic_flt_header, align 4
  %9 = alloca %struct.qlcnic_flt_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qlcnic_flt_entry* %2, %struct.qlcnic_flt_entry** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %7, align 8
  %14 = call i32 @memset(%struct.qlcnic_flt_entry* %13, i32 0, i32 8)
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load i64, i64* @QLCNIC_FLT_LOCATION, align 8
  %17 = bitcast %struct.qlcnic_flt_header* %8 to i64*
  %18 = call i32 @qlcnic_rom_fast_read_words(%struct.qlcnic_adapter* %15, i64 %16, i64* %17, i32 4)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_warn(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %107

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.qlcnic_flt_header, %struct.qlcnic_flt_header* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.qlcnic_flt_entry* @vzalloc(i32 %35)
  store %struct.qlcnic_flt_entry* %36, %struct.qlcnic_flt_entry** %9, align 8
  %37 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %38 = icmp eq %struct.qlcnic_flt_entry* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %107

42:                                               ; preds = %29
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %44 = load i64, i64* @QLCNIC_FLT_LOCATION, align 8
  %45 = add i64 %44, 4
  %46 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %47 = bitcast %struct.qlcnic_flt_entry* %46 to i64*
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @qlcnic_rom_fast_read_words(%struct.qlcnic_adapter* %43, i64 %45, i64* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_warn(i32* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %103

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %67, i64 %69
  %71 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %59

79:                                               ; preds = %75, %59
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %83, 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32*, i8*, ...) @dev_warn(i32* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %91, i32 %92)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %103

96:                                               ; preds = %79
  %97 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %7, align 8
  %98 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.qlcnic_flt_entry, %struct.qlcnic_flt_entry* %98, i64 %100
  %102 = call i32 @memcpy(%struct.qlcnic_flt_entry* %97, %struct.qlcnic_flt_entry* %101, i32 8)
  br label %103

103:                                              ; preds = %96, %86, %52
  %104 = load %struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry** %9, align 8
  %105 = call i32 @vfree(%struct.qlcnic_flt_entry* %104)
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %39, %21
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.qlcnic_flt_entry*, i32, i32) #1

declare dso_local i32 @qlcnic_rom_fast_read_words(%struct.qlcnic_adapter*, i64, i64*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local %struct.qlcnic_flt_entry* @vzalloc(i32) #1

declare dso_local i32 @memcpy(%struct.qlcnic_flt_entry*, %struct.qlcnic_flt_entry*, i32) #1

declare dso_local i32 @vfree(%struct.qlcnic_flt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
