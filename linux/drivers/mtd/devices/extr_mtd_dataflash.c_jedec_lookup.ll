; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_jedec_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_jedec_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_info = type { i32, i64 }
%struct.spi_device = type { i32 }

@dataflash_data = common dso_local global %struct.flash_info* null, align 8
@SUP_EXTID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"OTP, sector protect%s\0A\00", align 1
@SUP_POW2PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c", binary pagesize\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"status error %d\0A\00", align 1
@IS_POW2PS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_info* (%struct.spi_device*, i64, i32)* @jedec_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_info* @jedec_lookup(%struct.spi_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.flash_info*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flash_info*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.flash_info*, %struct.flash_info** @dataflash_data, align 8
  store %struct.flash_info* %10, %struct.flash_info** %8, align 8
  br label %11

11:                                               ; preds = %95, %3
  %12 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %13 = load %struct.flash_info*, %struct.flash_info** @dataflash_data, align 8
  %14 = load %struct.flash_info*, %struct.flash_info** @dataflash_data, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.flash_info* %14)
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %13, i64 %16
  %18 = icmp ult %struct.flash_info* %12, %17
  br i1 %18, label %19, label %98

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %24 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SUP_EXTID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %95

30:                                               ; preds = %22, %19
  %31 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %32 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %30
  %37 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %40 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SUP_POW2PS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %49 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SUP_POW2PS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %36
  %55 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %56 = call i32 @dataflash_status(%struct.spi_device* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.flash_info* @ERR_PTR(i32 %64)
  store %struct.flash_info* %65, %struct.flash_info** %4, align 8
  br label %102

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %72 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IS_POW2PS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  store %struct.flash_info* %78, %struct.flash_info** %4, align 8
  br label %102

79:                                               ; preds = %70
  br label %90

80:                                               ; preds = %66
  %81 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %82 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IS_POW2PS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  store %struct.flash_info* %88, %struct.flash_info** %4, align 8
  br label %102

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %79
  br label %93

91:                                               ; preds = %36
  %92 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  store %struct.flash_info* %92, %struct.flash_info** %4, align 8
  br label %102

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %30
  br label %95

95:                                               ; preds = %94, %29
  %96 = load %struct.flash_info*, %struct.flash_info** %8, align 8
  %97 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %96, i32 1
  store %struct.flash_info* %97, %struct.flash_info** %8, align 8
  br label %11

98:                                               ; preds = %11
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  %101 = call %struct.flash_info* @ERR_PTR(i32 %100)
  store %struct.flash_info* %101, %struct.flash_info** %4, align 8
  br label %102

102:                                              ; preds = %98, %91, %87, %77, %59
  %103 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  ret %struct.flash_info* %103
}

declare dso_local i32 @ARRAY_SIZE(%struct.flash_info*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dataflash_status(%struct.spi_device*) #1

declare dso_local %struct.flash_info* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
