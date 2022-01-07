; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_mng_version_utility.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_mng_version_utility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"1.%c%hhd.%hhd.%hhd\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%hhd.%hhd.%hhd.%hhd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @bnx2x_update_mng_version_utility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_update_mng_version_utility(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %15 = call i32 @sscanf(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = sub nsw i32 %20, 48
  store i32 %21, i32* %19, align 16
  br label %22

22:                                               ; preds = %18, %9
  br label %30

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %29 = call i32 @sscanf(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32* %26, i32* %27, i32* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %22
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %37
  store i32 0, i32* %38, align 4
  br label %31

39:                                               ; preds = %31
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = shl i32 %41, 24
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %42, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 8
  %50 = or i32 %46, %49
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %50, %52
  ret i32 %53
}

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
