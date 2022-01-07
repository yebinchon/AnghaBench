; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_enable_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_enable_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CN23XX_PKT_INPUT_CTL_IS_64B = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"clearing the reset reg failed or setting the quiet reg failed for qno: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clearing the reset failed for qno: %u\0A\00", align 1
@CN23XX_PKT_INPUT_CTL_RING_ENB = common dso_local global i32 0, align 4
@CN23XX_PKT_OUTPUT_CTL_RING_ENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @cn23xx_enable_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn23xx_enable_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 1000, i64* %8, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %140, %1
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %143

24:                                               ; preds = %20
  %25 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @BIT_ULL(i64 %31)
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %24
  %36 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %37)
  %39 = call i32 @octeon_read_csr64(%struct.octeon_device* %36, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @CN23XX_PKT_INPUT_CTL_IS_64B, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @octeon_write_csr64(%struct.octeon_device* %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %24
  %49 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @BIT_ULL(i64 %55)
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %139

59:                                               ; preds = %48
  %60 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %61)
  %63 = call i32 @octeon_read_csr64(%struct.octeon_device* %60, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %126

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @CN23XX_PKT_INPUT_CTL_QUIET, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %79, %74, %69
  %84 = phi i1 [ false, %74 ], [ false, %69 ], [ %82, %79 ]
  br i1 %84, label %85, label %90

85:                                               ; preds = %83
  %86 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %87)
  %89 = call i32 @octeon_read_csr64(%struct.octeon_device* %86, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %69

90:                                               ; preds = %83
  %91 = load i64, i64* %8, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 %98)
  store i32 -1, i32* %2, align 4
  br label %178

100:                                              ; preds = %90
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  store i32 %104, i32* %4, align 4
  %105 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %106)
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @octeon_write_csr64(%struct.octeon_device* %105, i32 %107, i32 %108)
  %110 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %111)
  %113 = call i32 @octeon_read_csr64(%struct.octeon_device* %110, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %100
  %119 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %120 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %123)
  store i32 -1, i32* %2, align 4
  br label %178

125:                                              ; preds = %100
  br label %126

126:                                              ; preds = %125, %59
  %127 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %128)
  %130 = call i32 @octeon_read_csr64(%struct.octeon_device* %127, i32 %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RING_ENB, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %4, align 4
  %134 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64 %135)
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @octeon_write_csr64(%struct.octeon_device* %134, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %126, %48
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %7, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %7, align 8
  br label %20

143:                                              ; preds = %20
  %144 = load i64, i64* %5, align 8
  store i64 %144, i64* %7, align 8
  br label %145

145:                                              ; preds = %174, %143
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %6, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %145
  %150 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %5, align 8
  %156 = sub nsw i64 %154, %155
  %157 = call i32 @BIT_ULL(i64 %156)
  %158 = and i32 %153, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %149
  %161 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %162)
  %164 = call i64 @octeon_read_csr(%struct.octeon_device* %161, i32 %163)
  store i64 %164, i64* %9, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @CN23XX_PKT_OUTPUT_CTL_RING_ENB, align 8
  %167 = or i64 %165, %166
  store i64 %167, i64* %9, align 8
  %168 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64 %169)
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @octeon_write_csr(%struct.octeon_device* %168, i32 %170, i64 %171)
  br label %173

173:                                              ; preds = %160, %149
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %7, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %7, align 8
  br label %145

177:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %118, %93
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i64) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i64 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_CONTROL(i64) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
