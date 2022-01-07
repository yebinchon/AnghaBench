; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_write_queue_xenstore_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_write_queue_xenstore_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i8* }
%struct.xenbus_transaction = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"out of memory while writing ring references\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/queue-%u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"tx-ring-ref\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"writing tx-ring-ref\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"rx-ring-ref\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"writing rx-ring-ref\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"writing event-channel\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"event-channel-tx\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"writing event-channel-tx\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"event-channel-rx\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"writing event-channel-rx\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*, %struct.xenbus_transaction*, i32)* @write_queue_xenstore_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_queue_xenstore_keys(%struct.netfront_queue* %0, %struct.xenbus_transaction* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netfront_queue*, align 8
  %6 = alloca %struct.xenbus_transaction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xenbus_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %5, align 8
  store %struct.xenbus_transaction* %1, %struct.xenbus_transaction** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %14 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %16, align 8
  store %struct.xenbus_device* %17, %struct.xenbus_device** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %22 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 10
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i64 %27, i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %126

35:                                               ; preds = %20
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %42 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %43)
  br label %49

45:                                               ; preds = %3
  %46 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %47 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %45, %35
  %50 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %6, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %53 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %50, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xenbus_printf(i32 %56, i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %126

61:                                               ; preds = %49
  %62 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %6, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %65 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %62, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @xenbus_printf(i32 %68, i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %126

73:                                               ; preds = %61
  %74 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %75 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %78 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %6, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %85 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %82, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @xenbus_printf(i32 %88, i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %126

93:                                               ; preds = %81
  br label %119

94:                                               ; preds = %73
  %95 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %6, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %98 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %95, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @xenbus_printf(i32 %101, i8* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %126

106:                                              ; preds = %94
  %107 = load %struct.xenbus_transaction*, %struct.xenbus_transaction** %6, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %110 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %107, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @xenbus_printf(i32 %113, i8* %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %126

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @kfree(i8* %123)
  br label %125

125:                                              ; preds = %122, %119
  store i32 0, i32* %4, align 4
  br label %138

126:                                              ; preds = %117, %105, %92, %72, %60, %32
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @kfree(i8* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.xenbus_device*, %struct.xenbus_device** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %133, i32 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %132, %125
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
