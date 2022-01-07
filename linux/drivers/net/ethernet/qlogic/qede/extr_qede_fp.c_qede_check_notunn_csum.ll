; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_check_notunn_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_check_notunn_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_SHIFT = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMERROR_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_L4CHKSMERROR_SHIFT = common dso_local global i32 0, align 4
@QEDE_CSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_IPHDRERROR_MASK = common dso_local global i32 0, align 4
@PARSING_AND_ERR_FLAGS_IPHDRERROR_SHIFT = common dso_local global i32 0, align 4
@QEDE_CSUM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qede_check_notunn_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_check_notunn_csum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_MASK, align 4
  %8 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMWASCALCULATED_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMERROR_MASK, align 4
  %14 = load i32, i32* @PARSING_AND_ERR_FLAGS_L4CHKSMERROR_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @QEDE_CSUM_UNNECESSARY, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* @PARSING_AND_ERR_FLAGS_IPHDRERROR_MASK, align 4
  %21 = load i32, i32* @PARSING_AND_ERR_FLAGS_IPHDRERROR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @QEDE_CSUM_ERROR, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
