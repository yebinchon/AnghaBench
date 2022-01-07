; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_get_channel_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_get_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_channel_info = type { i32 }
%struct.il_priv = type { i32, %struct.il_channel_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.il_channel_info* @il_get_channel_info(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.il_channel_info*, align 8
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %55 [
    i32 128, label %10
    i32 129, label %40
  ]

10:                                               ; preds = %3
  store i32 14, i32* %8, align 4
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 1
  %20 = load %struct.il_channel_info*, %struct.il_channel_info** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %20, i64 %22
  %24 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 1
  %31 = load %struct.il_channel_info*, %struct.il_channel_info** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %31, i64 %33
  store %struct.il_channel_info* %34, %struct.il_channel_info** %4, align 8
  br label %58

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %11

39:                                               ; preds = %11
  br label %57

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 1
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 14
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 1
  %49 = load %struct.il_channel_info*, %struct.il_channel_info** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %49, i64 %52
  store %struct.il_channel_info* %53, %struct.il_channel_info** %4, align 8
  br label %58

54:                                               ; preds = %43, %40
  br label %57

55:                                               ; preds = %3
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %54, %39
  store %struct.il_channel_info* null, %struct.il_channel_info** %4, align 8
  br label %58

58:                                               ; preds = %57, %46, %28
  %59 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  ret %struct.il_channel_info* %59
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
