; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_micro_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_micro_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipaq_micro = type { i32, i64 }

@UTSR1 = common dso_local global i64 0, align 8
@UTSR1_RNE = common dso_local global i32 0, align 4
@UTDR = common dso_local global i64 0, align 8
@UTSR1_PRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rx: parity error\0A\00", align 1
@UTSR1_FRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rx: framing error\0A\00", align 1
@UTSR1_ROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"rx: overrun error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipaq_micro*)* @micro_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @micro_rx_chars(%struct.ipaq_micro* %0) #0 {
  %2 = alloca %struct.ipaq_micro*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipaq_micro* %0, %struct.ipaq_micro** %2, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %7 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UTSR1, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @UTSR1_RNE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %17 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UTDR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @UTSR1_PRE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %28 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %53

31:                                               ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @UTSR1_FRE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %38 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %52

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @UTSR1_ROR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %48 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.ipaq_micro*, %struct.ipaq_micro** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @micro_process_char(%struct.ipaq_micro* %54, i32 %55)
  br label %5

57:                                               ; preds = %5
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @micro_process_char(%struct.ipaq_micro*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
