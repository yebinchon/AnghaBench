; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7740 = type { %struct.regmap* }
%struct.regmap = type { i32 }

@REG_MIDH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REG_MIDL = common dso_local global i32 0, align 4
@REG_PIDH = common dso_local global i32 0, align 4
@REG_PIDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov7740*)* @ov7740_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_detect(%struct.ov7740* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov7740*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ov7740* %0, %struct.ov7740** %3, align 8
  %10 = load %struct.ov7740*, %struct.ov7740** %3, align 8
  %11 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %4, align 8
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* @REG_MIDH, align 4
  %15 = call i32 @regmap_read(%struct.regmap* %13, i32 %14, i32* %5)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 127
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %75

26:                                               ; preds = %20
  %27 = load %struct.regmap*, %struct.regmap** %4, align 8
  %28 = load i32, i32* @REG_MIDL, align 4
  %29 = call i32 @regmap_read(%struct.regmap* %27, i32 %28, i32* %6)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %2, align 4
  br label %75

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 162
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %75

40:                                               ; preds = %34
  %41 = load %struct.regmap*, %struct.regmap** %4, align 8
  %42 = load i32, i32* @REG_PIDH, align 4
  %43 = call i32 @regmap_read(%struct.regmap* %41, i32 %42, i32* %7)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 119
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %75

54:                                               ; preds = %48
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load i32, i32* @REG_PIDL, align 4
  %57 = call i32 @regmap_read(%struct.regmap* %55, i32 %56, i32* %8)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %75

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 64
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 65
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 66
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %68, %65, %62
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %71, %60, %51, %46, %37, %32, %23, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
