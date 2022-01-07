; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @set_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gamma(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [17 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 184
  %9 = sdiv i32 %8, 256
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 0
  store i32 10, i32* %10, align 16
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, 184
  %13 = sdiv i32 %12, 184
  %14 = add nsw i32 19, %13
  %15 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 201
  %18 = sdiv i32 %17, 184
  %19 = add nsw i32 37, %18
  %20 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 195
  %23 = sdiv i32 %22, 184
  %24 = add nsw i32 55, %23
  %25 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 183
  %28 = sdiv i32 %27, 184
  %29 = add nsw i32 69, %28
  %30 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 4
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 166
  %33 = sdiv i32 %32, 184
  %34 = add nsw i32 85, %33
  %35 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 5
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 151
  %38 = sdiv i32 %37, 184
  %39 = add nsw i32 101, %38
  %40 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 6
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 137
  %43 = sdiv i32 %42, 184
  %44 = add nsw i32 116, %43
  %45 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 7
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %46, 123
  %48 = sdiv i32 %47, 184
  %49 = add nsw i32 131, %48
  %50 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 8
  store i32 %49, i32* %50, align 16
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 106
  %53 = sdiv i32 %52, 184
  %54 = add nsw i32 146, %53
  %55 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 9
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 %56, 91
  %58 = sdiv i32 %57, 184
  %59 = add nsw i32 161, %58
  %60 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 10
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 76
  %63 = sdiv i32 %62, 184
  %64 = add nsw i32 176, %63
  %65 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 11
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %66, 60
  %68 = sdiv i32 %67, 184
  %69 = add nsw i32 191, %68
  %70 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 12
  store i32 %69, i32* %70, align 16
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 45
  %73 = sdiv i32 %72, 184
  %74 = add nsw i32 206, %73
  %75 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 13
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, 30
  %78 = sdiv i32 %77, 184
  %79 = add nsw i32 223, %78
  %80 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 14
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %81, 15
  %83 = sdiv i32 %82, 184
  %84 = add nsw i32 234, %83
  %85 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 15
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 16
  store i32 245, i32* %86, align 16
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %88 = getelementptr inbounds [17 x i32], [17 x i32]* %5, i64 0, i64 0
  %89 = call i32 @reg_w(%struct.gspca_dev* %87, i32 4496, i32* %88, i32 17)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
