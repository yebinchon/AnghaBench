; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"VF[%d] STATE: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Acquired\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"about to free resources\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"VF[%d] RELEASE error: rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_free(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  %7 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %9 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 128
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  br label %35

35:                                               ; preds = %28, %27
  %36 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %27 ], [ %34, %28 ]
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %21 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %15
  %40 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %15 ], [ %38, %37 ]
  %41 = call i32 (i32, i8*, ...) @DP(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %40)
  %42 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %43 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %60 [
    i32 130, label %45
    i32 131, label %53
    i32 129, label %59
    i32 128, label %59
  ]

45:                                               ; preds = %39
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %48 = call i32 @bnx2x_vf_close(%struct.bnx2x* %46, %struct.bnx2x_virtf* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %62

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %39, %52
  %54 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %55 = call i32 (i32, i8*, ...) @DP(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %58 = call i32 @bnx2x_vf_free_resc(%struct.bnx2x* %56, %struct.bnx2x_virtf* %57)
  br label %61

59:                                               ; preds = %39, %39
  br label %60

60:                                               ; preds = %39, %59
  br label %61

61:                                               ; preds = %60, %53
  store i32 0, i32* %3, align 4
  br label %69

62:                                               ; preds = %51
  %63 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %61
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_vf_close(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_free_resc(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
