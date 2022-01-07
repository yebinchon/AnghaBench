; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_mode_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_mode_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i64 }

@APDS990X_EN_AIEN = common dso_local global i32 0, align 4
@APDS990X_EN_PON = common dso_local global i32 0, align 4
@APDS990X_EN_AEN = common dso_local global i32 0, align 4
@APDS990X_EN_WEN = common dso_local global i32 0, align 4
@APDS990X_EN_PIEN = common dso_local global i32 0, align 4
@APDS990X_EN_PEN = common dso_local global i32 0, align 4
@APDS990X_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*)* @apds990x_mode_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_mode_on(%struct.apds990x_chip* %0) #0 {
  %2 = alloca %struct.apds990x_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %2, align 8
  %4 = load i32, i32* @APDS990X_EN_AIEN, align 4
  %5 = load i32, i32* @APDS990X_EN_PON, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @APDS990X_EN_AEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @APDS990X_EN_WEN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %12 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @APDS990X_EN_PIEN, align 4
  %17 = load i32, i32* @APDS990X_EN_PEN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %23 = load i32, i32* @APDS990X_ENABLE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %22, i32 %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @apds990x_write_byte(%struct.apds990x_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
