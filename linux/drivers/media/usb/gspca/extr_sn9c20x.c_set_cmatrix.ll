; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_cmatrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_cmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@hsv_red_x = common dso_local global i32* null, align 8
@hsv_red_y = common dso_local global i32* null, align 8
@hsv_green_x = common dso_local global i32* null, align 8
@hsv_green_y = common dso_local global i32* null, align 8
@hsv_blue_x = common dso_local global i32* null, align 8
@hsv_blue_y = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32, i32)* @set_cmatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmatrix(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [21 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = add nsw i32 180, %14
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 84)
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 37
  %20 = sdiv i32 %19, 256
  %21 = add nsw i32 %20, 38
  %22 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 38
  %26 = mul nsw i32 %25, 19
  %27 = sdiv i32 %26, 37
  %28 = add nsw i32 19, %27
  %29 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 38
  %33 = mul nsw i32 %32, 7
  %34 = sdiv i32 %33, 37
  %35 = add nsw i32 7, %34
  %36 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 128
  %39 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 18
  store i32 %38, i32* %39, align 8
  %40 = load i32*, i32** @hsv_red_x, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 6
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 15
  %53 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 7
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** @hsv_red_y, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = ashr i32 %60, 8
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 8
  store i32 %62, i32* %63, align 16
  %64 = load i32, i32* %11, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 15
  %67 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 9
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** @hsv_green_x, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 10
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 15
  %81 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 11
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** @hsv_green_y, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %86, %87
  %89 = ashr i32 %88, 8
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 12
  store i32 %90, i32* %91, align 16
  %92 = load i32, i32* %11, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 15
  %95 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 13
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** @hsv_blue_x, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 %100, %101
  %103 = ashr i32 %102, 8
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 14
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 15
  %109 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 15
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** @hsv_blue_y, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %114, %115
  %117 = ashr i32 %116, 8
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 16
  store i32 %118, i32* %119, align 16
  %120 = load i32, i32* %11, align 4
  %121 = ashr i32 %120, 8
  %122 = and i32 %121, 15
  %123 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 17
  store i32 %122, i32* %123, align 4
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %125 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 0
  %126 = call i32 @reg_w(%struct.gspca_dev* %124, i32 4321, i32* %125, i32 21)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
