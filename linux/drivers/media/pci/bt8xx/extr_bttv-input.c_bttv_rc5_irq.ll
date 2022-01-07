; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_rc5_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_rc5_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, %struct.bttv_ir* }
%struct.bttv_ir = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"RC5 IRQ: gap %d us for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@ir_rc5_remote_gap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*)* @bttv_rc5_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_rc5_irq(%struct.bttv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_ir*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  %9 = load %struct.bttv*, %struct.bttv** %3, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 1
  %11 = load %struct.bttv_ir*, %struct.bttv_ir** %10, align 8
  store %struct.bttv_ir* %11, %struct.bttv_ir** %4, align 8
  %12 = load %struct.bttv*, %struct.bttv** %3, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 0
  %14 = call i32 @bttv_gpio_read(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %8, align 8
  %16 = call i32 (...) @ktime_get()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %19 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ktime_sub(i32 %17, i32 %20)
  %22 = call i32 @ktime_to_us(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @USEC_PER_SEC, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 200000, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %94

39:                                               ; preds = %27
  %40 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %41 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %46 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 28
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ir_rc5_remote_gap, align 4
  %52 = sdiv i32 %51, 2
  %53 = sub nsw i32 %50, %52
  %54 = load i32, i32* @ir_rc5_remote_gap, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %57 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %59 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %63 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %49, %44
  br label %83

67:                                               ; preds = %39
  %68 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %69 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %71 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %70, i32 0, i32 2
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %74 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %76 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.bttv_ir*, %struct.bttv_ir** %4, align 8
  %78 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %77, i32 0, i32 3
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @msecs_to_jiffies(i32 30)
  %81 = add i64 %79, %80
  %82 = call i32 @mod_timer(i32* %78, i64 %81)
  br label %83

83:                                               ; preds = %67, %66
  %84 = load %struct.bttv*, %struct.bttv** %3, align 8
  %85 = getelementptr inbounds %struct.bttv, %struct.bttv* %84, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, -17
  %88 = call i32 @bttv_gpio_write(i32* %85, i32 %87)
  %89 = load %struct.bttv*, %struct.bttv** %3, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 0
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, 16
  %93 = call i32 @bttv_gpio_write(i32* %90, i32 %92)
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %83, %38
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @bttv_gpio_read(i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bttv_gpio_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
