; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ESPC_PIO_STAT_READ_START = common dso_local global i32 0, align 4
@ESPC_PIO_STAT_ADDR_SHIFT = common dso_local global i32 0, align 4
@ESPC_PIO_STAT_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESPC_PIO_STAT = common dso_local global i32 0, align 4
@ESPC_PIO_STAT_READ_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EEPROM read timeout frame[%llx]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ESPC_PIO_STAT_DATA = common dso_local global i32 0, align 4
@ESPC_PIO_STAT_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32)* @niu_pci_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_pci_eeprom_read(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ESPC_PIO_STAT_READ_START, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ESPC_PIO_STAT_ADDR_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ESPC_PIO_STAT_ADDR, align 4
  %16 = load i32, i32* @ESPC_PIO_STAT_ADDR_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %96

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @ESPC_PIO_STAT, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nw64(i32 %24, i32 %25)
  store i32 64, i32* %8, align 4
  br label %27

27:                                               ; preds = %37, %22
  %28 = call i32 @udelay(i32 5)
  %29 = load i32, i32* @ESPC_PIO_STAT, align 4
  %30 = call i32 @nr64(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ESPC_PIO_STAT_READ_END, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %41

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %27, label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ESPC_PIO_STAT_READ_END, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.niu*, %struct.niu** %4, align 8
  %48 = getelementptr inbounds %struct.niu, %struct.niu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %96

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @ESPC_PIO_STAT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @nw64(i32 %57, i32 %58)
  store i32 64, i32* %8, align 4
  br label %60

60:                                               ; preds = %70, %55
  %61 = call i32 @udelay(i32 5)
  %62 = load i32, i32* @ESPC_PIO_STAT, align 4
  %63 = call i32 @nr64(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ESPC_PIO_STAT_READ_END, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %74

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %60, label %74

74:                                               ; preds = %70, %68
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ESPC_PIO_STAT_READ_END, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %74
  %80 = load %struct.niu*, %struct.niu** %4, align 8
  %81 = getelementptr inbounds %struct.niu, %struct.niu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %96

88:                                               ; preds = %74
  %89 = load i32, i32* @ESPC_PIO_STAT, align 4
  %90 = call i32 @nr64(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ESPC_PIO_STAT_DATA, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @ESPC_PIO_STAT_DATA_SHIFT, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %79, %46, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
