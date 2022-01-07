; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_set_reg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_set_reg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }
%struct.genwqe_reg = type { i32, i8*, i8* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*, %struct.genwqe_reg*, i32*, i32, i8*, i8*, i32)* @set_reg_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_idx(%struct.genwqe_dev* %0, %struct.genwqe_reg* %1, i32* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.genwqe_dev*, align 8
  %10 = alloca %struct.genwqe_reg*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %9, align 8
  store %struct.genwqe_reg* %1, %struct.genwqe_reg** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32*, i32** %11, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp uge i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %51

26:                                               ; preds = %7
  %27 = load i8*, i8** %13, align 8
  %28 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %28, i64 %31
  %33 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %32, i32 0, i32 2
  store i8* %27, i8** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %35, i64 %38
  %40 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %39, i32 0, i32 1
  store i8* %34, i8** %40, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.genwqe_reg*, %struct.genwqe_reg** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %42, i64 %45
  %47 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %26, %23
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
