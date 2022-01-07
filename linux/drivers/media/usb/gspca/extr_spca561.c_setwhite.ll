; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_setwhite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_setwhite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@Rev012A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @setwhite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setwhite(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 3
  %15 = sdiv i32 %14, 8
  %16 = add nsw i32 32, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 5
  %19 = sdiv i32 %18, 8
  %20 = sub nsw i32 144, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sd*, %struct.sd** %7, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @Rev012A, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 34324, i32* %10, align 4
  br label %44

27:                                               ; preds = %3
  store i32 34385, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 32
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 32
  %39 = call i32 @reg_w_val(%struct.gspca_dev* %36, i32 34386, i32 %38)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 32
  %43 = call i32 @reg_w_val(%struct.gspca_dev* %40, i32 34388, i32 %42)
  br label %44

44:                                               ; preds = %27, %26
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @reg_w_val(%struct.gspca_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @reg_w_val(%struct.gspca_dev* %49, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
