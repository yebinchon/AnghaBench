; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_store_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_store_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s: Setting memory dump to RAW mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Setting memory dump to HEX mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Resetting firmware snapshot.\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"%s: Usage: 0|on = HEX, 1|off = RAW, reset = clear memory snapshot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_memory(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %10, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %11, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %107

24:                                               ; preds = %4
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 49
  br i1 %29, label %47, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = icmp uge i64 %31, 2
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = call signext i8 @tolower(i8 signext %36)
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 111
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = call signext i8 @tolower(i8 signext %43)
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 110
  br i1 %46, label %47, label %54

47:                                               ; preds = %40, %24
  %48 = load %struct.net_device*, %struct.net_device** %11, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %105

54:                                               ; preds = %40, %33, %30
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %77, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = icmp uge i64 %61, 2
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = call signext i8 @tolower(i8 signext %66)
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 111
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = call signext i8 @tolower(i8 signext %73)
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 102
  br i1 %76, label %77, label %84

77:                                               ; preds = %70, %54
  %78 = load %struct.net_device*, %struct.net_device** %11, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %83 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %104

84:                                               ; preds = %70, %63, %60
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = call signext i8 @tolower(i8 signext %87)
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 114
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.net_device*, %struct.net_device** %11, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %97 = call i32 @ipw2100_snapshot_free(%struct.ipw2100_priv* %96)
  br label %103

98:                                               ; preds = %84
  %99 = load %struct.net_device*, %struct.net_device** %11, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %91
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %47
  %106 = load i64, i64* %9, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %105, %22
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @ipw2100_snapshot_free(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
