; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_memffshow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_memffshow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"error @addr[0x%lx:0x%lx] 0x%x -> 0xff diff 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i8*, i64)* @memffshow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memffshow(i64 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %38, %4
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 0, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i8*, i8** %9, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, 255
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %26, %27
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %28, i8 zeroext %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @hweight8(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %24, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load i64, i64* %12, align 8
  ret i64 %46
}

declare dso_local i32 @pr_info(i8*, i64, i64, i8 zeroext, i32) #1

declare dso_local i64 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
