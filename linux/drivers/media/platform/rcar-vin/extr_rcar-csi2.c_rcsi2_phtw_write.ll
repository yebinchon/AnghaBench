; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_phtw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_phtw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_csi2 = type { i32 }

@PHTW_REG = common dso_local global i32 0, align 4
@PHTW_DWEN = common dso_local global i32 0, align 4
@PHTW_CWEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Timeout waiting for PHTW_DWEN and/or PHTW_CWEN\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_csi2*, i32, i32)* @rcsi2_phtw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_phtw_write(%struct.rcar_csi2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_csi2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_csi2* %0, %struct.rcar_csi2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %10 = load i32, i32* @PHTW_REG, align 4
  %11 = load i32, i32* @PHTW_DWEN, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PHTW_TESTDIN_DATA(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @PHTW_CWEN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PHTW_TESTDIN_CODE(i32 %17)
  %19 = or i32 %16, %18
  %20 = call i32 @rcsi2_write(%struct.rcar_csi2* %9, i32 %10, i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %36, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %22, 20
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %26 = load i32, i32* @PHTW_REG, align 4
  %27 = call i32 @rcsi2_read(%struct.rcar_csi2* %25, i32 %26)
  %28 = load i32, i32* @PHTW_DWEN, align 4
  %29 = load i32, i32* @PHTW_CWEN, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %46

34:                                               ; preds = %24
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %41 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @rcsi2_write(%struct.rcar_csi2*, i32, i32) #1

declare dso_local i32 @PHTW_TESTDIN_DATA(i32) #1

declare dso_local i32 @PHTW_TESTDIN_CODE(i32) #1

declare dso_local i32 @rcsi2_read(%struct.rcar_csi2*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
