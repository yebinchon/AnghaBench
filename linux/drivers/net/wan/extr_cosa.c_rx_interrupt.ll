; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_3__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* (%struct.TYPE_3__*, i32)* }

@RXBIT = common dso_local global i32 0, align 4
@IRQBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: rx for unknown channel (0x%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cosa%d: rejecting packet on channel %d\0A\00", align 1
@DMA_MODE_READ = common dso_local global i32 0, align 4
@SR_RX_DMA_ENA = common dso_local global i32 0, align 4
@SR_USR_INT_ENA = common dso_local global i32 0, align 4
@SR_TX_RDY = common dso_local global i32 0, align 4
@DRIVER_RX_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cosa_data*, i32)* @rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_interrupt(%struct.cosa_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cosa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.cosa_data* %0, %struct.cosa_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %7 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @RXBIT, align 4
  %11 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %12 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %11, i32 0, i32 10
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %15 = call i64 @is_8bit(%struct.cosa_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQBIT, align 4
  %19 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %20 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %19, i32 0, i32 10
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @IRQBIT, align 4
  %25 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %26 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %25, i32 0, i32 10
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %29 = call i32 @put_driver_status_nolock(%struct.cosa_data* %28)
  %30 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %31 = call i32 @cosa_getdata8(%struct.cosa_data* %30)
  %32 = shl i32 %31, 8
  %33 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %34 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %36 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  br label %230

39:                                               ; preds = %17
  %40 = load i32, i32* @IRQBIT, align 4
  %41 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %42 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %41, i32 0, i32 10
  %43 = call i32 @clear_bit(i32 %40, i32* %42)
  %44 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %45 = call i32 @cosa_getdata8(%struct.cosa_data* %44)
  %46 = and i32 %45, 255
  %47 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %48 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %39
  br label %57

52:                                               ; preds = %2
  %53 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %54 = call i32 @cosa_getdata16(%struct.cosa_data* %53)
  %55 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %56 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %51
  %58 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %59 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 57344
  %62 = ashr i32 %61, 13
  %63 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %64 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %69 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %72 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %76 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %75, i32 0, i32 2
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %129

79:                                               ; preds = %57
  %80 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %81 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %80, i32 0, i32 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %84 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 57344
  %87 = ashr i32 %86, 13
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %88
  %90 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %91 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %90, i32 0, i32 6
  store %struct.TYPE_3__* %89, %struct.TYPE_3__** %91, align 8
  %92 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %93 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 8191
  store i32 %95, i32* %93, align 8
  %96 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %97 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %96, i32 0, i32 2
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %101 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %100, i32 0, i32 5
  store i32* null, i32** %101, align 8
  %102 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %103 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %102, i32 0, i32 6
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32* (%struct.TYPE_3__*, i32)*, i32* (%struct.TYPE_3__*, i32)** %105, align 8
  %107 = icmp ne i32* (%struct.TYPE_3__*, i32)* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %79
  %109 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %110 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %109, i32 0, i32 6
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32* (%struct.TYPE_3__*, i32)*, i32* (%struct.TYPE_3__*, i32)** %112, align 8
  %114 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %115 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %114, i32 0, i32 6
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %118 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32* %113(%struct.TYPE_3__* %116, i32 %119)
  %121 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %122 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %121, i32 0, i32 5
  store i32* %120, i32** %122, align 8
  br label %123

123:                                              ; preds = %108, %79
  %124 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %125 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %144, label %128

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %67
  %130 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %131 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %134 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %133, i32 0, i32 6
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %137)
  %139 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %140 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %143 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %142, i32 0, i32 5
  store i32* %141, i32** %143, align 8
  br label %144

144:                                              ; preds = %129, %123
  %145 = call i64 (...) @claim_dma_lock()
  store i64 %145, i64* %5, align 8
  %146 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %147 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @disable_dma(i32 %148)
  %150 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %151 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @clear_dma_ff(i32 %152)
  %154 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %155 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @DMA_MODE_READ, align 4
  %158 = call i32 @set_dma_mode(i32 %156, i32 %157)
  %159 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %160 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %159, i32 0, i32 6
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %163 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %166 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 8191
  %169 = call i64 @cosa_dma_able(%struct.TYPE_3__* %161, i32* %164, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %144
  %172 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %173 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %176 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @virt_to_bus(i32* %177)
  %179 = call i32 @set_dma_addr(i32 %174, i32 %178)
  br label %189

180:                                              ; preds = %144
  %181 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %182 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %185 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @virt_to_bus(i32* %186)
  %188 = call i32 @set_dma_addr(i32 %183, i32 %187)
  br label %189

189:                                              ; preds = %180, %171
  %190 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %191 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %194 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 8191
  %197 = call i32 @set_dma_count(i32 %192, i32 %196)
  %198 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %199 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @enable_dma(i32 %200)
  %202 = load i64, i64* %5, align 8
  %203 = call i32 @release_dma_lock(i64 %202)
  %204 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %205 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %204, i32 0, i32 2
  %206 = load i64, i64* %5, align 8
  %207 = call i32 @spin_lock_irqsave(i32* %205, i64 %206)
  %208 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %209 = load i32, i32* @SR_RX_DMA_ENA, align 4
  %210 = load i32, i32* @SR_USR_INT_ENA, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @cosa_putstatus(%struct.cosa_data* %208, i32 %211)
  %213 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %214 = call i64 @is_8bit(%struct.cosa_data* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %189
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @SR_TX_RDY, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %223 = load i32, i32* @DRIVER_RX_READY, align 4
  %224 = call i32 @cosa_putdata8(%struct.cosa_data* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %216, %189
  %226 = load %struct.cosa_data*, %struct.cosa_data** %3, align 8
  %227 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %226, i32 0, i32 2
  %228 = load i64, i64* %5, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  br label %230

230:                                              ; preds = %225, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @is_8bit(%struct.cosa_data*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @put_driver_status_nolock(%struct.cosa_data*) #1

declare dso_local i32 @cosa_getdata8(%struct.cosa_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cosa_getdata16(%struct.cosa_data*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i64 @cosa_dma_able(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @virt_to_bus(i32*) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @cosa_putstatus(%struct.cosa_data*, i32) #1

declare dso_local i32 @cosa_putdata8(%struct.cosa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
