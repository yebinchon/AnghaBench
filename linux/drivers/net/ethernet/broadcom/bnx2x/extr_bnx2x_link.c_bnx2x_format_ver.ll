; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_format_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_format_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%hx.%hx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @bnx2x_format_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_format_ver(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @bnx2x_null_format_ver(i32 %13, i32* %14, i32* %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @scnprintf(i32* %20, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, %27
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @bnx2x_null_format_ver(i32, i32*, i32*) #1

declare dso_local i32 @scnprintf(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
