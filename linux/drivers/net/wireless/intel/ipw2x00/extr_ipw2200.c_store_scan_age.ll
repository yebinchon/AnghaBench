; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_store_scan_age.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_store_scan_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw_priv = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@__const.store_scan_age.buffer = private unnamed_addr constant [9 x i8] c"00000000\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: user supplied invalid value.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"set scan_age = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_scan_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_scan_age(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipw_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca [9 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.ipw_priv* @dev_get_drvdata(%struct.device* %15)
  store %struct.ipw_priv* %16, %struct.ipw_priv** %9, align 8
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %17, i32 0, i32 1
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  %20 = bitcast [9 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.store_scan_age.buffer, i32 0, i32 0), i64 9, i1 false)
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 8, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 8, %25 ]
  store i64 %27, i64* %12, align 8
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  store i8* %28, i8** %14, align 8
  %29 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @strncpy(i8* %30, i8* %31, i64 %32)
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 120
  br i1 %40, label %59, label %41

41:                                               ; preds = %26
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 88
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 120
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 88
  br i1 %58, label %59, label %79

59:                                               ; preds = %53, %47, %41, %26
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 120
  br i1 %66, label %73, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 88
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %59
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %14, align 8
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i8*, i8** %14, align 8
  %78 = call i64 @simple_strtoul(i8* %77, i8** %14, i32 16)
  store i64 %78, i64* %13, align 8
  br label %82

79:                                               ; preds = %53
  %80 = load i8*, i8** %14, align 8
  %81 = call i64 @simple_strtoul(i8* %80, i8** %14, i32 10)
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds [9 x i8], [9 x i8]* %11, i64 0, i64 0
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.net_device*, %struct.net_device** %10, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %103

91:                                               ; preds = %82
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %94 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 8
  %97 = load %struct.ipw_priv*, %struct.ipw_priv** %9, align 8
  %98 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %91, %86
  %104 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i64, i64* %12, align 8
  ret i64 %105
}

declare dso_local %struct.ipw_priv* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
