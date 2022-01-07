; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_encx24j600_regmap_writeable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_encx24j600_regmap_writeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @encx24j600_regmap_writeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_regmap_writeable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 18
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp uge i32 %9, 20
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 26
  br i1 %13, label %62, label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %5, align 4
  %16 = icmp uge i32 %15, 28
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 54
  br i1 %19, label %62, label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp uge i32 %21, 64
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %24, 76
  br i1 %25, label %62, label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp uge i32 %27, 82
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %30, 86
  br i1 %31, label %62, label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp uge i32 %33, 96
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp ult i32 %36, 104
  br i1 %37, label %62, label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp uge i32 %39, 108
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %42, 128
  br i1 %43, label %62, label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp uge i32 %45, 134
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp ult i32 %48, 146
  br i1 %49, label %62, label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %5, align 4
  %52 = icmp uge i32 %51, 192
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp ult i32 %54, 200
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp uge i32 %57, 202
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp ult i32 %60, 240
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %53, %47, %41, %35, %29, %23, %17, %11, %2
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %59, %56
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
