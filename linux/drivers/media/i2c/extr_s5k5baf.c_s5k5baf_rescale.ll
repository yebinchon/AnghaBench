; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_rescale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_rescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_rect*)* @s5k5baf_rescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_rescale(%struct.v4l2_rect* %0, %struct.v4l2_rect* %1, %struct.v4l2_rect* %2, %struct.v4l2_rect* %3) #0 {
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %5, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %6, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %7, align 8
  store %struct.v4l2_rect* %3, %struct.v4l2_rect** %8, align 8
  %9 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %28, %31
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %41, %44
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %54, %57
  %59 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
