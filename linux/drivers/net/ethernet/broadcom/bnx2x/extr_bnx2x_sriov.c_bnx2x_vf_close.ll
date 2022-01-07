; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.set_vf_state_cookie = type { i32, %struct.bnx2x_virtf* }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vf[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"disabling igu\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"clearing qtbl\0A\00", align 1
@VF_ACQUIRED = common dso_local global i32 0, align 4
@bnx2x_set_vf_state = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"set state to acquired\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"vf[%d] CLOSE error: rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_close(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.set_vf_state_cookie, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @DP(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %17 = call i32 @vf_rxq_count(%struct.bnx2x_virtf* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %21 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bnx2x_vf_queue_teardown(%struct.bnx2x* %20, %struct.bnx2x_virtf* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %55

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %33 = call i32 (i32, i8*, ...) @DP(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %36 = call i32 @bnx2x_vf_igu_disable(%struct.bnx2x* %34, %struct.bnx2x_virtf* %35)
  %37 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %38 = call i32 (i32, i8*, ...) @DP(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %40 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %41 = call i32 @bnx2x_vf_clr_qtbl(%struct.bnx2x* %39, %struct.bnx2x_virtf* %40)
  %42 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %43 = getelementptr inbounds %struct.set_vf_state_cookie, %struct.set_vf_state_cookie* %8, i32 0, i32 1
  store %struct.bnx2x_virtf* %42, %struct.bnx2x_virtf** %43, align 8
  %44 = load i32, i32* @VF_ACQUIRED, align 4
  %45 = getelementptr inbounds %struct.set_vf_state_cookie, %struct.set_vf_state_cookie* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = load i32, i32* @bnx2x_set_vf_state, align 4
  %48 = call i32 @bnx2x_stats_safe_exec(%struct.bnx2x* %46, i32 %47, %struct.set_vf_state_cookie* %8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %54 = call i32 (i32, i8*, ...) @DP(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

55:                                               ; preds = %51, %26
  %56 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_queue_teardown(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_igu_disable(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_clr_qtbl(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_stats_safe_exec(%struct.bnx2x*, i32, %struct.set_vf_state_cookie*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
