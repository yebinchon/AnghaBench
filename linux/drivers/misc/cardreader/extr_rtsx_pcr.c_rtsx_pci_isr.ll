; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c_rtsx_pci_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32, i32, i32, i32, i32, i64, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RTSX_BIPR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SD_OC_INT = common dso_local global i32 0, align 4
@SD_INT = common dso_local global i32 0, align 4
@SD_EXIST = common dso_local global i32 0, align 4
@MS_INT = common dso_local global i32 0, align 4
@MS_EXIST = common dso_local global i32 0, align 4
@NEED_COMPLETE_INT = common dso_local global i32 0, align 4
@DELINK_INT = common dso_local global i32 0, align 4
@TRANS_FAIL_INT = common dso_local global i32 0, align 4
@TRANS_RESULT_FAIL = common dso_local global i32 0, align 4
@TRANS_OK_INT = common dso_local global i32 0, align 4
@TRANS_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtsx_pci_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pci_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtsx_pcr*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rtsx_pcr*
  store %struct.rtsx_pcr* %9, %struct.rtsx_pcr** %6, align 8
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %11 = icmp ne %struct.rtsx_pcr* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %192

14:                                               ; preds = %2
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %16 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %15, i32 0, i32 3
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %19 = load i32, i32* @RTSX_BIPR, align 4
  %20 = call i32 @rtsx_pci_readl(%struct.rtsx_pcr* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %22 = load i32, i32* @RTSX_BIPR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @rtsx_pci_writel(%struct.rtsx_pcr* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %33 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %32, i32 0, i32 3
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %192

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %41 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %40, i32 0, i32 3
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %192

44:                                               ; preds = %36
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %46 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, 8388607
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SD_OC_INT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %57 = call i32 @rtsx_pci_process_ocp_interrupt(%struct.rtsx_pcr* %56)
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SD_INT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SD_EXIST, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @SD_EXIST, align 4
  %70 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %71 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %86

74:                                               ; preds = %63
  %75 = load i32, i32* @SD_EXIST, align 4
  %76 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %77 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @SD_EXIST, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %83 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74, %68
  %87 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %88 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %58
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @MS_INT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @MS_EXIST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* @MS_EXIST, align 4
  %101 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %102 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %117

105:                                              ; preds = %94
  %106 = load i32, i32* @MS_EXIST, align 4
  %107 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %108 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @MS_EXIST, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %114 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %105, %99
  br label %118

118:                                              ; preds = %117, %89
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @NEED_COMPLETE_INT, align 4
  %121 = load i32, i32* @DELINK_INT, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %118
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @TRANS_FAIL_INT, align 4
  %128 = load i32, i32* @DELINK_INT, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %125
  %133 = load i32, i32* @TRANS_RESULT_FAIL, align 4
  %134 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %135 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 8
  %136 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %137 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %142 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @complete(i64 %143)
  br label %145

145:                                              ; preds = %140, %132
  br label %166

146:                                              ; preds = %125
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @TRANS_OK_INT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  %152 = load i32, i32* @TRANS_RESULT_OK, align 4
  %153 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %154 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %156 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %161 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @complete(i64 %162)
  br label %164

164:                                              ; preds = %159, %151
  br label %165

165:                                              ; preds = %164, %146
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %118
  %168 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %169 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %174 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172, %167
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @SD_OC_INT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %184 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %183, i32 0, i32 4
  %185 = call i32 @msecs_to_jiffies(i32 200)
  %186 = call i32 @schedule_delayed_work(i32* %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %177, %172
  %188 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %189 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %188, i32 0, i32 3
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %187, %39, %31, %12
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtsx_pci_readl(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_writel(%struct.rtsx_pcr*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtsx_pci_process_ocp_interrupt(%struct.rtsx_pcr*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
