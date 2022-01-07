; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_exec_out16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_exec_out16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32 (%struct.denali_controller*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.denali_controller*, i32, i32*, i32)* @denali_exec_out16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @denali_exec_out16(%struct.denali_controller* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.denali_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %37, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %16 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %15, i32 0, i32 0
  %17 = load i32 (%struct.denali_controller*, i32, i32)*, i32 (%struct.denali_controller*, i32, i32)** %16, align 8
  %18 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %21 = call i32 @DENALI_BANK(%struct.denali_controller* %20)
  %22 = or i32 %19, %21
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %29, %34
  %36 = call i32 %17(%struct.denali_controller* %18, i32 %22, i32 %35)
  br label %37

37:                                               ; preds = %14
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %9, align 4
  br label %10

40:                                               ; preds = %10
  ret void
}

declare dso_local i32 @DENALI_BANK(%struct.denali_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
