; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_sense_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_sense_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@CPCAP_REGISTER_BITS = common dso_local global i32 0, align 4
@CPCAP_REG_INTS1 = common dso_local global i32 0, align 4
@CPCAP_REGISTER_SIZE = common dso_local global i32 0, align 4
@CPCAP_REG_INTS4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @cpcap_sense_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_sense_irq(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CPCAP_REGISTER_BITS, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CPCAP_REGISTER_BITS, align 4
  %16 = srem i32 %14, %15
  %17 = call i32 @BIT(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @CPCAP_REG_INTS1, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CPCAP_REGISTER_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CPCAP_REG_INTS1, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CPCAP_REG_INTS4, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %26
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @regmap_read(%struct.regmap* %34, i32 %35, i32* %10)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %39, %30
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
