; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32, i32*, i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@CTRL_REG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lis3lv02d*, i32)* @lis3lv02d_set_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis3lv02d_set_odr(%struct.lis3lv02d* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lis3lv02d*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %17 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %16, i32 0, i32 3
  %18 = load i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32*)** %17, align 8
  %19 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %20 = load i32, i32* @CTRL_REG1, align 4
  %21 = call i32 %18(%struct.lis3lv02d* %19, i32 %20, i32* %6)
  %22 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %23 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %29 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hweight_long(i32 %30)
  %32 = shl i32 1, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %34 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ffs(i32 %35)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %65, %15
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %44 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %54 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %53, i32 0, i32 2
  %55 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %54, align 8
  %56 = load %struct.lis3lv02d*, %struct.lis3lv02d** %4, align 8
  %57 = load i32, i32* @CTRL_REG1, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = call i32 %55(%struct.lis3lv02d* %56, i32 %57, i32 %62)
  store i32 0, i32* %3, align 4
  br label %71

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %52, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @hweight_long(i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
