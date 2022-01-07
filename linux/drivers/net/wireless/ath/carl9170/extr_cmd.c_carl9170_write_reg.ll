; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CARL9170_CMD_WREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"writing reg %#x (val %#x) failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_write_reg(%struct.ar9170* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cpu_to_le32(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds i32, i32* %9, i64 1
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %16 = load i32, i32* @CARL9170_CMD_WREG, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = call i32 @carl9170_exec_cmd(%struct.ar9170* %15, i32 %16, i32 8, i32* %17, i32 0, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = call i64 (...) @net_ratelimit()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %26 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @wiphy_err(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %21
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @carl9170_exec_cmd(%struct.ar9170*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
