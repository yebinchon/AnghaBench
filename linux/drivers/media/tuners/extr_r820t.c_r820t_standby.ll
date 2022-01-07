; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_standby.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_r820t.c_r820t_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r820t_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r820t_priv*)* @r820t_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r820t_standby(%struct.r820t_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r820t_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.r820t_priv* %0, %struct.r820t_priv** %3, align 8
  %5 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %6 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %12 = call i32 @r820t_write_reg(%struct.r820t_priv* %11, i32 6, i32 177)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %10
  %18 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %19 = call i32 @r820t_write_reg(%struct.r820t_priv* %18, i32 5, i32 3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %17
  %25 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %26 = call i32 @r820t_write_reg(%struct.r820t_priv* %25, i32 7, i32 58)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %24
  %32 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %33 = call i32 @r820t_write_reg(%struct.r820t_priv* %32, i32 8, i32 64)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %86

38:                                               ; preds = %31
  %39 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %40 = call i32 @r820t_write_reg(%struct.r820t_priv* %39, i32 9, i32 192)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %86

45:                                               ; preds = %38
  %46 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %47 = call i32 @r820t_write_reg(%struct.r820t_priv* %46, i32 10, i32 54)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %45
  %53 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %54 = call i32 @r820t_write_reg(%struct.r820t_priv* %53, i32 12, i32 53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %86

59:                                               ; preds = %52
  %60 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %61 = call i32 @r820t_write_reg(%struct.r820t_priv* %60, i32 15, i32 104)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %86

66:                                               ; preds = %59
  %67 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %68 = call i32 @r820t_write_reg(%struct.r820t_priv* %67, i32 17, i32 3)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %86

73:                                               ; preds = %66
  %74 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %75 = call i32 @r820t_write_reg(%struct.r820t_priv* %74, i32 23, i32 244)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %86

80:                                               ; preds = %73
  %81 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %82 = call i32 @r820t_write_reg(%struct.r820t_priv* %81, i32 25, i32 12)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.r820t_priv*, %struct.r820t_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r820t_priv, %struct.r820t_priv* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %9
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @r820t_write_reg(%struct.r820t_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
