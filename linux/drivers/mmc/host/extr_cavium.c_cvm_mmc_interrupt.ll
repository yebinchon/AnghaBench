; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i32, i64, i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)*, %struct.mmc_request*, i64, i64 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIO_EMM_INT_SWITCH_ERR = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_DMA_VAL = common dso_local global i32 0, align 4
@MIO_EMM_INT_BUF_DONE = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_DBUF = common dso_local global i32 0, align 4
@MIO_EMM_INT_CMD_DONE = common dso_local global i32 0, align 4
@MIO_EMM_INT_DMA_DONE = common dso_local global i32 0, align 4
@MIO_EMM_INT_CMD_ERR = common dso_local global i32 0, align 4
@MIO_EMM_INT_DMA_ERR = common dso_local global i32 0, align 4
@MIO_EMM_RSP_STS_DMA_PEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_mmc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cvm_mmc_host*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.cvm_mmc_host*
  store %struct.cvm_mmc_host* %13, %struct.cvm_mmc_host** %5, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %15 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %24, i32 0, i32 0
  %26 = call i32 @__acquire(i32* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %32 = call i64 @MIO_EMM_INT(%struct.cvm_mmc_host* %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @readq(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %40 = call i64 @MIO_EMM_INT(%struct.cvm_mmc_host* %39)
  %41 = add nsw i64 %38, %40
  %42 = call i32 @writeq(i32 %35, i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MIO_EMM_INT_SWITCH_ERR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %27
  %48 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %49 = call i32 @check_switch_errors(%struct.cvm_mmc_host* %48)
  br label %50

50:                                               ; preds = %47, %27
  %51 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %52 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %51, i32 0, i32 4
  %53 = load %struct.mmc_request*, %struct.mmc_request** %52, align 8
  store %struct.mmc_request* %53, %struct.mmc_request** %6, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %55 = icmp ne %struct.mmc_request* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %214

57:                                               ; preds = %50
  %58 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %59 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %62 = call i64 @MIO_EMM_RSP_STS(%struct.cvm_mmc_host* %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @readq(i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MIO_EMM_RSP_STS_DMA_VAL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %71 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %214

75:                                               ; preds = %69, %57
  %76 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %77 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %75
  %81 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %82 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @MIO_EMM_INT_BUF_DONE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = ashr i32 %91, 7
  %93 = and i32 %92, 3
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %98 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @MIO_EMM_RSP_STS_DBUF, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @do_read(%struct.cvm_mmc_host* %97, %struct.mmc_request* %98, i32 %101)
  br label %110

103:                                              ; preds = %90
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %108 = call i32 @do_write(%struct.mmc_request* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %85, %80, %75
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @MIO_EMM_INT_CMD_DONE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @MIO_EMM_INT_DMA_DONE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MIO_EMM_INT_CMD_ERR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @MIO_EMM_INT_DMA_ERR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br label %131

131:                                              ; preds = %126, %121, %116, %111
  %132 = phi i1 [ true, %121 ], [ true, %116 ], [ true, %111 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %138 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %137, i32 0, i32 0
  %139 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %138, align 8
  %140 = icmp ne i32 (%struct.mmc_request*)* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %136, %131
  br label %193

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @check_status(i32 %143)
  %145 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %146 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 4
  %149 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %150 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %142
  %154 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %155 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %160 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %161 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @finish_dma(%struct.cvm_mmc_host* %159, i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %158
  br label %193

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %153, %142
  %168 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %169 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @set_cmd_response(%struct.cvm_mmc_host* %168, %struct.mmc_request* %169, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @MIO_EMM_INT_DMA_ERR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %167
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @MIO_EMM_RSP_STS_DMA_PEND, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @cleanup_dma(%struct.cvm_mmc_host* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %176, %167
  %186 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %187 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %186, i32 0, i32 4
  store %struct.mmc_request* null, %struct.mmc_request** %187, align 8
  %188 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %189 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %188, i32 0, i32 0
  %190 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %189, align 8
  %191 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %192 = call i32 %190(%struct.mmc_request* %191)
  br label %193

193:                                              ; preds = %185, %165, %141
  %194 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %195 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %194, i32 0, i32 3
  %196 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %195, align 8
  %197 = icmp ne i32 (%struct.cvm_mmc_host*)* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %200 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %199, i32 0, i32 3
  %201 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %200, align 8
  %202 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %203 = call i32 %201(%struct.cvm_mmc_host* %202)
  br label %204

204:                                              ; preds = %198, %193
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %209 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %208, i32 0, i32 2
  %210 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %209, align 8
  %211 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %212 = call i32 %210(%struct.cvm_mmc_host* %211)
  br label %213

213:                                              ; preds = %207, %204
  br label %214

214:                                              ; preds = %213, %74, %56
  %215 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %216 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %221 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %220, i32 0, i32 0
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  br label %228

224:                                              ; preds = %214
  %225 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %5, align 8
  %226 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %225, i32 0, i32 0
  %227 = call i32 @__release(i32* %226)
  br label %228

228:                                              ; preds = %224, %219
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i32 @IRQ_RETVAL(i32 %231)
  ret i32 %232
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__acquire(i32*) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_INT(%struct.cvm_mmc_host*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @check_switch_errors(%struct.cvm_mmc_host*) #1

declare dso_local i64 @MIO_EMM_RSP_STS(%struct.cvm_mmc_host*) #1

declare dso_local i32 @do_read(%struct.cvm_mmc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @do_write(%struct.mmc_request*) #1

declare dso_local i32 @check_status(i32) #1

declare dso_local i32 @finish_dma(%struct.cvm_mmc_host*, i64) #1

declare dso_local i32 @set_cmd_response(%struct.cvm_mmc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @cleanup_dma(%struct.cvm_mmc_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__release(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
