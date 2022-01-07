; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_toggle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_toggle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_timer = type { i32 }

@MFGPT_CMP1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MSR_MFGPT_NR = common dso_local global i32 0, align 4
@MSR_MFGPT_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs5535_mfgpt_toggle_event(%struct.cs5535_mfgpt_timer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs5535_mfgpt_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cs5535_mfgpt_timer* %0, %struct.cs5535_mfgpt_timer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MFGPT_CMP1, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 8
  store i32 %19, i32* %14, align 4
  %20 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %21 = icmp ne %struct.cs5535_mfgpt_timer* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = call i32 @WARN_ON(i32 1)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %51 [
    i32 128, label %28
    i32 129, label %35
    i32 130, label %43
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @MSR_MFGPT_NR, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %31 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 24
  %34 = shl i32 1, %33
  store i32 %34, i32* %11, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load i32, i32* @MSR_MFGPT_NR, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %38 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %39, %40
  %42 = shl i32 1, %41
  store i32 %42, i32* %11, align 4
  br label %54

43:                                               ; preds = %26
  %44 = load i32, i32* @MSR_MFGPT_IRQ, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %46 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = shl i32 1, %49
  store i32 %50, i32* %11, align 4
  br label %54

51:                                               ; preds = %26
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %43, %35, %28
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @rdmsr(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %70

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @wrmsr(i32 %71, i32 %72, i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %51, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
