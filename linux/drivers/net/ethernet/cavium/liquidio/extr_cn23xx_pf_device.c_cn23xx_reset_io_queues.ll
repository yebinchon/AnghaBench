; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_reset_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_reset_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"clearing the reset reg failed or setting the quiet reg failed for qno: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clearing the reset failed for qno: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @cn23xx_reset_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_reset_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 1000, i64* %9, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %39, %1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %28)
  %30 = call i32 @octeon_read_csr64(%struct.octeon_device* %27, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @octeon_write_csr64(%struct.octeon_device* %34, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %22

42:                                               ; preds = %22
  %43 = load i64, i64* %7, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %121, %42
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %44
  %49 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %50)
  %52 = call i32 @octeon_read_csr64(%struct.octeon_device* %49, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %71, %48
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @READ_ONCE(i32 %54)
  %56 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @READ_ONCE(i32 %60)
  %62 = load i32, i32* @CN23XX_PKT_INPUT_CTL_QUIET, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %9, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %9, align 8
  %68 = icmp ne i64 %66, 0
  br label %69

69:                                               ; preds = %65, %59, %53
  %70 = phi i1 [ false, %59 ], [ false, %53 ], [ %68, %65 ]
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %74)
  %76 = call i32 @octeon_read_csr64(%struct.octeon_device* %73, i32 %75)
  %77 = call i32 @WRITE_ONCE(i32 %72, i32 %76)
  br label %53

78:                                               ; preds = %69
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %86)
  store i32 -1, i32* %2, align 4
  br label %126

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @READ_ONCE(i32 %90)
  %92 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call i32 @WRITE_ONCE(i32 %89, i32 %94)
  %96 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @READ_ONCE(i32 %99)
  %101 = call i32 @octeon_write_csr64(%struct.octeon_device* %96, i32 %98, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %104)
  %106 = call i32 @octeon_read_csr64(%struct.octeon_device* %103, i32 %105)
  %107 = call i32 @WRITE_ONCE(i32 %102, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @READ_ONCE(i32 %108)
  %110 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %88
  %114 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  store i32 -1, i32* %4, align 4
  br label %120

120:                                              ; preds = %113, %88
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %6, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %44

124:                                              ; preds = %44
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %81
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64) #1

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
