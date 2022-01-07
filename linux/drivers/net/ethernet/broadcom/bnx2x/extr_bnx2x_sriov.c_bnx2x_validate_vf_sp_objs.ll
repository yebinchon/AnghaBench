; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_validate_vf_sp_objs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_validate_vf_sp_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@sp_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Slowpath objects not yet initialized!\0A\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*, i32)* @bnx2x_validate_vf_sp_objs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_validate_vf_sp_objs(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %9 = load i32, i32* @sp_initialized, align 4
  %10 = call i32 @bnx2x_leading_vfq(%struct.bnx2x_virtf* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %19 = call i32 @DP(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %15
  store i32 0, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @bnx2x_leading_vfq(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
