; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denali_controller = type { i32, i32, i32, i32, i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @denali_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.denali_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.denali_controller*
  store %struct.denali_controller* %10, %struct.denali_controller** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %13 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %12, i32 0, i32 4
  %14 = call i32 @spin_lock(i32* %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %63, %2
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %18 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %15
  %22 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %23 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @INTR_STATUS(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @ioread32(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @denali_clear_irq(%struct.denali_controller* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %40 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %63

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %47 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %51 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %54 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %60 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %59, i32 0, i32 5
  %61 = call i32 @complete(i32* %60)
  br label %62

62:                                               ; preds = %58, %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %15

66:                                               ; preds = %15
  %67 = load %struct.denali_controller*, %struct.denali_controller** %5, align 8
  %68 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %67, i32 0, i32 4
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @INTR_STATUS(i32) #1

declare dso_local i32 @denali_clear_irq(%struct.denali_controller*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
