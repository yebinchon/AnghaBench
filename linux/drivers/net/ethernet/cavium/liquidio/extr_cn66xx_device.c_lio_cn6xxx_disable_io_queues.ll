; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_disable_io_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_disable_io_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_INSTR_ENB = common dso_local global i32 0, align 4
@CN6XXX_SLI_PORT_IN_RST_IQ = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_OUT_ENB = common dso_local global i32 0, align 4
@CN6XXX_SLI_PORT_IN_RST_OQ = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_CNT_INT = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_TIME_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_cn6xxx_disable_io_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %7 = load i32, i32* @HZ, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %9 = load i32, i32* @CN6XXX_SLI_PKT_INSTR_ENB, align 4
  %10 = call i32 @octeon_read_csr(%struct.octeon_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = load i32, i32* @CN6XXX_SLI_PKT_INSTR_ENB, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @octeon_write_csr(%struct.octeon_device* %17, i32 %18, i32 %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = load i32, i32* @CN6XXX_SLI_PORT_IN_RST_IQ, align 4
  %27 = call i32 @octeon_read_csr(%struct.octeon_device* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %40, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  %37 = icmp ne i32 %35, 0
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i1 [ false, %28 ], [ %37, %34 ]
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %42 = load i32, i32* @CN6XXX_SLI_PORT_IN_RST_IQ, align 4
  %43 = call i32 @octeon_read_csr(%struct.octeon_device* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %28

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %49 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @BIT_ULL(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %70

61:                                               ; preds = %51
  %62 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @CN6XXX_SLI_IQ_DOORBELL(i32 %63)
  %65 = call i32 @octeon_write_csr(%struct.octeon_device* %62, i32 %64, i32 -1)
  %66 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @CN6XXX_SLI_IQ_DOORBELL(i32 %67)
  %69 = call i32 @octeon_read_csr(%struct.octeon_device* %66, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %61, %60
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %75 = load i32, i32* @CN6XXX_SLI_PKT_OUT_ENB, align 4
  %76 = call i32 @octeon_read_csr(%struct.octeon_device* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %84 = load i32, i32* @CN6XXX_SLI_PKT_OUT_ENB, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @octeon_write_csr(%struct.octeon_device* %83, i32 %84, i32 %85)
  %87 = load i32, i32* @HZ, align 4
  store i32 %87, i32* %5, align 4
  %88 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %4, align 4
  %92 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %93 = load i32, i32* @CN6XXX_SLI_PORT_IN_RST_OQ, align 4
  %94 = call i32 @octeon_read_csr(%struct.octeon_device* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %107, %73
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %5, align 4
  %104 = icmp ne i32 %102, 0
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i1 [ false, %95 ], [ %104, %101 ]
  br i1 %106, label %107, label %112

107:                                              ; preds = %105
  %108 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %109 = load i32, i32* @CN6XXX_SLI_PORT_IN_RST_OQ, align 4
  %110 = call i32 @octeon_read_csr(%struct.octeon_device* %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %95

112:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %146, %112
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %116 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %115)
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %113
  %119 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %120 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @BIT_ULL(i32 %123)
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %118
  br label %146

128:                                              ; preds = %118
  %129 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @CN6XXX_SLI_OQ_PKTS_CREDIT(i32 %130)
  %132 = call i32 @octeon_write_csr(%struct.octeon_device* %129, i32 %131, i32 -1)
  %133 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @CN6XXX_SLI_OQ_PKTS_CREDIT(i32 %134)
  %136 = call i32 @octeon_read_csr(%struct.octeon_device* %133, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @CN6XXX_SLI_OQ_PKTS_SENT(i32 %138)
  %140 = call i32 @octeon_read_csr(%struct.octeon_device* %137, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @CN6XXX_SLI_OQ_PKTS_SENT(i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @octeon_write_csr(%struct.octeon_device* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %128, %127
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  br label %113

149:                                              ; preds = %113
  %150 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %151 = load i32, i32* @CN6XXX_SLI_PKT_CNT_INT, align 4
  %152 = call i32 @octeon_read_csr(%struct.octeon_device* %150, i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %157 = load i32, i32* @CN6XXX_SLI_PKT_CNT_INT, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @octeon_write_csr(%struct.octeon_device* %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %149
  %161 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %162 = load i32, i32* @CN6XXX_SLI_PKT_TIME_INT, align 4
  %163 = call i32 @octeon_read_csr(%struct.octeon_device* %161, i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %168 = load i32, i32* @CN6XXX_SLI_PKT_TIME_INT, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @octeon_write_csr(%struct.octeon_device* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %160
  ret void
}

declare dso_local i32 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @CN6XXX_SLI_IQ_DOORBELL(i32) #1

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @CN6XXX_SLI_OQ_PKTS_CREDIT(i32) #1

declare dso_local i32 @CN6XXX_SLI_OQ_PKTS_SENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
