; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_set_io_queues_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_set_io_queues_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BUSY_READING_REG_VF_LOOP_COUNT = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_INSTR_ENB = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_OUT_ENB = common dso_local global i32 0, align 4
@OCTEON_CN23XX_VF_VID = common dso_local global i64 0, align 8
@CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"clearing the reset reg failed or setting the quiet reg failed for qno: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to reset qno %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_set_io_queues_off(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %7 = load i32, i32* @BUSY_READING_REG_VF_LOOP_COUNT, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = load i32, i32* @CN6XXX_SLI_PKT_INSTR_ENB, align 4
  %14 = call i32 @octeon_write_csr(%struct.octeon_device* %12, i32 %13, i32 0)
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = load i32, i32* @CN6XXX_SLI_PKT_OUT_ENB, align 4
  %17 = call i32 @octeon_write_csr(%struct.octeon_device* %15, i32 %16, i32 0)
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OCTEON_CN23XX_VF_VID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %99

24:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %95, %24
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %25
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %34)
  %36 = call i32 @octeon_read_csr64(%struct.octeon_device* %33, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %52, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CN23XX_PKT_INPUT_CTL_QUIET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %42, %37
  %51 = phi i1 [ false, %42 ], [ false, %37 ], [ %49, %47 ]
  br i1 %51, label %52, label %59

52:                                               ; preds = %50
  %53 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %54)
  %56 = call i32 @octeon_read_csr64(%struct.octeon_device* %53, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  br label %37

59:                                               ; preds = %50
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %67)
  store i32 -1, i32* %2, align 4
  br label %101

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  store i32 %73, i32* %6, align 4
  %74 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @octeon_write_csr64(%struct.octeon_device* %74, i32 %76, i32 %77)
  %79 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %80)
  %82 = call i32 @octeon_read_csr64(%struct.octeon_device* %79, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %69
  %88 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  store i32 -1, i32* %2, align 4
  br label %101

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %5, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %5, align 8
  br label %25

98:                                               ; preds = %25
  br label %99

99:                                               ; preds = %98, %18
  br label %100

100:                                              ; preds = %99, %11
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %87, %62
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
