; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_fpga_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_fpga_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i8 0, align 1
@MCR_DTR = common dso_local global i8 0, align 1
@MCR_OUT1 = common dso_local global i8 0, align 1
@MCR_OUT2 = common dso_local global i8 0, align 1
@LSR_TSRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @fpga_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_write(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %9 = load i32, i32* @jiffies, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 10
  %12 = add nsw i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %67, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %70

17:                                               ; preds = %14
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8, i8* @MCR_RTS, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @MCR_DTR, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  br label %31

28:                                               ; preds = %17
  %29 = load i8, i8* @MCR_DTR, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i32 [ %27, %22 ], [ %30, %28 ]
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @MCR_OUT1, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = load i8, i8* @MCR_OUT2, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @MCR(i32 %42)
  %44 = call i32 @outb(i32 %41, i32 %43)
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 1
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %5, align 1
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @THR(i32 %49)
  %51 = call i32 @outb(i32 252, i32 %50)
  br label %52

52:                                               ; preds = %65, %31
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @LSR(i32 %53)
  %55 = call i32 @inb(i32 %54)
  %56 = load i32, i32* @LSR_TSRE, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @jiffies, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @time_after(i32 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %71

65:                                               ; preds = %59
  br label %52

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %14

70:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @THR(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @LSR(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
