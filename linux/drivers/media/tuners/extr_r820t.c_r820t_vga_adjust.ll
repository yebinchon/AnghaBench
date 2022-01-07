; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_vga_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_vga_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*)* @r820t_vga_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_vga_adjust(%struct.r820t_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r820t_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %3, align 8
  store i32 12, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @r820t_write_reg_mask(%struct.r820t_priv* %10, i32 12, i32 %11, i32 15)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %9
  %18 = call i32 @usleep_range(i32 10000, i32 11000)
  %19 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %20 = call i32 @r820t_multi_read(%struct.r820t_priv* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 160
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %33

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %28, %6
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %23, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @r820t_write_reg_mask(%struct.r820t_priv*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @r820t_multi_read(%struct.r820t_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
