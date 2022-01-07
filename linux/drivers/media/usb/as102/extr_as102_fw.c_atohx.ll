; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_atohx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_atohx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8*)* @atohx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @atohx(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %5, align 1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call signext i8 @tolower(i8 signext %9)
  %11 = sext i8 %10 to i32
  %12 = sub nsw i32 %11, 48
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %6, align 1
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = call signext i8 @tolower(i8 signext %16)
  %18 = sext i8 %17 to i32
  %19 = sub nsw i32 %18, 48
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sgt i32 %22, 9
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 7
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %6, align 1
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 9
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 7
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 15
  %42 = shl i32 %41, 4
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = or i32 %42, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %5, align 1
  %48 = load i8*, i8** %3, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8, i8* %5, align 1
  ret i8 %49
}

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
