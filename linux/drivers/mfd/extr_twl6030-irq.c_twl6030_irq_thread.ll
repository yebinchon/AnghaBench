; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [4 x i32] }
%struct.twl6030_irq = type { i32*, i32 }

@TWL_MODULE_PIH = common dso_local global i32 0, align 4
@REG_INT_STS_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"twl6030_irq: I2C error %d reading PIH ISR\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"twl6030_irq: Unmapped PIH ISR %u detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"twl6030_irq: PIH ISR %u, virq%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"twl6030_irq: I2C error in clearing PIH ISR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl6030_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.twl6030_irq*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.twl6030_irq*
  store %struct.twl6030_irq* %13, %struct.twl6030_irq** %10, align 8
  %14 = load i32, i32* @TWL_MODULE_PIH, align 4
  %15 = bitcast %union.anon* %8 to [4 x i32]*
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* @REG_INT_STS_A, align 4
  %18 = call i32 @twl_i2c_read(i32 %14, i32* %16, i32 %17, i32 3)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %89

25:                                               ; preds = %2
  %26 = bitcast %union.anon* %8 to [4 x i32]*
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 0, i32* %27, align 4
  %28 = bitcast %union.anon* %8 to [4 x i32]*
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 16
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = bitcast %union.anon* %8 to [4 x i32]*
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i64 0, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 8
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = bitcast %union.anon* %8 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %74, %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.twl6030_irq*, %struct.twl6030_irq** %10, align 8
  %51 = getelementptr inbounds %struct.twl6030_irq, %struct.twl6030_irq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.twl6030_irq*, %struct.twl6030_irq** %10, align 8
  %54 = getelementptr inbounds %struct.twl6030_irq, %struct.twl6030_irq* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @irq_find_mapping(i32 %52, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @handle_nested_irq(i32 %64)
  br label %69

66:                                               ; preds = %49
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %45
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %42

79:                                               ; preds = %42
  %80 = load i32, i32* @TWL_MODULE_PIH, align 4
  %81 = load i32, i32* @REG_INT_STS_A, align 4
  %82 = call i32 @twl_i2c_write_u8(i32 %80, i32 0, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @twl_i2c_read(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
