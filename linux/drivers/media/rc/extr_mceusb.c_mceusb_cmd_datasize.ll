; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_cmd_datasize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_cmd_datasize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mceusb_cmd_datasize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_cmd_datasize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %24 [
    i32 144, label %7
    i32 142, label %12
    i32 143, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 142
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %7
  br label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %18 [
    i32 129, label %14
    i32 130, label %15
    i32 145, label %16
    i32 131, label %17
    i32 128, label %17
    i32 139, label %17
    i32 138, label %17
  ]

14:                                               ; preds = %12
  store i32 5, i32* %5, align 4
  br label %18

15:                                               ; preds = %12
  store i32 4, i32* %5, align 4
  br label %18

16:                                               ; preds = %12
  store i32 2, i32* %5, align 4
  br label %18

17:                                               ; preds = %12, %12, %12, %12
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %12, %17, %16, %15, %14
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %23 [
    i32 140, label %21
    i32 137, label %21
    i32 133, label %21
    i32 135, label %21
    i32 136, label %21
    i32 141, label %22
    i32 132, label %22
    i32 134, label %22
  ]

21:                                               ; preds = %19, %19, %19, %19, %19
  store i32 2, i32* %5, align 4
  br label %23

22:                                               ; preds = %19, %19, %19
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %22, %21
  br label %24

24:                                               ; preds = %23, %2, %18, %11
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
