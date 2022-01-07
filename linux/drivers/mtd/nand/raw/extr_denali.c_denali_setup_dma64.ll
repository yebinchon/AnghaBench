; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_setup_dma64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_setup_dma64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32 (%struct.denali_controller*, i32, i32)* }

@DENALI_MAP10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.denali_controller*, i32, i32, i32)* @denali_setup_dma64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @denali_setup_dma64(%struct.denali_controller* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.denali_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.denali_controller* %0, %struct.denali_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @DENALI_MAP10, align 4
  %12 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %13 = call i32 @DENALI_BANK(%struct.denali_controller* %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %18 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %17, i32 0, i32 0
  %19 = load i32 (%struct.denali_controller*, i32, i32)*, i32 (%struct.denali_controller*, i32, i32)** %18, align 8
  %20 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 @BIT(i32 8)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = or i32 20979712, %28
  %30 = or i32 %29, 1
  %31 = call i32 %19(%struct.denali_controller* %20, i32 %21, i32 %30)
  %32 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %33 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %32, i32 0, i32 0
  %34 = load i32 (%struct.denali_controller*, i32, i32)*, i32 (%struct.denali_controller*, i32, i32)** %33, align 8
  %35 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 %34(%struct.denali_controller* %35, i32 %36, i32 %38)
  %40 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %41 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %40, i32 0, i32 0
  %42 = load i32 (%struct.denali_controller*, i32, i32)*, i32 (%struct.denali_controller*, i32, i32)** %41, align 8
  %43 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i32 %42(%struct.denali_controller* %43, i32 %44, i32 %46)
  ret void
}

declare dso_local i32 @DENALI_BANK(%struct.denali_controller*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
