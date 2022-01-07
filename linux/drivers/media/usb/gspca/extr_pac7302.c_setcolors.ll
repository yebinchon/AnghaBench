; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7302.c_setcolors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac7302.c_setcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@setcolors.a = internal constant [9 x i32] [i32 217, i32 -212, i32 0, i32 -101, i32 170, i32 -67, i32 -38, i32 -315, i32 355], align 16
@setcolors.b = internal constant [9 x i32] [i32 19, i32 106, i32 0, i32 19, i32 106, i32 1, i32 19, i32 106, i32 1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcolors(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = call i32 @reg_w(%struct.gspca_dev* %8, i32 255, i32 3)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 17, i32 1)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 255, i32 0)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %56, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 9
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* @setcolors.a, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %21, %26
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = sdiv i32 %27, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* @setcolors.b, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 15, %43
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 7
  %48 = call i32 @reg_w(%struct.gspca_dev* %41, i32 %44, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 2, %50
  %52 = add nsw i32 15, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @reg_w(%struct.gspca_dev* %49, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %17
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %14

59:                                               ; preds = %14
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @reg_w(%struct.gspca_dev* %60, i32 220, i32 1)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
