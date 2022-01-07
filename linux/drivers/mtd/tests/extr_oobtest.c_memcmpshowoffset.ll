; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_memcmpshowoffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_memcmpshowoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"error @addr[0x%lx:0x%lx] 0x%x -> 0x%x diff 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i8*, i8*, i64)* @memcmpshowoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memcmpshowoffset(i64 %0, i64 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %12, align 8
  br label %18

18:                                               ; preds = %47, %5
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 0, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load i8*, i8** %11, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %14, align 8
  %35 = add i64 %33, %34
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %35, i8 zeroext %37, i8 zeroext %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @hweight8(i32 %42)
  %44 = load i64, i64* %15, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %15, align 8
  br label %46

46:                                               ; preds = %31, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %14, align 8
  br label %18

56:                                               ; preds = %18
  %57 = load i64, i64* %15, align 8
  ret i64 %57
}

declare dso_local i32 @pr_info(i8*, i64, i64, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i64 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
