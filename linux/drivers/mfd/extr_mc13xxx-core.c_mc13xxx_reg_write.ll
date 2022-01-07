; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13xxx = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"[0x%02x] <- 0x%06x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc13xxx_reg_write(%struct.mc13xxx* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mc13xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mc13xxx* %0, %struct.mc13xxx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %9 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @dev_vdbg(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @BIT(i32 24)
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %22 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @regmap_write(i32 %23, i32 %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
