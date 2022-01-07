; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tifm_sd.c_tifm_sd_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_sd = type { i32, i32, %struct.TYPE_4__*, i64, %struct.tifm_dev* }
%struct.TYPE_4__ = type { i64, %struct.mmc_command* }
%struct.mmc_command = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.tifm_dev = type { i64 }

@CMD_READY = common dso_local global i32 0, align 4
@SCMD_ACTIVE = common dso_local global i32 0, align 4
@SCMD_READY = common dso_local global i32 0, align 4
@BRS_READY = common dso_local global i32 0, align 4
@FIFO_READY = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@TIFM_MMCSD_EOFB = common dso_local global i32 0, align 4
@SOCK_MMCSD_INT_ENABLE = common dso_local global i64 0, align 8
@CARD_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_sd*)* @tifm_sd_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_sd_check_status(%struct.tifm_sd* %0) #0 {
  %2 = alloca %struct.tifm_sd*, align 8
  %3 = alloca %struct.tifm_dev*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.tifm_sd* %0, %struct.tifm_sd** %2, align 8
  %5 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %6 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %5, i32 0, i32 4
  %7 = load %struct.tifm_dev*, %struct.tifm_dev** %6, align 8
  store %struct.tifm_dev* %7, %struct.tifm_dev** %3, align 8
  %8 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %9 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.mmc_command*, %struct.mmc_command** %11, align 8
  store %struct.mmc_command* %12, %struct.mmc_command** %4, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %222

18:                                               ; preds = %1
  %19 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %20 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CMD_READY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %226

26:                                               ; preds = %18
  %27 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %221

31:                                               ; preds = %26
  %32 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %40 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SCMD_ACTIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %47 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SCMD_READY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %226

53:                                               ; preds = %45, %38
  br label %222

54:                                               ; preds = %31
  %55 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %56 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BRS_READY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %226

62:                                               ; preds = %54
  %63 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %64 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %69 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FIFO_READY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %226

75:                                               ; preds = %67, %62
  %76 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MMC_DATA_WRITE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %182

84:                                               ; preds = %75
  %85 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %86 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %157

91:                                               ; preds = %84
  %92 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %93 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SCMD_ACTIVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @SCMD_ACTIVE, align 4
  %100 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %101 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @TIFM_MMCSD_EOFB, align 4
  %105 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %106 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @readl(i64 %109)
  %111 = or i32 %104, %110
  %112 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %113 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %119 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %120 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @tifm_sd_exec(%struct.tifm_sd* %118, i64 %123)
  br label %226

125:                                              ; preds = %91
  %126 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %127 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SCMD_READY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %134 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CARD_BUSY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132, %125
  br label %226

140:                                              ; preds = %132
  %141 = load i32, i32* @TIFM_MMCSD_EOFB, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %144 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @readl(i64 %147)
  %149 = and i32 %142, %148
  %150 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %151 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  br label %156

156:                                              ; preds = %140
  br label %181

157:                                              ; preds = %84
  %158 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %159 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CARD_BUSY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %226

165:                                              ; preds = %157
  %166 = load i32, i32* @TIFM_MMCSD_EOFB, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %169 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @readl(i64 %172)
  %174 = and i32 %167, %173
  %175 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %176 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SOCK_MMCSD_INT_ENABLE, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %174, i64 %179)
  br label %181

181:                                              ; preds = %165, %156
  br label %220

182:                                              ; preds = %75
  %183 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %184 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %183, i32 0, i32 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %182
  %190 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %191 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @SCMD_ACTIVE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* @SCMD_ACTIVE, align 4
  %198 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %199 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %203 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %204 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @tifm_sd_exec(%struct.tifm_sd* %202, i64 %207)
  br label %226

209:                                              ; preds = %189
  %210 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %211 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @SCMD_READY, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %209
  br label %226

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218, %182
  br label %220

220:                                              ; preds = %219, %181
  br label %221

221:                                              ; preds = %220, %26
  br label %222

222:                                              ; preds = %221, %53, %17
  %223 = load %struct.tifm_sd*, %struct.tifm_sd** %2, align 8
  %224 = getelementptr inbounds %struct.tifm_sd, %struct.tifm_sd* %223, i32 0, i32 1
  %225 = call i32 @tasklet_schedule(i32* %224)
  br label %226

226:                                              ; preds = %222, %216, %196, %164, %139, %98, %74, %61, %52, %25
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tifm_sd_exec(%struct.tifm_sd*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
