; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_write_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_write_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32 }
%struct.i2c_rv = type { i64, i32 }

@REG_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, %struct.i2c_rv*)* @ov965x_write_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_write_array(%struct.ov965x* %0, %struct.i2c_rv* %1) #0 {
  %3 = alloca %struct.ov965x*, align 8
  %4 = alloca %struct.i2c_rv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %3, align 8
  store %struct.i2c_rv* %1, %struct.i2c_rv** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %struct.i2c_rv*, %struct.i2c_rv** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.i2c_rv, %struct.i2c_rv* %11, i64 %13
  %15 = getelementptr inbounds %struct.i2c_rv, %struct.i2c_rv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_NULL, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i1 [ false, %7 ], [ %18, %10 ]
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  %22 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %23 = load %struct.i2c_rv*, %struct.i2c_rv** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i2c_rv, %struct.i2c_rv* %23, i64 %25
  %27 = getelementptr inbounds %struct.i2c_rv, %struct.i2c_rv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.i2c_rv*, %struct.i2c_rv** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_rv, %struct.i2c_rv* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_rv, %struct.i2c_rv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ov965x_write(%struct.ov965x* %22, i64 %28, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @ov965x_write(%struct.ov965x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
