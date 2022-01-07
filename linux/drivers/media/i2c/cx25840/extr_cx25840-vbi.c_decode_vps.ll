; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_decode_vps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_decode_vps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decode_vps.biphase_tbl = internal constant [256 x i32] [i32 240, i32 120, i32 112, i32 240, i32 180, i32 60, i32 52, i32 180, i32 176, i32 56, i32 48, i32 176, i32 240, i32 120, i32 112, i32 240, i32 210, i32 90, i32 82, i32 210, i32 150, i32 30, i32 22, i32 150, i32 146, i32 26, i32 18, i32 146, i32 210, i32 90, i32 82, i32 210, i32 208, i32 88, i32 80, i32 208, i32 148, i32 28, i32 20, i32 148, i32 144, i32 24, i32 16, i32 144, i32 208, i32 88, i32 80, i32 208, i32 240, i32 120, i32 112, i32 240, i32 180, i32 60, i32 52, i32 180, i32 176, i32 56, i32 48, i32 176, i32 240, i32 120, i32 112, i32 240, i32 225, i32 105, i32 97, i32 225, i32 165, i32 45, i32 37, i32 165, i32 161, i32 41, i32 33, i32 161, i32 225, i32 105, i32 97, i32 225, i32 195, i32 75, i32 67, i32 195, i32 135, i32 15, i32 7, i32 135, i32 131, i32 11, i32 3, i32 131, i32 195, i32 75, i32 67, i32 195, i32 193, i32 73, i32 65, i32 193, i32 133, i32 13, i32 5, i32 133, i32 129, i32 9, i32 1, i32 129, i32 193, i32 73, i32 65, i32 193, i32 225, i32 105, i32 97, i32 225, i32 165, i32 45, i32 37, i32 165, i32 161, i32 41, i32 33, i32 161, i32 225, i32 105, i32 97, i32 225, i32 224, i32 104, i32 96, i32 224, i32 164, i32 44, i32 36, i32 164, i32 160, i32 40, i32 32, i32 160, i32 224, i32 104, i32 96, i32 224, i32 194, i32 74, i32 66, i32 194, i32 134, i32 14, i32 6, i32 134, i32 130, i32 10, i32 2, i32 130, i32 194, i32 74, i32 66, i32 194, i32 192, i32 72, i32 64, i32 192, i32 132, i32 12, i32 4, i32 132, i32 128, i32 8, i32 0, i32 128, i32 192, i32 72, i32 64, i32 192, i32 224, i32 104, i32 96, i32 224, i32 164, i32 44, i32 36, i32 164, i32 160, i32 40, i32 32, i32 160, i32 224, i32 104, i32 96, i32 224, i32 240, i32 120, i32 112, i32 240, i32 180, i32 60, i32 52, i32 180, i32 176, i32 56, i32 48, i32 176, i32 240, i32 120, i32 112, i32 240, i32 210, i32 90, i32 82, i32 210, i32 150, i32 30, i32 22, i32 150, i32 146, i32 26, i32 18, i32 146, i32 210, i32 90, i32 82, i32 210, i32 208, i32 88, i32 80, i32 208, i32 148, i32 28, i32 20, i32 148, i32 144, i32 24, i32 16, i32 144, i32 208, i32 88, i32 80, i32 208, i32 240, i32 120, i32 112, i32 240, i32 180, i32 60, i32 52, i32 180, i32 176, i32 56, i32 48, i32 176, i32 240, i32 120, i32 112, i32 240], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @decode_vps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_vps(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %59, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 26
  br i1 %10, label %11, label %62

11:                                               ; preds = %8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* @decode_vps.biphase_tbl, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @decode_vps.biphase_tbl, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %19, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @decode_vps.biphase_tbl, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* @decode_vps.biphase_tbl, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = shl i32 %50, 4
  %52 = or i32 %41, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %11
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %7, align 4
  br label %8

62:                                               ; preds = %8
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 240
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
