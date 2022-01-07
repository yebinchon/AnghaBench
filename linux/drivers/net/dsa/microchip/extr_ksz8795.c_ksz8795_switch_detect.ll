; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_switch_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_switch_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i64, i32, i64, i8*, i8*, i8* }

@REG_CHIP_ID0 = common dso_local global i32 0, align 4
@SW_CHIP_ID_M = common dso_local global i32 0, align 4
@FAMILY_ID = common dso_local global i32 0, align 4
@CHIP_ID_94 = common dso_local global i32 0, align 4
@CHIP_ID_95 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TOTAL_PORT_NUM = common dso_local global i64 0, align 8
@SWITCH_PORT_NUM = common dso_local global i8* null, align 8
@REG_PORT_1_STATUS_0 = common dso_local global i32 0, align 4
@PORT_FIBER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*)* @ksz8795_switch_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8795_switch_detect(%struct.ksz_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  %9 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %10 = load i32, i32* @REG_CHIP_ID0, align 4
  %11 = call i32 @ksz_read16(%struct.ksz_device* %9, i32 %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SW_CHIP_ID_M, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FAMILY_ID, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CHIP_ID_94, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CHIP_ID_95, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %16
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %29, %25
  %37 = load i64, i64* @TOTAL_PORT_NUM, align 8
  %38 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %39 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** @SWITCH_PORT_NUM, align 8
  %41 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %42 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @SWITCH_PORT_NUM, align 8
  %44 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %45 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CHIP_ID_95, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  store i32 149, i32* %5, align 4
  %50 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %51 = load i32, i32* @REG_PORT_1_STATUS_0, align 4
  %52 = call i32 @ksz_read8(%struct.ksz_device* %50, i32 %51, i32* %8)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PORT_FIBER_MODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 101, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49
  br label %74

59:                                               ; preds = %36
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @CHIP_ID_94, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %65 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %65, align 8
  %68 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %69 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %72 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  store i32 148, i32* %5, align 4
  br label %73

73:                                               ; preds = %63, %59
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, -256
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %82 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %84 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %88 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %90 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @BIT(i64 %91)
  %93 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %94 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %74, %33, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ksz_read16(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
