; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64 }

@S5P_FIMV_RISC2HOST_CMD_V6 = common dso_local global i64 0, align 8
@S5P_FIMV_HOST2RISC_CMD_V6 = common dso_local global i64 0, align 8
@S5P_FIMV_FW_VERSION_V6 = common dso_local global i64 0, align 8
@S5P_FIMV_REG_CLEAR_COUNT_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_REG_CLEAR_BEGIN_V6 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@S5P_FIMV_RISC_ON_V6 = common dso_local global i64 0, align 8
@S5P_FIMV_MFC_RESET_V6 = common dso_local global i64 0, align 8
@S5P_FIMV_SW_RESET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MFC_BW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout while resetting MFC\0A\00", align 1
@S5P_FIMV_MC_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %7 = call i32 (...) @mfc_debug_enter()
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %1
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %13 = load i64, i64* @S5P_FIMV_RISC2HOST_CMD_V6, align 8
  %14 = call i32 @mfc_write(%struct.s5p_mfc_dev* %12, i32 0, i64 %13)
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %16 = load i64, i64* @S5P_FIMV_HOST2RISC_CMD_V6, align 8
  %17 = call i32 @mfc_write(%struct.s5p_mfc_dev* %15, i32 0, i64 %16)
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %19 = load i64, i64* @S5P_FIMV_FW_VERSION_V6, align 8
  %20 = call i32 @mfc_write(%struct.s5p_mfc_dev* %18, i32 0, i64 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %33, %11
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @S5P_FIMV_REG_CLEAR_COUNT_V6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %27 = load i64, i64* @S5P_FIMV_REG_CLEAR_BEGIN_V6, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = call i32 @mfc_write(%struct.s5p_mfc_dev* %26, i32 0, i64 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %43 = call i64 @s5p_mfc_bus_reset(%struct.s5p_mfc_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %107

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %56 = call i32 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %60 = load i64, i64* @S5P_FIMV_RISC_ON_V6, align 8
  %61 = call i32 @mfc_write(%struct.s5p_mfc_dev* %59, i32 0, i64 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %64 = load i64, i64* @S5P_FIMV_MFC_RESET_V6, align 8
  %65 = call i32 @mfc_write(%struct.s5p_mfc_dev* %63, i32 8191, i64 %64)
  %66 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %67 = load i64, i64* @S5P_FIMV_MFC_RESET_V6, align 8
  %68 = call i32 @mfc_write(%struct.s5p_mfc_dev* %66, i32 0, i64 %67)
  br label %105

69:                                               ; preds = %1
  %70 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %71 = load i64, i64* @S5P_FIMV_SW_RESET, align 8
  %72 = call i32 @mfc_write(%struct.s5p_mfc_dev* %70, i32 1014, i64 %71)
  %73 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %74 = load i64, i64* @S5P_FIMV_SW_RESET, align 8
  %75 = call i32 @mfc_write(%struct.s5p_mfc_dev* %73, i32 994, i64 %74)
  %76 = call i32 @mdelay(i32 10)
  %77 = load i64, i64* @jiffies, align 8
  %78 = load i32, i32* @MFC_BW_TIMEOUT, align 4
  %79 = call i64 @msecs_to_jiffies(i32 %78)
  %80 = add i64 %77, %79
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %94, %69
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i64 @time_after(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = call i32 @mfc_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %107

90:                                               ; preds = %81
  %91 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %92 = load i32, i32* @S5P_FIMV_MC_STATUS, align 4
  %93 = call i32 @mfc_read(%struct.s5p_mfc_dev* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 3
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %81, label %98

98:                                               ; preds = %94
  %99 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %100 = load i64, i64* @S5P_FIMV_SW_RESET, align 8
  %101 = call i32 @mfc_write(%struct.s5p_mfc_dev* %99, i32 0, i64 %100)
  %102 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %103 = load i64, i64* @S5P_FIMV_SW_RESET, align 8
  %104 = call i32 @mfc_write(%struct.s5p_mfc_dev* %102, i32 1022, i64 %103)
  br label %105

105:                                              ; preds = %98, %62
  %106 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %86, %45
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i64) #1

declare dso_local i64 @s5p_mfc_bus_reset(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
