; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_cmd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_cmd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Spurious CMD irq\0A\00", align 1
@CTL_RESPONSE = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RSP_R3 = common dso_local global i32 0, align 4
@TMIO_STAT_CMDTIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@TMIO_STAT_CRCFAIL = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@TMIO_STAT_STOPBIT_ERR = common dso_local global i32 0, align 4
@TMIO_STAT_CMD_IDX_ERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TMIO_MASK_READOP = common dso_local global i32 0, align 4
@TMIO_MASK_WRITEOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @tmio_mmc_cmd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_cmd_irq(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 5
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %5, align 8
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %14, i32 0, i32 5
  %16 = load %struct.mmc_command*, %struct.mmc_command** %15, align 8
  %17 = icmp ne %struct.mmc_command* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %227

20:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  %21 = load i32, i32* @CTL_RESPONSE, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %35, %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host* %26, i32 %27)
  %29 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %7, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MMC_RSP_136, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %105

47:                                               ; preds = %40
  %48 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 24
  %60 = or i32 %53, %59
  %61 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %66 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 24
  %77 = or i32 %70, %76
  %78 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %89 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 24
  %94 = or i32 %87, %93
  %95 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %100 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  store i32 %104, i32* %102, align 4
  br label %123

105:                                              ; preds = %40
  %106 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MMC_RSP_R3, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %114 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %119 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %112, %105
  br label %123

123:                                              ; preds = %122, %47
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @TMIO_STAT_CMDTIMEOUT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* @ETIMEDOUT, align 4
  %130 = sub nsw i32 0, %129
  %131 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %132 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  br label %161

133:                                              ; preds = %123
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @TMIO_STAT_CRCFAIL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %140 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MMC_RSP_CRC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %138, %133
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @TMIO_STAT_STOPBIT_ERR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @TMIO_STAT_CMD_IDX_ERR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150, %145, %138
  %156 = load i32, i32* @EILSEQ, align 4
  %157 = sub nsw i32 0, %156
  %158 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %159 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %128
  %162 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %163 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %162, i32 0, i32 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = icmp ne %struct.TYPE_2__* %164, null
  br i1 %165, label %166, label %222

166:                                              ; preds = %161
  %167 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %168 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %173 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @EILSEQ, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %222

178:                                              ; preds = %171, %166
  %179 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %180 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %179, i32 0, i32 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MMC_DATA_READ, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %178
  %188 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %189 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %187
  %193 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %194 = load i32, i32* @TMIO_MASK_READOP, align 4
  %195 = call i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host* %193, i32 %194)
  br label %203

196:                                              ; preds = %187
  %197 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %198 = load i32, i32* @TMIO_MASK_READOP, align 4
  %199 = call i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host* %197, i32 %198)
  %200 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %201 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %200, i32 0, i32 2
  %202 = call i32 @tasklet_schedule(i32* %201)
  br label %203

203:                                              ; preds = %196, %192
  br label %221

204:                                              ; preds = %178
  %205 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %206 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %204
  %210 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %211 = load i32, i32* @TMIO_MASK_WRITEOP, align 4
  %212 = call i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host* %210, i32 %211)
  br label %220

213:                                              ; preds = %204
  %214 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %215 = load i32, i32* @TMIO_MASK_WRITEOP, align 4
  %216 = call i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host* %214, i32 %215)
  %217 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %218 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %217, i32 0, i32 2
  %219 = call i32 @tasklet_schedule(i32* %218)
  br label %220

220:                                              ; preds = %213, %209
  br label %221

221:                                              ; preds = %220, %203
  br label %226

222:                                              ; preds = %171, %161
  %223 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %224 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %223, i32 0, i32 1
  %225 = call i32 @schedule_work(i32* %224)
  br label %226

226:                                              ; preds = %222, %221
  br label %227

227:                                              ; preds = %226, %18
  %228 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %229 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %228, i32 0, i32 0
  %230 = call i32 @spin_unlock(i32* %229)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
