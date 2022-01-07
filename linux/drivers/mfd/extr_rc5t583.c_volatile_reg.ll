; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_volatile_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_volatile_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@RC5T583_GPIO_IOSEL = common dso_local global i32 0, align 4
@RC5T583_GPIO_GPOFUNC = common dso_local global i32 0, align 4
@RC5T583_SLPSEQ1 = common dso_local global i32 0, align 4
@RC5T583_SLPSEQ11 = common dso_local global i32 0, align 4
@RC5T583_REG_DC0CTL = common dso_local global i32 0, align 4
@RC5T583_REG_SR3CTL = common dso_local global i32 0, align 4
@RC5T583_REG_LDOEN1 = common dso_local global i32 0, align 4
@RC5T583_REG_LDO9DAC_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @volatile_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @volatile_reg(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %9 [
    i32 129, label %7
    i32 128, label %7
    i32 131, label %7
    i32 130, label %7
    i32 134, label %7
    i32 133, label %7
    i32 132, label %7
    i32 137, label %7
    i32 136, label %7
    i32 138, label %7
    i32 135, label %8
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %47

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RC5T583_GPIO_IOSEL, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RC5T583_GPIO_GPOFUNC, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %13, %9
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RC5T583_SLPSEQ1, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RC5T583_SLPSEQ11, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @RC5T583_REG_DC0CTL, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RC5T583_REG_SR3CTL, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RC5T583_REG_LDOEN1, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RC5T583_REG_LDO9DAC_DS, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %35, %26, %17, %8, %7
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
