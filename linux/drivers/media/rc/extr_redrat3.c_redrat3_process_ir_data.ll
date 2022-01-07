; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_process_ir_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_process_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__, i64, %struct.device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.device = type { i32 }
%struct.ir_raw_event = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Got mod_freq of %u\0A\00", align 1
@IR_MAX_DURATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"storing %s with duration %d (i: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"storing trailing timeout with duration %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"calling ir_raw_event_handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*)* @redrat3_process_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_process_ir_data(%struct.redrat3_dev* %0) #0 {
  %2 = alloca %struct.redrat3_dev*, align 8
  %3 = alloca %struct.ir_raw_event, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ir_raw_event, align 8
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %2, align 8
  %12 = bitcast %struct.ir_raw_event* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %14 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %13, i32 0, i32 3
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %17 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %16, i32 0, i32 1
  %18 = call i64 @redrat3_val_to_mod_freq(%struct.TYPE_5__* %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %26 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %11, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %11, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %11, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %11, i32 0, i32 3
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %11, i32 0, i32 4
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %34, align 8
  %36 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %37 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @ir_raw_event_store(%struct.TYPE_6__* %38, %struct.ir_raw_event* %11)
  br label %40

40:                                               ; preds = %29, %24, %1
  %41 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %42 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @be16_to_cpu(i32 %44)
  store i32 %45, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %106, %40
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %109

50:                                               ; preds = %46
  %51 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %52 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %60 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @get_unaligned_be16(i32* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @redrat3_len_to_us(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %5, align 4
  %70 = urem i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %76

74:                                               ; preds = %50
  %75 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @US_TO_NS(i32 %77)
  %79 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IR_MAX_DURATION, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @IR_MAX_DURATION, align 4
  br label %89

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %85, %84 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %98 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %99, i32 %100)
  %102 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %103 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_6__* %104, %struct.ir_raw_event* %3)
  br label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %5, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %46

109:                                              ; preds = %46
  %110 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %113 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  store i32 %116, i32* %117, align 4
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %3, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %123 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = call i32 @ir_raw_event_store_with_filter(%struct.TYPE_6__* %124, %struct.ir_raw_event* %3)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %128 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %129 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = call i32 @ir_raw_event_handle(%struct.TYPE_6__* %130)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @redrat3_val_to_mod_freq(%struct.TYPE_5__*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #2

declare dso_local i32 @ir_raw_event_store(%struct.TYPE_6__*, %struct.ir_raw_event*) #2

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i32 @get_unaligned_be16(i32*) #2

declare dso_local i32 @redrat3_len_to_us(i32) #2

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.TYPE_6__*, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
