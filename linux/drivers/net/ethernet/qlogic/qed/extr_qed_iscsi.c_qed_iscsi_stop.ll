; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32 }

@QED_FLAG_STORAGE_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"iscsi already stopped\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Can't stop iscsi - not all connections were returned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_iscsi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iscsi_stop(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %5 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %13 = call i32 @DP_NOTICE(%struct.qed_dev* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %16 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hash_empty(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %22 = call i32 @DP_NOTICE(%struct.qed_dev* %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %27 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %26)
  %28 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %29 = call i32 @qed_sp_iscsi_func_stop(i32 %27, i32 %28, i32* null)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %25, %20, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i32 @hash_empty(i32) #1

declare dso_local i32 @qed_sp_iscsi_func_stop(i32, i32, i32*) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
