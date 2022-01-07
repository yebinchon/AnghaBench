; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_write_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_write_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst25l_flash = type { i32 }

@SST25L_CMD_WREN = common dso_local global i8 0, align 1
@SST25L_CMD_WRDI = common dso_local global i8 0, align 1
@SST25L_CMD_EWSR = common dso_local global i8 0, align 1
@SST25L_CMD_WRSR = common dso_local global i8 0, align 1
@SST25L_STATUS_BP0 = common dso_local global i8 0, align 1
@SST25L_STATUS_BP1 = common dso_local global i8 0, align 1
@SST25L_STATUS_WREN = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst25l_flash*, i32)* @sst25l_write_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_write_enable(%struct.sst25l_flash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst25l_flash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sst25l_flash* %0, %struct.sst25l_flash** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8, i8* @SST25L_CMD_WREN, align 1
  %13 = zext i8 %12 to i32
  br label %17

14:                                               ; preds = %2
  %15 = load i8, i8* @SST25L_CMD_WRDI, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %19, i8* %20, align 1
  %21 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %22 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %25 = call i32 @spi_write(i32 %23, i8* %24, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %87

30:                                               ; preds = %17
  %31 = load i8, i8* @SST25L_CMD_EWSR, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %34 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %37 = call i32 @spi_write(i32 %35, i8* %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %87

42:                                               ; preds = %30
  %43 = load i8, i8* @SST25L_CMD_WRSR, align 1
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  %49 = load i8, i8* @SST25L_STATUS_BP0, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @SST25L_STATUS_BP1, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  br label %54

54:                                               ; preds = %48, %47
  %55 = phi i32 [ 0, %47 ], [ %53, %48 ]
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %56, i8* %57, align 1
  %58 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %59 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %62 = call i32 @spi_write(i32 %60, i8* %61, i32 2)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %87

67:                                               ; preds = %54
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.sst25l_flash*, %struct.sst25l_flash** %4, align 8
  %72 = call i32 @sst25l_status(%struct.sst25l_flash* %71, i32* %7)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %87

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SST25L_STATUS_WREN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @EROFS, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %67
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %82, %75, %65, %40, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @spi_write(i32, i8*, i32) #1

declare dso_local i32 @sst25l_status(%struct.sst25l_flash*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
