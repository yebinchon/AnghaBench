; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_csc_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_csc_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @adv7511_csc_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_csc_coeff(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.v4l2_subdev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = ashr i32 %28, 8
  %30 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %27, i32 24, i32 224, i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @adv7511_wr(%struct.v4l2_subdev* %31, i32 25, i32 %32)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %35 = load i32, i32* %16, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %34, i32 26, i32 224, i32 %36)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @adv7511_wr(%struct.v4l2_subdev* %38, i32 27, i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %42 = load i32, i32* %17, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %41, i32 28, i32 224, i32 %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @adv7511_wr(%struct.v4l2_subdev* %45, i32 29, i32 %46)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %49 = load i32, i32* %18, align 4
  %50 = ashr i32 %49, 8
  %51 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %48, i32 30, i32 224, i32 %50)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @adv7511_wr(%struct.v4l2_subdev* %52, i32 31, i32 %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %56 = load i32, i32* %19, align 4
  %57 = ashr i32 %56, 8
  %58 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %55, i32 32, i32 224, i32 %57)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @adv7511_wr(%struct.v4l2_subdev* %59, i32 33, i32 %60)
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %63 = load i32, i32* %20, align 4
  %64 = ashr i32 %63, 8
  %65 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %62, i32 34, i32 224, i32 %64)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @adv7511_wr(%struct.v4l2_subdev* %66, i32 35, i32 %67)
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %70 = load i32, i32* %21, align 4
  %71 = ashr i32 %70, 8
  %72 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %69, i32 36, i32 224, i32 %71)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @adv7511_wr(%struct.v4l2_subdev* %73, i32 37, i32 %74)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %77 = load i32, i32* %22, align 4
  %78 = ashr i32 %77, 8
  %79 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %76, i32 38, i32 224, i32 %78)
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %81 = load i32, i32* %22, align 4
  %82 = call i32 @adv7511_wr(%struct.v4l2_subdev* %80, i32 39, i32 %81)
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %84 = load i32, i32* %23, align 4
  %85 = ashr i32 %84, 8
  %86 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %83, i32 40, i32 224, i32 %85)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %88 = load i32, i32* %23, align 4
  %89 = call i32 @adv7511_wr(%struct.v4l2_subdev* %87, i32 41, i32 %88)
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %91 = load i32, i32* %24, align 4
  %92 = ashr i32 %91, 8
  %93 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %90, i32 42, i32 224, i32 %92)
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %95 = load i32, i32* %24, align 4
  %96 = call i32 @adv7511_wr(%struct.v4l2_subdev* %94, i32 43, i32 %95)
  %97 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %98 = load i32, i32* %25, align 4
  %99 = ashr i32 %98, 8
  %100 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %97, i32 44, i32 224, i32 %99)
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %102 = load i32, i32* %25, align 4
  %103 = call i32 @adv7511_wr(%struct.v4l2_subdev* %101, i32 45, i32 %102)
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %105 = load i32, i32* %26, align 4
  %106 = ashr i32 %105, 8
  %107 = call i32 @adv7511_wr_and_or(%struct.v4l2_subdev* %104, i32 46, i32 224, i32 %106)
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %14, align 8
  %109 = load i32, i32* %26, align 4
  %110 = call i32 @adv7511_wr(%struct.v4l2_subdev* %108, i32 47, i32 %109)
  ret void
}

declare dso_local i32 @adv7511_wr_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @adv7511_wr(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
