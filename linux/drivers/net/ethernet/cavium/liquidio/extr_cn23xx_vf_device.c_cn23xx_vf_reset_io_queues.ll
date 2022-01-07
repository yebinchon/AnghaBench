; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_vf_reset_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_vf_reset_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BUSY_READING_REG_VF_LOOP_COUNT = common dso_local global i64 0, align 8
@CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"clearing the reset reg failed or setting the quiet reg failed for qno: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clearing the reset failed for qno: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, i64)* @cn23xx_vf_reset_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_vf_reset_io_queues(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* @BUSY_READING_REG_VF_LOOP_COUNT, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %18)
  %20 = call i32 @octeon_read_csr64(%struct.octeon_device* %17, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @octeon_write_csr64(%struct.octeon_device* %24, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %16
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %12

32:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %111, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %114

37:                                               ; preds = %33
  %38 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %39)
  %41 = call i32 @octeon_read_csr64(%struct.octeon_device* %38, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %59, %37
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @READ_ONCE(i32 %43)
  %45 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @READ_ONCE(i32 %49)
  %51 = load i32, i32* @CN23XX_PKT_INPUT_CTL_QUIET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %54, %48, %42
  %58 = phi i1 [ false, %48 ], [ false, %42 ], [ %56, %54 ]
  br i1 %58, label %59, label %68

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %62)
  %64 = call i32 @octeon_read_csr64(%struct.octeon_device* %61, i32 %63)
  %65 = call i32 @WRITE_ONCE(i32 %60, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %6, align 8
  br label %42

68:                                               ; preds = %57
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %76)
  store i32 -1, i32* %3, align 4
  br label %116

78:                                               ; preds = %68
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @READ_ONCE(i32 %80)
  %82 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @WRITE_ONCE(i32 %79, i32 %84)
  %86 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @READ_ONCE(i32 %89)
  %91 = call i32 @octeon_write_csr64(%struct.octeon_device* %86, i32 %88, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64 %94)
  %96 = call i32 @octeon_read_csr64(%struct.octeon_device* %93, i32 %95)
  %97 = call i32 @WRITE_ONCE(i32 %92, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @READ_ONCE(i32 %98)
  %100 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %78
  %104 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  store i32 -1, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %78
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %33

114:                                              ; preds = %33
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %71
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
