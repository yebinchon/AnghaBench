; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_default_gamma_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_default_gamma_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32 }

@ov965x_set_default_gamma_curve.gamma_curve = internal constant [31 x i32] [i32 64, i32 48, i32 75, i32 96, i32 112, i32 112, i32 112, i32 112, i32 96, i32 96, i32 80, i32 72, i32 58, i32 46, i32 40, i32 34, i32 4, i32 7, i32 16, i32 40, i32 54, i32 68, i32 82, i32 96, i32 108, i32 120, i32 140, i32 158, i32 187, i32 210, i32 230], align 16
@REG_GSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*)* @ov965x_set_default_gamma_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_default_gamma_curve(%struct.ov965x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov965x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %3, align 8
  %7 = load i32, i32* @REG_GSP, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([31 x i32], [31 x i32]* @ov965x_set_default_gamma_curve.gamma_curve, i64 0, i64 0))
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [31 x i32], [31 x i32]* @ov965x_set_default_gamma_curve.gamma_curve, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ov965x_write(%struct.ov965x* %13, i32 %14, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
