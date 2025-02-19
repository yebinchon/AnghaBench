; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_er_poll_igu_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_er_poll_igu_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@IGU_REG_PENDING_BITS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Still pending IGU requests pend_bits=%x!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_er_poll_igu_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_er_poll_igu_vq(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i64 1000, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = load i32, i32* @IGU_REG_PENDING_BITS_STATUS, align 4
  %9 = call i64 @REG_RD(%struct.bnx2x* %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %19

13:                                               ; preds = %6
  %14 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %15

15:                                               ; preds = %13
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %4, align 8
  %18 = icmp sgt i64 %16, 0
  br i1 %18, label %6, label %19

19:                                               ; preds = %15, %12
  %20 = load i64, i64* %4, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
