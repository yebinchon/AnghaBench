; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_disable_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_disable_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RING_ENB = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RST = common dso_local global i32 0, align 4
@CN23XX_SLI_PKT_IOQ_RING_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @cn23xx_disable_io_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_disable_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %95, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %19
  %24 = load i32, i32* @HZ, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i32 %27)
  %29 = call i32 @octeon_read_csr64(%struct.octeon_device* %26, i32 %28)
  %30 = call i32 @WRITE_ONCE(i32 %25, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @READ_ONCE(i32 %32)
  %34 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RING_ENB, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @WRITE_ONCE(i32 %31, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @READ_ONCE(i32 %39)
  %41 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RST, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @WRITE_ONCE(i32 %38, i32 %42)
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @READ_ONCE(i32 %47)
  %49 = call i32 @octeon_write_csr64(%struct.octeon_device* %44, i32 %46, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %52 = load i32, i32* @CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %53 = call i32 @octeon_read_csr64(%struct.octeon_device* %51, i32 %52)
  %54 = call i32 @WRITE_ONCE(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %68, %23
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @READ_ONCE(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @BIT_ULL(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %4, align 4
  %65 = icmp ne i32 %63, 0
  br label %66

66:                                               ; preds = %62, %55
  %67 = phi i1 [ false, %55 ], [ %65, %62 ]
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %71 = load i32, i32* @CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %72 = call i32 @octeon_read_csr64(%struct.octeon_device* %70, i32 %71)
  %73 = call i32 @WRITE_ONCE(i32 %69, i32 %72)
  %74 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %55

75:                                               ; preds = %66
  %76 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @CN23XX_SLI_IQ_DOORBELL(i32 %77)
  %79 = call i32 @octeon_write_csr(%struct.octeon_device* %76, i32 %78, i32 -1)
  br label %80

80:                                               ; preds = %92, %75
  %81 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @CN23XX_SLI_IQ_DOORBELL(i32 %82)
  %84 = call i32 @octeon_read_csr64(%struct.octeon_device* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = icmp ne i32 %87, 0
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i1 [ false, %80 ], [ %89, %86 ]
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %80

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %19

98:                                               ; preds = %19
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %163, %98
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %166

104:                                              ; preds = %100
  %105 = load i32, i32* @HZ, align 4
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %108 = load i32, i32* @CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %109 = call i32 @octeon_read_csr64(%struct.octeon_device* %107, i32 %108)
  %110 = call i32 @WRITE_ONCE(i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %124, %104
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @READ_ONCE(i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @BIT_ULL(i32 %114)
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %4, align 4
  %121 = icmp ne i32 %119, 0
  br label %122

122:                                              ; preds = %118, %111
  %123 = phi i1 [ false, %111 ], [ %121, %118 ]
  br i1 %123, label %124, label %131

124:                                              ; preds = %122
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %127 = load i32, i32* @CN23XX_SLI_PKT_IOQ_RING_RST, align 4
  %128 = call i32 @octeon_read_csr64(%struct.octeon_device* %126, i32 %127)
  %129 = call i32 @WRITE_ONCE(i32 %125, i32 %128)
  %130 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %111

131:                                              ; preds = %122
  %132 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @CN23XX_SLI_OQ_PKTS_CREDIT(i32 %133)
  %135 = call i32 @octeon_write_csr(%struct.octeon_device* %132, i32 %134, i32 -1)
  br label %136

136:                                              ; preds = %148, %131
  %137 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @CN23XX_SLI_OQ_PKTS_CREDIT(i32 %138)
  %140 = call i32 @octeon_read_csr64(%struct.octeon_device* %137, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %4, align 4
  %145 = icmp ne i32 %143, 0
  br label %146

146:                                              ; preds = %142, %136
  %147 = phi i1 [ false, %136 ], [ %145, %142 ]
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  %149 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %136

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @CN23XX_SLI_OQ_PKTS_SENT(i32 %153)
  %155 = call i32 @octeon_read_csr(%struct.octeon_device* %152, i32 %154)
  %156 = call i32 @WRITE_ONCE(i32 %151, i32 %155)
  %157 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @CN23XX_SLI_OQ_PKTS_SENT(i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @READ_ONCE(i32 %160)
  %162 = call i32 @octeon_write_csr(%struct.octeon_device* %157, i32 %159, i32 %161)
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %3, align 4
  br label %100

166:                                              ; preds = %100
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_SLI_IQ_DOORBELL(i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKTS_CREDIT(i32) #1

declare dso_local i32 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKTS_SENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
