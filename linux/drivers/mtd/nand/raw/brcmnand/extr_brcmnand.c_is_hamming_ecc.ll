; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_is_hamming_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_is_hamming_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_controller = type { i32 }
%struct.brcmnand_cfg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_controller*, %struct.brcmnand_cfg*)* @is_hamming_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hamming_ecc(%struct.brcmnand_controller* %0, %struct.brcmnand_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmnand_controller*, align 8
  %5 = alloca %struct.brcmnand_cfg*, align 8
  store %struct.brcmnand_controller* %0, %struct.brcmnand_controller** %4, align 8
  store %struct.brcmnand_cfg* %1, %struct.brcmnand_cfg** %5, align 8
  %6 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %7 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 1793
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 15
  br label %25

25:                                               ; preds = %20, %15, %10
  %26 = phi i1 [ false, %15 ], [ false, %10 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %2
  %29 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 15
  br i1 %42, label %55, label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 28
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %5, align 8
  %50 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 16
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ false, %43 ], [ %52, %48 ]
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi i1 [ true, %38 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %28
  %58 = phi i1 [ false, %28 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %25
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
