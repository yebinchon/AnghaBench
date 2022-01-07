; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_read_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_read_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32 }

@SMIAPP_NVM_PAGE_SIZE = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_DATA_TRANSFER_IF_1_PAGE_SELECT = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_DATA_TRANSFER_IF_1_CTRL = common dso_local global i32 0, align 4
@SMIAPP_DATA_TRANSFER_IF_1_CTRL_EN = common dso_local global i32 0, align 4
@SMIAPP_DATA_TRANSFER_IF_1_CTRL_RD_EN = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_DATA_TRANSFER_IF_1_STATUS = common dso_local global i64 0, align 8
@SMIAPP_DATA_TRANSFER_IF_1_STATUS_RD_READY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_DATA_TRANSFER_IF_1_DATA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*, i8*)* @smiapp_read_nvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_read_nvm(%struct.smiapp_sensor* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smiapp_sensor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %14 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SMIAPP_NVM_PAGE_SIZE, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %91, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %24 = load i32, i32* @SMIAPP_REG_U8_DATA_TRANSFER_IF_1_PAGE_SELECT, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @smiapp_write(%struct.smiapp_sensor* %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %95

30:                                               ; preds = %22
  %31 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %32 = load i32, i32* @SMIAPP_REG_U8_DATA_TRANSFER_IF_1_CTRL, align 4
  %33 = load i32, i32* @SMIAPP_DATA_TRANSFER_IF_1_CTRL_EN, align 4
  %34 = load i32, i32* @SMIAPP_DATA_TRANSFER_IF_1_CTRL_RD_EN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @smiapp_write(%struct.smiapp_sensor* %31, i32 %32, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %95

40:                                               ; preds = %30
  store i32 1000, i32* %6, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %46 = load i64, i64* @SMIAPP_REG_U8_DATA_TRANSFER_IF_1_STATUS, align 8
  %47 = call i32 @smiapp_read(%struct.smiapp_sensor* %45, i64 %46, i32* %7)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %95

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SMIAPP_DATA_TRANSFER_IF_1_STATUS_RD_READY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %41

61:                                               ; preds = %56, %41
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %95

67:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SMIAPP_NVM_PAGE_SIZE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %74 = load i64, i64* @SMIAPP_REG_U8_DATA_TRANSFER_IF_1_DATA_0, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i32 @smiapp_read(%struct.smiapp_sensor* %73, i64 %77, i32* %10)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %95

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  store i8 %84, i8* %85, align 1
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %68

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %18

94:                                               ; preds = %18
  br label %95

95:                                               ; preds = %94, %81, %64, %50, %39, %29
  %96 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %4, align 8
  %97 = load i32, i32* @SMIAPP_REG_U8_DATA_TRANSFER_IF_1_CTRL, align 4
  %98 = call i32 @smiapp_write(%struct.smiapp_sensor* %96, i32 %97, i32 0)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @smiapp_write(%struct.smiapp_sensor*, i32, i32) #1

declare dso_local i32 @smiapp_read(%struct.smiapp_sensor*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
