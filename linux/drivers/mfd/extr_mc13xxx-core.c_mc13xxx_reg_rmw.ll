; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_reg_rmw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_reg_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13xxx = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"[0x%02x] <- 0x%06x (mask: 0x%06x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc13xxx_reg_rmw(%struct.mc13xxx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mc13xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mc13xxx* %0, %struct.mc13xxx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %15 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_vdbg(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %22 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
