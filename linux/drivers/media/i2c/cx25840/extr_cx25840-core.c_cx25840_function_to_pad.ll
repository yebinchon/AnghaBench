; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_function_to_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_function_to_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@CX25840_PAD_VRESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"invalid function %u, assuming default\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_client*, i64)* @cx25840_function_to_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cx25840_function_to_pad(%struct.i2c_client* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CX25840_PAD_VRESET, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @v4l_err(%struct.i2c_client* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i64 0, i64* %3, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
