; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_check_tunn_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_check_tunn_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMWASCALCULATED_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMWASCALCULATED_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMERROR_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMERROR_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMERROR_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMERROR_SHIFT = common dso_local global i32 0, align 4
@QEDE_TUNN_CSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TUNNELIPHDRERROR_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_TUNNELIPHDRERROR_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_IPHDRERROR_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_IPHDRERROR_SHIFT = common dso_local global i32 0, align 4
@QEDE_CSUM_ERROR = common dso_local global i32 0, align 4
@QEDE_CSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qede_check_tunn_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_check_tunn_csum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMWASCALCULATED_MASK, align 4
  %8 = load i32, i32* @PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMWASCALCULATED_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMERROR_MASK, align 4
  %14 = load i32, i32* @PARSING_AND_ERR_FLAGS_TUNNELL4CHKSMERROR_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_MASK, align 4
  %21 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMERROR_MASK, align 4
  %27 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMERROR_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @QEDE_TUNN_CSUM_UNNECESSARY, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* @PARSING_AND_ERR_FLAGS_TUNNELIPHDRERROR_MASK, align 4
  %34 = load i32, i32* @PARSING_AND_ERR_FLAGS_TUNNELIPHDRERROR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @PARSING_AND_ERR_FLAGS_IPHDRERROR_MASK, align 4
  %37 = load i32, i32* @PARSING_AND_ERR_FLAGS_IPHDRERROR_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @QEDE_CSUM_ERROR, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %32
  %49 = load i32, i32* @QEDE_CSUM_UNNECESSARY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %46
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
