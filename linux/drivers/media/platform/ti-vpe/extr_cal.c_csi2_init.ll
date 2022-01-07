; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32 }

@CAL_GEN_ENABLE = common dso_local global i32 0, align 4
@CAL_CSI2_TIMING_FORCE_RX_MODE_IO1_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_TIMING_STOP_STATE_X16_IO1_MASK = common dso_local global i32 0, align 4
@CAL_GEN_DISABLE = common dso_local global i32 0, align 4
@CAL_CSI2_TIMING_STOP_STATE_X4_IO1_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"CAL_CSI2_TIMING(%d) = 0x%08x\0A\00", align 1
@CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_OPERATIONAL = common dso_local global i32 0, align 4
@CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_STATE_ON = common dso_local global i32 0, align 4
@CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_STATE_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"CAL_CSI2_COMPLEXIO_CFG(%d) = 0x%08x\0A\00", align 1
@CAL_CTRL = common dso_local global i32 0, align 4
@CAL_CTRL_BURSTSIZE_BURST128 = common dso_local global i32 0, align 4
@CAL_CTRL_BURSTSIZE_MASK = common dso_local global i32 0, align 4
@CAL_CTRL_TAGCNT_MASK = common dso_local global i32 0, align 4
@CAL_CTRL_POSTED_WRITES_NONPOSTED = common dso_local global i32 0, align 4
@CAL_CTRL_POSTED_WRITES_MASK = common dso_local global i32 0, align 4
@CAL_CTRL_MFLAGL_MASK = common dso_local global i32 0, align 4
@CAL_CTRL_MFLAGH_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"CAL_CTRL = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @csi2_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_init(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %5 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @CAL_CSI2_TIMING(i32 %10)
  %12 = call i32 @reg_read(i32 %7, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @CAL_GEN_ENABLE, align 4
  %14 = load i32, i32* @CAL_CSI2_TIMING_FORCE_RX_MODE_IO1_MASK, align 4
  %15 = call i32 @set_field(i32* %4, i32 %13, i32 %14)
  %16 = load i32, i32* @CAL_GEN_ENABLE, align 4
  %17 = load i32, i32* @CAL_CSI2_TIMING_STOP_STATE_X16_IO1_MASK, align 4
  %18 = call i32 @set_field(i32* %4, i32 %16, i32 %17)
  %19 = load i32, i32* @CAL_GEN_DISABLE, align 4
  %20 = load i32, i32* @CAL_CSI2_TIMING_STOP_STATE_X4_IO1_MASK, align 4
  %21 = call i32 @set_field(i32* %4, i32 %19, i32 %20)
  %22 = load i32, i32* @CAL_CSI2_TIMING_STOP_STATE_COUNTER_IO1_MASK, align 4
  %23 = call i32 @set_field(i32* %4, i32 407, i32 %22)
  %24 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CAL_CSI2_TIMING(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @reg_write(i32 %26, i32 %30, i32 %31)
  %33 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %34 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CAL_CSI2_TIMING(i32 %42)
  %44 = call i32 @reg_read(i32 %39, i32 %43)
  %45 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %44)
  %46 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %50 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CAL_CSI2_COMPLEXIO_CFG(i32 %51)
  %53 = call i32 @reg_read(i32 %48, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_OPERATIONAL, align 4
  %55 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_RESET_CTRL_MASK, align 4
  %56 = call i32 @set_field(i32* %4, i32 %54, i32 %55)
  %57 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_STATE_ON, align 4
  %58 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_PWR_CMD_MASK, align 4
  %59 = call i32 @set_field(i32* %4, i32 %57, i32 %58)
  %60 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %61 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CAL_CSI2_COMPLEXIO_CFG(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @reg_write(i32 %62, i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %87, %1
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CAL_CSI2_COMPLEXIO_CFG(i32 %78)
  %80 = load i32, i32* @CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_MASK, align 4
  %81 = call i64 @reg_read_field(i32 %75, i32 %79, i32 %80)
  %82 = load i64, i64* @CAL_CSI2_COMPLEXIO_CFG_PWR_STATUS_STATE_ON, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %90

85:                                               ; preds = %72
  %86 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %69

90:                                               ; preds = %84, %69
  %91 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %92 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %93 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %99 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CAL_CSI2_COMPLEXIO_CFG(i32 %100)
  %102 = call i32 @reg_read(i32 %97, i32 %101)
  %103 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %102)
  %104 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %105 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CAL_CTRL, align 4
  %108 = call i32 @reg_read(i32 %106, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @CAL_CTRL_BURSTSIZE_BURST128, align 4
  %110 = load i32, i32* @CAL_CTRL_BURSTSIZE_MASK, align 4
  %111 = call i32 @set_field(i32* %4, i32 %109, i32 %110)
  %112 = load i32, i32* @CAL_CTRL_TAGCNT_MASK, align 4
  %113 = call i32 @set_field(i32* %4, i32 15, i32 %112)
  %114 = load i32, i32* @CAL_CTRL_POSTED_WRITES_NONPOSTED, align 4
  %115 = load i32, i32* @CAL_CTRL_POSTED_WRITES_MASK, align 4
  %116 = call i32 @set_field(i32* %4, i32 %114, i32 %115)
  %117 = load i32, i32* @CAL_CTRL_MFLAGL_MASK, align 4
  %118 = call i32 @set_field(i32* %4, i32 255, i32 %117)
  %119 = load i32, i32* @CAL_CTRL_MFLAGH_MASK, align 4
  %120 = call i32 @set_field(i32* %4, i32 255, i32 %119)
  %121 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %122 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CAL_CTRL, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @reg_write(i32 %123, i32 %124, i32 %125)
  %127 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %128 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %129 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CAL_CTRL, align 4
  %132 = call i32 @reg_read(i32 %130, i32 %131)
  %133 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  ret void
}

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @CAL_CSI2_TIMING(i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32, ...) #1

declare dso_local i32 @CAL_CSI2_COMPLEXIO_CFG(i32) #1

declare dso_local i64 @reg_read_field(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
