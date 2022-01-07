; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fcoe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@QED_FLAG_STORAGE_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fcoe already stopped\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Can't stop fcoe - not all connections were returned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_fcoe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_fcoe_stop(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %6 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %7 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %14 = call i32 @DP_NOTICE(%struct.qed_dev* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hash_empty(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %23 = call i32 @DP_NOTICE(%struct.qed_dev* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %15
  %27 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %28 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %27)
  %29 = call %struct.qed_ptt* @qed_ptt_acquire(i32 %28)
  store %struct.qed_ptt* %29, %struct.qed_ptt** %4, align 8
  %30 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %31 = icmp ne %struct.qed_ptt* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %26
  %36 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %37 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %36)
  %38 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %39 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %40 = call i32 @qed_sp_fcoe_func_stop(i32 %37, %struct.qed_ptt* %38, i32 %39, i32* null)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @QED_FLAG_STORAGE_STARTED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %44 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %48 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %47)
  %49 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %50 = call i32 @qed_ptt_release(i32 %48, %struct.qed_ptt* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %35, %32, %21, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i32 @hash_empty(i32) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(i32) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_sp_fcoe_func_stop(i32, %struct.qed_ptt*, i32, i32*) #1

declare dso_local i32 @qed_ptt_release(i32, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
