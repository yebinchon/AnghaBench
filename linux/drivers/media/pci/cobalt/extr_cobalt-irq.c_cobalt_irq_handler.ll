; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-irq.c_cobalt_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-irq.c_cobalt_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, i64 }

@DMA_INTERRUPT_STATUS_REG = common dso_local global i32 0, align 4
@COBALT_SYS_STAT_MASK = common dso_local global i32 0, align 4
@COBALT_SYS_STAT_EDGE = common dso_local global i32 0, align 4
@COBALT_NUM_STREAMS = common dso_local global i32 0, align 4
@COBALT_STREAM_FL_ADV_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"full rx FIFO %d\0A\00", align 1
@COBALT_SYSSTAT_VI0_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI1_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI2_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI3_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VIHSMA_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VOHSMA_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI0_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI1_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI2_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI3_INT2_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VIHSMA_INT2_MSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cobalt_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cobalt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cobalt_stream*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.cobalt*
  store %struct.cobalt* %13, %struct.cobalt** %5, align 8
  %14 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %15 = load i32, i32* @DMA_INTERRUPT_STATUS_REG, align 4
  %16 = call i32 @cobalt_read_bar0(%struct.cobalt* %14, i32 %15)
  %17 = and i32 %16, 65535
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %19 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %20 = call i32 @cobalt_read_bar1(%struct.cobalt* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %22 = load i32, i32* @COBALT_SYS_STAT_EDGE, align 4
  %23 = call i32 @cobalt_read_bar1(%struct.cobalt* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %25 = load i32, i32* @DMA_INTERRUPT_STATUS_REG, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cobalt_write_bar0(%struct.cobalt* %24, i32 %25, i32 %26)
  %28 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %29 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @cobalt_write_bar1(%struct.cobalt* %28, i32 %29, i32 %33)
  %35 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %36 = load i32, i32* @COBALT_SYS_STAT_EDGE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @cobalt_write_bar1(%struct.cobalt* %35, i32 %36, i32 %37)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %126, %2
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @COBALT_NUM_STREAMS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %129

43:                                               ; preds = %39
  %44 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %45 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %44, i32 0, i32 9
  %46 = load %struct.cobalt_stream*, %struct.cobalt_stream** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %46, i64 %48
  store %struct.cobalt_stream* %49, %struct.cobalt_stream** %10, align 8
  %50 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %51 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %55 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %53, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %43
  %61 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %62 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %70 = call i32 @cobalt_dma_stream_queue_handler(%struct.cobalt_stream* %69)
  %71 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %72 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %11, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %81 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @cobalt_write_bar1(%struct.cobalt* %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %75, %60
  br label %88

88:                                               ; preds = %87, %43
  %89 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %90 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %126

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %97 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32, i32* @COBALT_STREAM_FL_ADV_IRQ, align 4
  %103 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %104 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %103, i32 0, i32 4
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %115 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %114, i32 0, i32 3
  %116 = call i64 @vb2_is_streaming(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @cobalt_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %122 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %118, %113, %106
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %39

129:                                              ; preds = %39
  %130 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %131 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %134 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %133, i32 0, i32 5
  %135 = call i32 @queue_work(i32 %132, i32* %134)
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @COBALT_SYSSTAT_VI0_INT1_MSK, align 4
  %140 = load i32, i32* @COBALT_SYSSTAT_VI1_INT1_MSK, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @COBALT_SYSSTAT_VI2_INT1_MSK, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @COBALT_SYSSTAT_VI3_INT1_MSK, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @COBALT_SYSSTAT_VIHSMA_INT1_MSK, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_INT1_MSK, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %138, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %129
  %153 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %154 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %152, %129
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @COBALT_SYSSTAT_VI0_INT2_MSK, align 4
  %162 = load i32, i32* @COBALT_SYSSTAT_VI1_INT2_MSK, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @COBALT_SYSSTAT_VI2_INT2_MSK, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @COBALT_SYSSTAT_VI3_INT2_MSK, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @COBALT_SYSSTAT_VIHSMA_INT2_MSK, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %160, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %157
  %173 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %174 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172, %157
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_INT1_MSK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %186 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %184, %177
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %194 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %192, %189
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %7, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %207 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %205, %202, %197
  %211 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %212 = load i32, i32* @DMA_INTERRUPT_STATUS_REG, align 4
  %213 = call i32 @cobalt_read_bar0(%struct.cobalt* %211, i32 %212)
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %214
}

declare dso_local i32 @cobalt_read_bar0(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_read_bar1(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_write_bar0(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @cobalt_write_bar1(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @cobalt_dma_stream_queue_handler(%struct.cobalt_stream*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @vb2_is_streaming(i32*) #1

declare dso_local i32 @cobalt_info(i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
