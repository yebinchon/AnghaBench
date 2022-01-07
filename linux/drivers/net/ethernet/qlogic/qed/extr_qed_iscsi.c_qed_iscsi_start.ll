; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32 }
%struct.qed_iscsi_tid = type { i32, i32, i32 }
%struct.qed_tid_mem = type { i32, i32, i32 }

@QED_FLAG_STORAGE_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"iscsi already started;\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to start iscsi\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to gather task information\0A\00", align 1
@MAX_TID_BLOCKS_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_iscsi_tid*, i8*, i32)* @qed_iscsi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iscsi_start(%struct.qed_dev* %0, %struct.qed_iscsi_tid* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca %struct.qed_iscsi_tid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_tid_mem*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store %struct.qed_iscsi_tid* %1, %struct.qed_iscsi_tid** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %13 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %20 = call i32 @DP_NOTICE(%struct.qed_dev* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %96

21:                                               ; preds = %4
  %22 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %23 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %22)
  %24 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @qed_sp_iscsi_func_start(i32 %23, i32 %24, i32* null, i8* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %32 = call i32 @DP_NOTICE(%struct.qed_dev* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %96

34:                                               ; preds = %21
  %35 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %36 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %37 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %41 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hash_init(i32 %42)
  %44 = load %struct.qed_iscsi_tid*, %struct.qed_iscsi_tid** %7, align 8
  %45 = icmp ne %struct.qed_iscsi_tid* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %96

47:                                               ; preds = %34
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.qed_tid_mem* @kzalloc(i32 12, i32 %48)
  store %struct.qed_tid_mem* %49, %struct.qed_tid_mem** %11, align 8
  %50 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %51 = icmp ne %struct.qed_tid_mem* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %54 = call i32 @qed_iscsi_stop(%struct.qed_dev* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %96

57:                                               ; preds = %47
  %58 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %59 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %58)
  %60 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %61 = call i32 @qed_cxt_get_tid_mem_info(i32 %59, %struct.qed_tid_mem* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %66 = call i32 @DP_NOTICE(%struct.qed_dev* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %68 = call i32 @qed_iscsi_stop(%struct.qed_dev* %67)
  %69 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %70 = call i32 @kfree(%struct.qed_tid_mem* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %96

72:                                               ; preds = %57
  %73 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %74 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_iscsi_tid*, %struct.qed_iscsi_tid** %7, align 8
  %77 = getelementptr inbounds %struct.qed_iscsi_tid, %struct.qed_iscsi_tid* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %79 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qed_iscsi_tid*, %struct.qed_iscsi_tid** %7, align 8
  %82 = getelementptr inbounds %struct.qed_iscsi_tid, %struct.qed_iscsi_tid* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qed_iscsi_tid*, %struct.qed_iscsi_tid** %7, align 8
  %84 = getelementptr inbounds %struct.qed_iscsi_tid, %struct.qed_iscsi_tid* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %87 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MAX_TID_BLOCKS_ISCSI, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memcpy(i32 %85, i32 %88, i32 %92)
  %94 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %11, align 8
  %95 = call i32 @kfree(%struct.qed_tid_mem* %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %72, %64, %52, %46, %30, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i32 @qed_sp_iscsi_func_start(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local %struct.qed_tid_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_iscsi_stop(%struct.qed_dev*) #1

declare dso_local i32 @qed_cxt_get_tid_mem_info(i32, %struct.qed_tid_mem*) #1

declare dso_local i32 @kfree(%struct.qed_tid_mem*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
