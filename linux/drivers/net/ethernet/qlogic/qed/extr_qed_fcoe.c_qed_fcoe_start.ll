; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32 }
%struct.qed_fcoe_tid = type { i32, i32, i32 }
%struct.qed_tid_mem = type { i32, i32, i32 }

@QED_FLAG_STORAGE_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"fcoe already started;\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to start fcoe\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to allocate tasks information\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to gather task information\0A\00", align 1
@MAX_TID_BLOCKS_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_fcoe_tid*)* @qed_fcoe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_fcoe_start(%struct.qed_dev* %0, %struct.qed_fcoe_tid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_fcoe_tid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_tid_mem*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_fcoe_tid* %1, %struct.qed_fcoe_tid** %5, align 8
  %8 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %16 = call i32 @DP_NOTICE(%struct.qed_dev* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %19 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %18)
  %20 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %21 = call i32 @qed_sp_fcoe_func_start(i32 %19, i32 %20, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %26 = call i32 @DP_NOTICE(%struct.qed_dev* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %17
  %29 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %30 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %31 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %35 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hash_init(i32 %36)
  %38 = load %struct.qed_fcoe_tid*, %struct.qed_fcoe_tid** %5, align 8
  %39 = icmp ne %struct.qed_fcoe_tid* %38, null
  br i1 %39, label %40, label %91

40:                                               ; preds = %28
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.qed_tid_mem* @kzalloc(i32 12, i32 %41)
  store %struct.qed_tid_mem* %42, %struct.qed_tid_mem** %7, align 8
  %43 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %44 = icmp ne %struct.qed_tid_mem* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %47 = call i32 @DP_NOTICE(%struct.qed_dev* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %49 = call i32 @qed_fcoe_stop(%struct.qed_dev* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %40
  %53 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %54 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %53)
  %55 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %56 = call i32 @qed_cxt_get_tid_mem_info(i32 %54, %struct.qed_tid_mem* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %61 = call i32 @DP_NOTICE(%struct.qed_dev* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %63 = call i32 @qed_fcoe_stop(%struct.qed_dev* %62)
  %64 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %65 = call i32 @kfree(%struct.qed_tid_mem* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %92

67:                                               ; preds = %52
  %68 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %69 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qed_fcoe_tid*, %struct.qed_fcoe_tid** %5, align 8
  %72 = getelementptr inbounds %struct.qed_fcoe_tid, %struct.qed_fcoe_tid* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %74 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_fcoe_tid*, %struct.qed_fcoe_tid** %5, align 8
  %77 = getelementptr inbounds %struct.qed_fcoe_tid, %struct.qed_fcoe_tid* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.qed_fcoe_tid*, %struct.qed_fcoe_tid** %5, align 8
  %79 = getelementptr inbounds %struct.qed_fcoe_tid, %struct.qed_fcoe_tid* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %82 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX_TID_BLOCKS_FCOE, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32 %80, i32 %83, i32 %87)
  %89 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %7, align 8
  %90 = call i32 @kfree(%struct.qed_tid_mem* %89)
  br label %91

91:                                               ; preds = %67, %28
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %59, %45, %24, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i32 @qed_sp_fcoe_func_start(i32, i32, i32*) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local %struct.qed_tid_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_fcoe_stop(%struct.qed_dev*) #1

declare dso_local i32 @qed_cxt_get_tid_mem_info(i32, %struct.qed_tid_mem*) #1

declare dso_local i32 @kfree(%struct.qed_tid_mem*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
