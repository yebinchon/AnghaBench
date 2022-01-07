; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_write_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_write_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"writing [ %*ph ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"_write_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"RDC 8820 RESET\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_dst(%struct.dst_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %17 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %44, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %30 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @i2c_transfer(i32 %31, %struct.i2c_msg* %8, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  %41 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %42 = call i32 @dst_error_recovery(%struct.dst_state* %41)
  br label %44

43:                                               ; preds = %28
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %25

47:                                               ; preds = %43, %25
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %53 = call i32 @dst_error_bailout(%struct.dst_state* %52)
  store i32 -1, i32* %4, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dst_error_recovery(%struct.dst_state*) #1

declare dso_local i32 @dst_error_bailout(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
