; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_abs_to_sm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_abs_to_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @ov7670_abs_to_sm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ov7670_abs_to_sm(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i32 %5, 127
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 127
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %2, align 1
  br label %18

12:                                               ; preds = %1
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 128, %14
  %16 = or i32 %15, 128
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %2, align 1
  br label %18

18:                                               ; preds = %12, %7
  %19 = load i8, i8* %2, align 1
  ret i8 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
