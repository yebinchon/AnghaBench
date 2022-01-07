; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_refresh_pthres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_refresh_pthres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@APDS_PROX_HYSTERESIS = common dso_local global i32 0, align 4
@APDS_RANGE = common dso_local global i32 0, align 4
@APDS990X_PILTL = common dso_local global i32 0, align 4
@APDS990X_PIHTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*, i32)* @apds990x_refresh_pthres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_refresh_pthres(%struct.apds990x_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apds990x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %10 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @pm_runtime_suspended(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %19 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %23 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %24 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %28 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @APDS_PROX_HYSTERESIS, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %33 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %38 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @APDS_RANGE, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %45 = load i32, i32* @APDS990X_PILTL, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @apds990x_write_word(%struct.apds990x_chip* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.apds990x_chip*, %struct.apds990x_chip** %4, align 8
  %49 = load i32, i32* @APDS990X_PIHTL, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @apds990x_write_word(%struct.apds990x_chip* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %43, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @pm_runtime_suspended(i32*) #1

declare dso_local i32 @apds990x_write_word(%struct.apds990x_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
