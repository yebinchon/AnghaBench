; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds990x_chip = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@APDS990X_ENABLE = common dso_local global i32 0, align 4
@APDS990X_EN_DISABLE_ALL = common dso_local global i32 0, align 4
@APDS990X_PTIME = common dso_local global i32 0, align 4
@APDS990X_PTIME_DEFAULT = common dso_local global i32 0, align 4
@APDS990X_WTIME = common dso_local global i32 0, align 4
@APDS990X_WTIME_DEFAULT = common dso_local global i32 0, align 4
@APDS_LUX_AVERAGING_TIME = common dso_local global i32 0, align 4
@APDS990X_CONFIG = common dso_local global i32 0, align 4
@APDS990X_PERS = common dso_local global i32 0, align 4
@APDS990X_APERS_SHIFT = common dso_local global i32 0, align 4
@APDS990X_PPERS_SHIFT = common dso_local global i32 0, align 4
@APDS990X_PPCOUNT = common dso_local global i32 0, align 4
@APDS990X_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds990x_chip*)* @apds990x_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_configure(%struct.apds990x_chip* %0) #0 {
  %2 = alloca %struct.apds990x_chip*, align 8
  store %struct.apds990x_chip* %0, %struct.apds990x_chip** %2, align 8
  %3 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %4 = load i32, i32* @APDS990X_ENABLE, align 4
  %5 = load i32, i32* @APDS990X_EN_DISABLE_ALL, align 4
  %6 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %3, i32 %4, i32 %5)
  %7 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %8 = load i32, i32* @APDS990X_PTIME, align 4
  %9 = load i32, i32* @APDS990X_PTIME_DEFAULT, align 4
  %10 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %7, i32 %8, i32 %9)
  %11 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %12 = load i32, i32* @APDS990X_WTIME, align 4
  %13 = load i32, i32* @APDS990X_WTIME_DEFAULT, align 4
  %14 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %11, i32 %12, i32 %13)
  %15 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %16 = load i32, i32* @APDS_LUX_AVERAGING_TIME, align 4
  %17 = call i32 @apds990x_set_atime(%struct.apds990x_chip* %15, i32 %16)
  %18 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %19 = load i32, i32* @APDS990X_CONFIG, align 4
  %20 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %18, i32 %19, i32 0)
  %21 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %22 = load i32, i32* @APDS990X_PERS, align 4
  %23 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %24 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @APDS990X_APERS_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %29 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @APDS990X_PPERS_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %27, %32
  %34 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %21, i32 %22, i32 %33)
  %35 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %36 = load i32, i32* @APDS990X_PPCOUNT, align 4
  %37 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %38 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %35, i32 %36, i32 %41)
  %43 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %44 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %46 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %48 = load i32, i32* @APDS990X_CONTROL, align 4
  %49 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %50 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 6
  %53 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %54 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 4
  %57 = or i32 %52, %56
  %58 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %59 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 2
  %62 = or i32 %57, %61
  %63 = load %struct.apds990x_chip*, %struct.apds990x_chip** %2, align 8
  %64 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 0
  %67 = or i32 %62, %66
  %68 = call i32 @apds990x_write_byte(%struct.apds990x_chip* %47, i32 %48, i32 %67)
  ret i32 0
}

declare dso_local i32 @apds990x_write_byte(%struct.apds990x_chip*, i32, i32) #1

declare dso_local i32 @apds990x_set_atime(%struct.apds990x_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
