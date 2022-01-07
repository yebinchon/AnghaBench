; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_read_mreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_read_mreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CARL9170_CMD_RREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"reading regs failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_read_mreg(%struct.ar9170* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  store i32* %14, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %30, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load i32*, i32** %9, align 8
  store i32* %34, i32** %13, align 8
  %35 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %36 = load i32, i32* @CARL9170_CMD_RREG, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 4, %37
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 4, %40
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @carl9170_exec_cmd(%struct.ar9170* %35, i32 %36, i32 %38, i32* %39, i32 %41, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %33
  %47 = call i64 (...) @net_ratelimit()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %51 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @wiphy_err(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %79

59:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %60

78:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @carl9170_exec_cmd(%struct.ar9170*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
