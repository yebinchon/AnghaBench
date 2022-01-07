; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_micro_process_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_micro_process_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipaq_micro = type { %struct.ipaq_micro_rxdev }
%struct.ipaq_micro_rxdev = type { i32, i32, i32, i64, i32, i32* }

@CHAR_SOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipaq_micro*, i32)* @micro_process_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @micro_process_char(%struct.ipaq_micro* %0, i32 %1) #0 {
  %3 = alloca %struct.ipaq_micro*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipaq_micro_rxdev*, align 8
  store %struct.ipaq_micro* %0, %struct.ipaq_micro** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipaq_micro*, %struct.ipaq_micro** %3, align 8
  %7 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %6, i32 0, i32 0
  store %struct.ipaq_micro_rxdev* %7, %struct.ipaq_micro_rxdev** %5, align 8
  %8 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %9 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %91 [
    i32 128, label %11
    i32 129, label %19
    i32 130, label %42
    i32 131, label %69
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CHAR_SOF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %17 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %16, i32 0, i32 0
  store i32 129, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %11
  br label %91

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 240
  %22 = ashr i32 %21, 4
  %23 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %24 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 15
  %27 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %28 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %30 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %33 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %35 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 130, i32 131
  %40 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %41 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %91

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %45 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %50 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %53 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %57 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %61 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %42
  %66 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %67 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %66, i32 0, i32 0
  store i32 131, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %42
  br label %91

69:                                               ; preds = %2
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %72 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.ipaq_micro*, %struct.ipaq_micro** %3, align 8
  %77 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %78 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %81 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %85 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @micro_rx_msg(%struct.ipaq_micro* %76, i32 %79, i64 %83, i32* %86)
  br label %88

88:                                               ; preds = %75, %69
  %89 = load %struct.ipaq_micro_rxdev*, %struct.ipaq_micro_rxdev** %5, align 8
  %90 = getelementptr inbounds %struct.ipaq_micro_rxdev, %struct.ipaq_micro_rxdev* %89, i32 0, i32 0
  store i32 128, i32* %90, align 8
  br label %91

91:                                               ; preds = %2, %88, %68, %19, %18
  ret void
}

declare dso_local i32 @micro_rx_msg(%struct.ipaq_micro*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
