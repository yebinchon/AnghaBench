; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_validate_queue_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_validate_queue_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cb = type { i64, i32, i32 }
%struct.hl_device = type { i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { %struct.hw_queue_properties* }
%struct.hw_queue_properties = type { i64, i64 }
%struct.hl_cb_mgr = type { i32 }
%struct.hl_cs_chunk = type { i64, i32, i32 }

@HL_MAX_QUEUES = common dso_local global i64 0, align 8
@QUEUE_TYPE_NA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Queue index %d is invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Queue index %d is restricted for the kernel driver\0A\00", align 1
@QUEUE_TYPE_INT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"CB handle 0x%x invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"CB size %u invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hl_cb* (%struct.hl_device*, %struct.hl_cb_mgr*, %struct.hl_cs_chunk*, i32*)* @validate_queue_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hl_cb* @validate_queue_index(%struct.hl_device* %0, %struct.hl_cb_mgr* %1, %struct.hl_cs_chunk* %2, i32* %3) #0 {
  %5 = alloca %struct.hl_cb*, align 8
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_cb_mgr*, align 8
  %8 = alloca %struct.hl_cs_chunk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.asic_fixed_properties*, align 8
  %11 = alloca %struct.hw_queue_properties*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hl_cb*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store %struct.hl_cb_mgr* %1, %struct.hl_cb_mgr** %7, align 8
  store %struct.hl_cs_chunk* %2, %struct.hl_cs_chunk** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 1
  store %struct.asic_fixed_properties* %15, %struct.asic_fixed_properties** %10, align 8
  %16 = load i32*, i32** %9, align 8
  store i32 1, i32* %16, align 4
  %17 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %10, align 8
  %18 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %17, i32 0, i32 0
  %19 = load %struct.hw_queue_properties*, %struct.hw_queue_properties** %18, align 8
  %20 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %21 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.hw_queue_properties, %struct.hw_queue_properties* %19, i64 %22
  store %struct.hw_queue_properties* %23, %struct.hw_queue_properties** %11, align 8
  %24 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %25 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HL_MAX_QUEUES, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load %struct.hw_queue_properties*, %struct.hw_queue_properties** %11, align 8
  %31 = getelementptr inbounds %struct.hw_queue_properties, %struct.hw_queue_properties* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QUEUE_TYPE_NA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29, %4
  %36 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %37 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %40 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %41)
  store %struct.hl_cb* null, %struct.hl_cb** %5, align 8
  br label %127

43:                                               ; preds = %29
  %44 = load %struct.hw_queue_properties*, %struct.hw_queue_properties** %11, align 8
  %45 = getelementptr inbounds %struct.hw_queue_properties, %struct.hw_queue_properties* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %53 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  store %struct.hl_cb* null, %struct.hl_cb** %5, align 8
  br label %127

56:                                               ; preds = %43
  %57 = load %struct.hw_queue_properties*, %struct.hw_queue_properties** %11, align 8
  %58 = getelementptr inbounds %struct.hw_queue_properties, %struct.hw_queue_properties* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QUEUE_TYPE_INT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32*, i32** %9, align 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %65 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to %struct.hl_cb*
  store %struct.hl_cb* %68, %struct.hl_cb** %5, align 8
  br label %127

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %72 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %12, align 8
  %77 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %78 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %7, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call %struct.hl_cb* @hl_cb_get(%struct.hl_device* %77, %struct.hl_cb_mgr* %78, i64 %79)
  store %struct.hl_cb* %80, %struct.hl_cb** %13, align 8
  %81 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  %82 = icmp ne %struct.hl_cb* %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %70
  %84 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %85 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  store %struct.hl_cb* null, %struct.hl_cb** %5, align 8
  br label %127

89:                                               ; preds = %70
  %90 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %91 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %96 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  %100 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %94, %89
  %104 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %105 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.hl_cs_chunk*, %struct.hl_cs_chunk** %8, align 8
  %108 = getelementptr inbounds %struct.hl_cs_chunk, %struct.hl_cs_chunk* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %110)
  br label %124

112:                                              ; preds = %94
  %113 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  %114 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %113, i32 0, i32 1
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  %117 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  %121 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  store %struct.hl_cb* %123, %struct.hl_cb** %5, align 8
  br label %127

124:                                              ; preds = %103
  %125 = load %struct.hl_cb*, %struct.hl_cb** %13, align 8
  %126 = call i32 @hl_cb_put(%struct.hl_cb* %125)
  store %struct.hl_cb* null, %struct.hl_cb** %5, align 8
  br label %127

127:                                              ; preds = %124, %112, %83, %62, %48, %35
  %128 = load %struct.hl_cb*, %struct.hl_cb** %5, align 8
  ret %struct.hl_cb* %128
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local %struct.hl_cb* @hl_cb_get(%struct.hl_device*, %struct.hl_cb_mgr*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hl_cb_put(%struct.hl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
