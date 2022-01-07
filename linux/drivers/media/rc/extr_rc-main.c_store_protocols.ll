; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_store_protocols.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_store_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { i64, i32 (%struct.rc_dev*, i64*)*, i64, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32, i32, %struct.rc_scancode_filter }
%struct.rc_scancode_filter = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"Normal protocol change requested\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Protocol switching not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Error setting protocols to 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Protocols changed to 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_protocols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_protocols(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rc_dev*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.rc_scancode_filter*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.rc_dev* @to_rc_dev(%struct.device* %16)
  store %struct.rc_dev* %17, %struct.rc_dev** %10, align 8
  %18 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 5
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 0
  store i64* %22, i64** %11, align 8
  %23 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 6
  store %struct.rc_scancode_filter* %24, %struct.rc_scancode_filter** %12, align 8
  %25 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 1
  %27 = load i32 (%struct.rc_dev*, i64*)*, i32 (%struct.rc_dev*, i64*)** %26, align 8
  %28 = icmp ne i32 (%struct.rc_dev*, i64*)* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 5
  %32 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %124

35:                                               ; preds = %4
  %36 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 4
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @parse_protocol_change(%struct.rc_dev* %42, i64* %14, i8* %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %119

48:                                               ; preds = %35
  %49 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RC_DRIVER_IR_RAW, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @ir_raw_load_modules(i64* %14)
  br label %56

56:                                               ; preds = %54, %48
  %57 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %58 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %57, i32 0, i32 1
  %59 = load i32 (%struct.rc_dev*, i64*)*, i32 (%struct.rc_dev*, i64*)** %58, align 8
  %60 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %61 = call i32 %59(%struct.rc_dev* %60, i64* %14)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %66 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %65, i32 0, i32 5
  %67 = load i64, i64* %14, align 8
  %68 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  br label %119

69:                                               ; preds = %56
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i64, i64* %14, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  %76 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 5
  %78 = load i64, i64* %14, align 8
  %79 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %73, %69
  %81 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %82 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %81, i32 0, i32 3
  %83 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %82, align 8
  %84 = icmp ne i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)* %83, null
  br i1 %84, label %85, label %116

85:                                               ; preds = %80
  %86 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %12, align 8
  %87 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load i64, i64* %14, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %95 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %94, i32 0, i32 3
  %96 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %95, align 8
  %97 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %98 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %12, align 8
  %99 = call i32 %96(%struct.rc_dev* %97, %struct.rc_scancode_filter* %98)
  store i32 %99, i32* %15, align 4
  br label %101

100:                                              ; preds = %90
  store i32 -1, i32* %15, align 4
  br label %101

101:                                              ; preds = %100, %93
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %12, align 8
  %106 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %12, align 8
  %108 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %110 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %109, i32 0, i32 3
  %111 = load i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)*, i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)** %110, align 8
  %112 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %113 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %12, align 8
  %114 = call i32 %111(%struct.rc_dev* %112, %struct.rc_scancode_filter* %113)
  br label %115

115:                                              ; preds = %104, %101
  br label %116

116:                                              ; preds = %115, %85, %80
  %117 = load i64, i64* %9, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %116, %64, %47
  %120 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %121 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %120, i32 0, i32 4
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %119, %29
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @parse_protocol_change(%struct.rc_dev*, i64*, i8*) #1

declare dso_local i32 @ir_raw_load_modules(i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
