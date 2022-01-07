; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k6aa = type { i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s5k6aa_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5k6aa*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %7)
  store %struct.s5k6aa* %8, %struct.s5k6aa** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %10 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %13 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %25 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %30 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %31 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @s5k6aa_set_prev_config(%struct.s5k6aa* %29, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %23, %20
  %35 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %36 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %41 = call i32 @s5k6aa_set_input_params(%struct.s5k6aa* %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @__s5k6aa_stream(%struct.s5k6aa* %46, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %42
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %56 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5k6aa_set_prev_config(%struct.s5k6aa*, i32) #1

declare dso_local i32 @s5k6aa_set_input_params(%struct.s5k6aa*) #1

declare dso_local i32 @__s5k6aa_stream(%struct.s5k6aa*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
