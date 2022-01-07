; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tvaudio_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.CHIPSTATE = type { i32, i64, %struct.CHIPDESC* }
%struct.CHIPDESC = type { i32, i32, i32*, i32 }

@CHIP_HAS_INPUTSEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @tvaudio_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvaudio_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.CHIPSTATE*, align 8
  %11 = alloca %struct.CHIPDESC*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev* %12)
  store %struct.CHIPSTATE* %13, %struct.CHIPSTATE** %10, align 8
  %14 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %10, align 8
  %15 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %14, i32 0, i32 2
  %16 = load %struct.CHIPDESC*, %struct.CHIPDESC** %15, align 8
  store %struct.CHIPDESC* %16, %struct.CHIPDESC** %11, align 8
  %17 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  %18 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CHIP_HAS_INPUTSEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %57

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %10, align 8
  %33 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %10, align 8
  %35 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %57

39:                                               ; preds = %30
  %40 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %10, align 8
  %41 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  %42 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  %45 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %10, align 8
  %48 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.CHIPDESC*, %struct.CHIPDESC** %11, align 8
  %54 = getelementptr inbounds %struct.CHIPDESC, %struct.CHIPDESC* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @chip_write_masked(%struct.CHIPSTATE* %40, i32 %43, i32 %52, i32 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %39, %38, %27, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.CHIPSTATE* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @chip_write_masked(%struct.CHIPSTATE*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
