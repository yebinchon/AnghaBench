; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_asm.c_immed_can_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_asm.c_immed_can_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_IMMED_INV = common dso_local global i32 0, align 4
@OP_IMMED_SHIFT = common dso_local global i32 0, align 4
@OP_IMMED_WIDTH = common dso_local global i32 0, align 4
@IMMED_WIDTH_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't decode/encode immed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @immed_can_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @immed_can_modify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @OP_IMMED_INV, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @FIELD_GET(i32 %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @OP_IMMED_SHIFT, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @FIELD_GET(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @OP_IMMED_WIDTH, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @FIELD_GET(i32 %14, i32 %15)
  %17 = load i64, i64* @IMMED_WIDTH_ALL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %8, %1
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
