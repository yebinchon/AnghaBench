; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_gpio_cap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_gpio_cap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_hw_capabilities }
%struct.ath9k_hw_capabilities = type { i32, i32 }

@AR9271_NUM_GPIO = common dso_local global i32 0, align 4
@AR9271_GPIO_MASK = common dso_local global i32 0, align 4
@AR7010_NUM_GPIO = common dso_local global i32 0, align 4
@AR7010_GPIO_MASK = common dso_local global i32 0, align 4
@AR9287_NUM_GPIO = common dso_local global i32 0, align 4
@AR9287_GPIO_MASK = common dso_local global i32 0, align 4
@AR9285_NUM_GPIO = common dso_local global i32 0, align 4
@AR9285_GPIO_MASK = common dso_local global i32 0, align 4
@AR9280_NUM_GPIO = common dso_local global i32 0, align 4
@AR9280_GPIO_MASK = common dso_local global i32 0, align 4
@AR9300_NUM_GPIO = common dso_local global i32 0, align 4
@AR9300_GPIO_MASK = common dso_local global i32 0, align 4
@AR9330_NUM_GPIO = common dso_local global i32 0, align 4
@AR9330_GPIO_MASK = common dso_local global i32 0, align 4
@AR9340_NUM_GPIO = common dso_local global i32 0, align 4
@AR9340_GPIO_MASK = common dso_local global i32 0, align 4
@AR9462_NUM_GPIO = common dso_local global i32 0, align 4
@AR9462_GPIO_MASK = common dso_local global i32 0, align 4
@AR9485_NUM_GPIO = common dso_local global i32 0, align 4
@AR9485_GPIO_MASK = common dso_local global i32 0, align 4
@AR9531_NUM_GPIO = common dso_local global i32 0, align 4
@AR9531_GPIO_MASK = common dso_local global i32 0, align 4
@AR9550_NUM_GPIO = common dso_local global i32 0, align 4
@AR9550_GPIO_MASK = common dso_local global i32 0, align 4
@AR9561_NUM_GPIO = common dso_local global i32 0, align 4
@AR9561_GPIO_MASK = common dso_local global i32 0, align 4
@AR9565_NUM_GPIO = common dso_local global i32 0, align 4
@AR9565_GPIO_MASK = common dso_local global i32 0, align 4
@AR9580_NUM_GPIO = common dso_local global i32 0, align 4
@AR9580_GPIO_MASK = common dso_local global i32 0, align 4
@AR_NUM_GPIO = common dso_local global i32 0, align 4
@AR_GPIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_gpio_cap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_gpio_cap_init(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_capabilities*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  store %struct.ath9k_hw_capabilities* %5, %struct.ath9k_hw_capabilities** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = call i64 @AR_SREV_9271(%struct.ath_hw* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @AR9271_NUM_GPIO, align 4
  %11 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %12 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @AR9271_GPIO_MASK, align 4
  %14 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %15 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %191

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = call i64 @AR_DEVID_7010(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @AR7010_NUM_GPIO, align 4
  %22 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @AR7010_GPIO_MASK, align 4
  %25 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %26 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %190

27:                                               ; preds = %16
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = call i64 @AR_SREV_9287(%struct.ath_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @AR9287_NUM_GPIO, align 4
  %33 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %34 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @AR9287_GPIO_MASK, align 4
  %36 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %37 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %189

38:                                               ; preds = %27
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9285(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @AR9285_NUM_GPIO, align 4
  %44 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %45 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @AR9285_GPIO_MASK, align 4
  %47 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %48 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %188

49:                                               ; preds = %38
  %50 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %51 = call i64 @AR_SREV_9280(%struct.ath_hw* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @AR9280_NUM_GPIO, align 4
  %55 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %56 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @AR9280_GPIO_MASK, align 4
  %58 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %59 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %187

60:                                               ; preds = %49
  %61 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %62 = call i64 @AR_SREV_9300(%struct.ath_hw* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* @AR9300_NUM_GPIO, align 4
  %66 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %67 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @AR9300_GPIO_MASK, align 4
  %69 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %70 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %186

71:                                               ; preds = %60
  %72 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %73 = call i64 @AR_SREV_9330(%struct.ath_hw* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* @AR9330_NUM_GPIO, align 4
  %77 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %78 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @AR9330_GPIO_MASK, align 4
  %80 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %81 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %185

82:                                               ; preds = %71
  %83 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %84 = call i64 @AR_SREV_9340(%struct.ath_hw* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @AR9340_NUM_GPIO, align 4
  %88 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %89 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @AR9340_GPIO_MASK, align 4
  %91 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %92 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %184

93:                                               ; preds = %82
  %94 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %95 = call i64 @AR_SREV_9462(%struct.ath_hw* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* @AR9462_NUM_GPIO, align 4
  %99 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %100 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @AR9462_GPIO_MASK, align 4
  %102 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %103 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %183

104:                                              ; preds = %93
  %105 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %106 = call i64 @AR_SREV_9485(%struct.ath_hw* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* @AR9485_NUM_GPIO, align 4
  %110 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %111 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @AR9485_GPIO_MASK, align 4
  %113 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %114 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %182

115:                                              ; preds = %104
  %116 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %117 = call i64 @AR_SREV_9531(%struct.ath_hw* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i32, i32* @AR9531_NUM_GPIO, align 4
  %121 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %122 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @AR9531_GPIO_MASK, align 4
  %124 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %125 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  br label %181

126:                                              ; preds = %115
  %127 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %128 = call i64 @AR_SREV_9550(%struct.ath_hw* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, i32* @AR9550_NUM_GPIO, align 4
  %132 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %133 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @AR9550_GPIO_MASK, align 4
  %135 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %136 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %180

137:                                              ; preds = %126
  %138 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %139 = call i64 @AR_SREV_9561(%struct.ath_hw* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* @AR9561_NUM_GPIO, align 4
  %143 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %144 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @AR9561_GPIO_MASK, align 4
  %146 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %147 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %179

148:                                              ; preds = %137
  %149 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %150 = call i64 @AR_SREV_9565(%struct.ath_hw* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* @AR9565_NUM_GPIO, align 4
  %154 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %155 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @AR9565_GPIO_MASK, align 4
  %157 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %158 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  br label %178

159:                                              ; preds = %148
  %160 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %161 = call i64 @AR_SREV_9580(%struct.ath_hw* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, i32* @AR9580_NUM_GPIO, align 4
  %165 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %166 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @AR9580_GPIO_MASK, align 4
  %168 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %169 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  br label %177

170:                                              ; preds = %159
  %171 = load i32, i32* @AR_NUM_GPIO, align 4
  %172 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %173 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @AR_GPIO_MASK, align 4
  %175 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %3, align 8
  %176 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %170, %163
  br label %178

178:                                              ; preds = %177, %152
  br label %179

179:                                              ; preds = %178, %141
  br label %180

180:                                              ; preds = %179, %130
  br label %181

181:                                              ; preds = %180, %119
  br label %182

182:                                              ; preds = %181, %108
  br label %183

183:                                              ; preds = %182, %97
  br label %184

184:                                              ; preds = %183, %86
  br label %185

185:                                              ; preds = %184, %75
  br label %186

186:                                              ; preds = %185, %64
  br label %187

187:                                              ; preds = %186, %53
  br label %188

188:                                              ; preds = %187, %42
  br label %189

189:                                              ; preds = %188, %31
  br label %190

190:                                              ; preds = %189, %20
  br label %191

191:                                              ; preds = %190, %9
  ret void
}

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
