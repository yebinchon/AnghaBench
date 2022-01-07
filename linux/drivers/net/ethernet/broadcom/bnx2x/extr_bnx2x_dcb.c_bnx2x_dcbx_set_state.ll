; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i64 }

@BNX2X_DCBX_ENABLED_INVALID = common dso_local global i64 0, align 8
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DCB state [%s:%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@BNX2X_DCBX_ENABLED_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"user-mode\00", align 1
@BNX2X_DCBX_ENABLED_ON_NEG_OFF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"on-chip static\00", align 1
@BNX2X_DCBX_ENABLED_ON_NEG_ON = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"on-chip with negotiation\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_dcbx_set_state(%struct.bnx2x* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i64, i64* @BNX2X_DCBX_ENABLED_INVALID, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %10
  %24 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @BNX2X_DCBX_ENABLED_OFF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %46

33:                                               ; preds = %23
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @BNX2X_DCBX_ENABLED_ON_NEG_OFF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %44

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @BNX2X_DCBX_ENABLED_ON_NEG_ON, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %44

44:                                               ; preds = %38, %37
  %45 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %37 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %32 ], [ %45, %44 ]
  %48 = call i32 @DP(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %47)
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
