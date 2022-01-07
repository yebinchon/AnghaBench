; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_check_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORKSCREW_TOTAL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"3c515\00", align 1
@EEPROM_Read = common dso_local global i64 0, align 8
@Wn0EepromCmd = common dso_local global i32 0, align 4
@Wn0EepromData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CORKSCREW_TOTAL_SIZE, align 4
  %7 = call i32 @request_region(i32 %5, i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add i32 %11, 8194
  %13 = call i32 @inw(i32 %12)
  %14 = and i32 %13, 496
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 496
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CORKSCREW_TOTAL_SIZE, align 4
  %21 = call i32 @release_region(i32 %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %56

22:                                               ; preds = %10
  %23 = load i64, i64* @EEPROM_Read, align 8
  %24 = add nsw i64 %23, 7
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @Wn0EepromCmd, align 4
  %27 = add i32 %25, %26
  %28 = call i32 @outw(i64 %24, i32 %27)
  store i32 4, i32* %4, align 4
  br label %29

29:                                               ; preds = %42, %22
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = call i32 @udelay(i32 162)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @Wn0EepromCmd, align 4
  %36 = add i32 %34, %35
  %37 = call i32 @inw(i32 %36)
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %4, align 4
  br label %29

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @Wn0EepromData, align 4
  %48 = add i32 %46, %47
  %49 = call i32 @inw(i32 %48)
  %50 = icmp ne i32 %49, 27984
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @CORKSCREW_TOTAL_SIZE, align 4
  %54 = call i32 @release_region(i32 %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %56

55:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %51, %18, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @outw(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
