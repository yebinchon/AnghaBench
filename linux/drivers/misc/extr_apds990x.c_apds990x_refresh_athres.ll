; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_refresh_athres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_refresh_athres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@APDS990X_AILTL = common dso_local global i32 0, align 4
@APDS990X_AIHTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*)* @apds990x_refresh_athres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_refresh_athres(%struct.apds990x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apds990x_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %3, align 8
  %5 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %6 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i64 @pm_runtime_suspended(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %14 = load i32, i32* @APDS990X_AILTL, align 4
  %15 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %16 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %17 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @apds990x_lux_to_threshold(%struct.apds990x_chip* %15, i32 %18)
  %20 = call i32 @apds990x_write_word(%struct.apds990x_chip* %13, i32 %14, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %22 = load i32, i32* @APDS990X_AIHTL, align 4
  %23 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %24 = load %struct.apds990x_chip*, %struct.apds990x_chip** %3, align 8
  %25 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @apds990x_lux_to_threshold(%struct.apds990x_chip* %23, i32 %26)
  %28 = call i32 @apds990x_write_word(%struct.apds990x_chip* %21, i32 %22, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @apds990x_write_word(%struct.apds990x_chip*, i32, i32) #1

declare dso_local i32 @apds990x_lux_to_threshold(%struct.apds990x_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
