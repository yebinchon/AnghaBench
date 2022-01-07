; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13xxx = type { i32 }

@MC13XXX_IRQMASK0 = common dso_local global i32 0, align 4
@MC13XXX_IRQMASK1 = common dso_local global i32 0, align 4
@MC13XXX_IRQSTAT0 = common dso_local global i32 0, align 4
@MC13XXX_IRQSTAT1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc13xxx_irq_status(%struct.mc13xxx* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc13xxx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mc13xxx* %0, %struct.mc13xxx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 24
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @MC13XXX_IRQMASK0, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MC13XXX_IRQMASK1, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @MC13XXX_IRQSTAT0, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @MC13XXX_IRQSTAT1, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 24
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 24
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  %41 = shl i32 1, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %47 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %87

54:                                               ; preds = %44
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @mc13xxx_reg_read(%struct.mc13xxx* %58, i32 %59, i32* %14)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %87

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %66, %67
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %54
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @mc13xxx_reg_read(%struct.mc13xxx* %74, i32 %75, i32* %15)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %87

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %82, %83
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %70
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %79, %63, %51
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mc13xxx_reg_read(%struct.mc13xxx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
