; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_info = type { i8 }
%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i8*, i32 }

@SST25L_CMD_READ_ID = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"error reading device id\0A\00", align 1
@sst25l_flash_info = common dso_local global %struct.flash_info* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown id %.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_info* (%struct.spi_device*)* @sst25l_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_info* @sst25l_match_device(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.flash_info*, align 8
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.flash_info*, align 8
  %5 = alloca %struct.spi_message, align 4
  %6 = alloca %struct.spi_transfer, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.flash_info* null, %struct.flash_info** %4, align 8
  %11 = call i32 @spi_message_init(%struct.spi_message* %5)
  %12 = call i32 @memset(%struct.spi_transfer* %6, i32 0, i32 24)
  %13 = load i8, i8* @SST25L_CMD_READ_ID, align 1
  %14 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 3
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 4
  store i8 -1, i8* %18, align 1
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 5
  store i8 -1, i8* %19, align 1
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %6, i32 0, i32 2
  store i32 6, i32* %24, align 8
  %25 = call i32 @spi_message_add_tail(%struct.spi_transfer* %6, %struct.spi_message* %5)
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = call i32 @spi_sync(%struct.spi_device* %26, %struct.spi_message* %5)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.flash_info* null, %struct.flash_info** %2, align 8
  br label %80

34:                                               ; preds = %1
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 4
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 5
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %38, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %10, align 1
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %66, %34
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.flash_info*, %struct.flash_info** @sst25l_flash_info, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.flash_info* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.flash_info*, %struct.flash_info** @sst25l_flash_info, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %50, i64 %52
  %54 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.flash_info*, %struct.flash_info** @sst25l_flash_info, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %61, i64 %63
  store %struct.flash_info* %64, %struct.flash_info** %4, align 8
  br label %65

65:                                               ; preds = %60, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %71 = icmp ne %struct.flash_info* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %74 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %73, i32 0, i32 0
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  store %struct.flash_info* %79, %struct.flash_info** %2, align 8
  br label %80

80:                                               ; preds = %78, %30
  %81 = load %struct.flash_info*, %struct.flash_info** %2, align 8
  ret %struct.flash_info* %81
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.flash_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
