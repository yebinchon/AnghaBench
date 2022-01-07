; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0013.c_fc0013_set_vhf_track.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_fc0013.c_fc0013_set_vhf_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc0013_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc0013_priv*, i32)* @fc0013_set_vhf_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc0013_set_vhf_track(%struct.fc0013_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fc0013_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fc0013_priv* %0, %struct.fc0013_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %8 = call i32 @fc0013_readreg(%struct.fc0013_priv* %7, i32 29, i32* %6)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %82

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 227
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 177500
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 28
  %21 = call i32 @fc0013_writereg(%struct.fc0013_priv* %18, i32 29, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %81

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 184500
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, 24
  %29 = call i32 @fc0013_writereg(%struct.fc0013_priv* %26, i32 29, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 191500
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, 20
  %37 = call i32 @fc0013_writereg(%struct.fc0013_priv* %34, i32 29, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %79

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 198500
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, 16
  %45 = call i32 @fc0013_writereg(%struct.fc0013_priv* %42, i32 29, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %78

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 205500
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 12
  %53 = call i32 @fc0013_writereg(%struct.fc0013_priv* %50, i32 29, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %77

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %55, 219500
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 8
  %61 = call i32 @fc0013_writereg(%struct.fc0013_priv* %58, i32 29, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %76

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 300000
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, 4
  %69 = call i32 @fc0013_writereg(%struct.fc0013_priv* %66, i32 29, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %62
  %71 = load %struct.fc0013_priv*, %struct.fc0013_priv** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, 28
  %74 = call i32 @fc0013_writereg(%struct.fc0013_priv* %71, i32 29, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %49
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %78, %33
  br label %80

80:                                               ; preds = %79, %25
  br label %81

81:                                               ; preds = %80, %17
  br label %82

82:                                               ; preds = %81, %11
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @fc0013_readreg(%struct.fc0013_priv*, i32, i32*) #1

declare dso_local i32 @fc0013_writereg(%struct.fc0013_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
