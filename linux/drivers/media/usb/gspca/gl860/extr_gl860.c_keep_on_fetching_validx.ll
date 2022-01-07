; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_keep_on_fetching_validx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_keep_on_fetching_validx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.validx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keep_on_fetching_validx(%struct.gspca_dev* %0, %struct.validx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca %struct.validx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store %struct.validx* %1, %struct.validx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %55, %4
  %10 = load i32, i32* %8, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %9
  %15 = load %struct.validx*, %struct.validx** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.validx, %struct.validx* %15, i64 %17
  %19 = getelementptr inbounds %struct.validx, %struct.validx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 65535
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %24 = load %struct.validx*, %struct.validx** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.validx, %struct.validx* %24, i64 %26
  %28 = getelementptr inbounds %struct.validx, %struct.validx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.validx*, %struct.validx** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.validx, %struct.validx* %30, i64 %32
  %34 = getelementptr inbounds %struct.validx, %struct.validx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ctrl_out(%struct.gspca_dev* %23, i32 64, i32 1, i32 %29, i32 %35, i32 0, i32* null)
  br label %55

37:                                               ; preds = %14
  %38 = load %struct.validx*, %struct.validx** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.validx, %struct.validx* %38, i64 %40
  %42 = getelementptr inbounds %struct.validx, %struct.validx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 65535
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.validx*, %struct.validx** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.validx, %struct.validx* %47, i64 %49
  %51 = getelementptr inbounds %struct.validx, %struct.validx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @msleep(i32 %52)
  br label %54

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %22
  br label %9

56:                                               ; preds = %45, %9
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
