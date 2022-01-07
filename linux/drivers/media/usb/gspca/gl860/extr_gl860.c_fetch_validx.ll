; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_fetch_validx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_fetch_validx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.validx = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_validx(%struct.gspca_dev* %0, %struct.validx* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.validx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.validx* %1, %struct.validx** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %54, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load %struct.validx*, %struct.validx** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.validx, %struct.validx* %13, i64 %15
  %17 = getelementptr inbounds %struct.validx, %struct.validx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 65535
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = load %struct.validx*, %struct.validx** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.validx, %struct.validx* %22, i64 %24
  %26 = getelementptr inbounds %struct.validx, %struct.validx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.validx*, %struct.validx** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.validx, %struct.validx* %28, i64 %30
  %32 = getelementptr inbounds %struct.validx, %struct.validx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ctrl_out(%struct.gspca_dev* %21, i32 64, i32 1, i32 %27, i32 %33, i32 0, i32* null)
  br label %53

35:                                               ; preds = %12
  %36 = load %struct.validx*, %struct.validx** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.validx, %struct.validx* %36, i64 %38
  %40 = getelementptr inbounds %struct.validx, %struct.validx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %57

44:                                               ; preds = %35
  %45 = load %struct.validx*, %struct.validx** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.validx, %struct.validx* %45, i64 %47
  %49 = getelementptr inbounds %struct.validx, %struct.validx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @msleep(i32 %50)
  br label %52

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %20
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %8

57:                                               ; preds = %43, %8
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
