; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_output_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_uds.c_uds_output_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uds_output_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_output_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ugt i32 %7, 4096
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = udiv i32 %10, 4096
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %16, 8
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 2, i32 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i32 [ 1, %14 ], [ %19, %15 ]
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = udiv i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = mul i32 %25, %26
  %28 = mul i32 %27, 4096
  %29 = load i32, i32* %5, align 4
  %30 = udiv i32 %28, %29
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = sub i32 %33, 1
  %35 = mul i32 %34, 4096
  %36 = load i32, i32* %5, align 4
  %37 = udiv i32 %35, %36
  %38 = add i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
