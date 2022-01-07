; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_app_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_app_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_read_app_id(%struct.genwqe_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.genwqe_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.genwqe_dev*, %struct.genwqe_dev** %4, align 8
  %12 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %50, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @min(i32 %19, i32 4)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 8
  %26 = sub nsw i32 24, %25
  %27 = ashr i32 %23, %26
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %10, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %50

34:                                               ; preds = %22
  %35 = load i8, i8* %10, align 1
  %36 = call i64 @isprint(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8, i8* %10, align 1
  %40 = sext i8 %39 to i32
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 88, %41 ]
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 %44, i8* %49, align 1
  br label %50

50:                                               ; preds = %42, %33
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %17

53:                                               ; preds = %17
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
