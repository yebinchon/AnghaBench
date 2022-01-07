; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_timer = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MSR_PIC_ZSEL_LOW = common dso_local global i32 0, align 4
@MFGPT_CMP1 = common dso_local global i32 0, align 4
@CONFIG_CS5535_MFGPT_DEFAULT_IRQ = common dso_local global i32 0, align 4
@MSR_PIC_IRQM_LPC = common dso_local global i32 0, align 4
@MFGPT_EVENT_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs5535_mfgpt_set_irq(%struct.cs5535_mfgpt_timer* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs5535_mfgpt_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cs5535_mfgpt_timer* %0, %struct.cs5535_mfgpt_timer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %15 = icmp ne %struct.cs5535_mfgpt_timer* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = call i32 @WARN_ON(i32 1)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %119

20:                                               ; preds = %4
  %21 = load i32, i32* @MSR_PIC_ZSEL_LOW, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @rdmsr(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MFGPT_CMP1, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 4
  %30 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %31 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 4
  %34 = add nsw i32 %29, %33
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %20
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %119

44:                                               ; preds = %20
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 15
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @CONFIG_CS5535_MFGPT_DEFAULT_IRQ, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 15
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %65, %61
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %119

76:                                               ; preds = %69
  %77 = load i32, i32* @MSR_PIC_IRQM_LPC, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @rdmsr(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %119

90:                                               ; preds = %76
  %91 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MFGPT_EVENT_IRQ, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @cs5535_mfgpt_toggle_event(%struct.cs5535_mfgpt_timer* %91, i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %119

100:                                              ; preds = %90
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %13, align 4
  %106 = shl i32 15, %105
  %107 = xor i32 %106, -1
  %108 = and i32 %104, %107
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %108, %112
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* @MSR_PIC_ZSEL_LOW, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @wrmsr(i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %103, %100
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %97, %87, %73, %41, %16
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i64 @cs5535_mfgpt_toggle_event(%struct.cs5535_mfgpt_timer*, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
