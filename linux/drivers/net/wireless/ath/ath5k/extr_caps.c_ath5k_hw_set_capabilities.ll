; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_caps.c_ath5k_hw_set_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_caps.c_ath5k_hw_set_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i64, %struct.ath5k_capabilities }
%struct.ath5k_capabilities = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_MODE_11A = common dso_local global i32 0, align 4
@AR5K_AR5211 = common dso_local global i64 0, align 8
@AR5K_MODE_11B = common dso_local global i32 0, align 4
@AR5K_MODE_11G = common dso_local global i32 0, align 4
@AR5K_SREV_RAD_2112 = common dso_local global i32 0, align 4
@AR5K_NUM_TX_QUEUES_NOQCU = common dso_local global i32 0, align 4
@AR5K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@AR5K_SREV_AR5213A = common dso_local global i64 0, align 8
@AR5K_AR5212 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_capabilities(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_capabilities*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %5, i32 0, i32 3
  store %struct.ath5k_capabilities* %6, %struct.ath5k_capabilities** %3, align 8
  %7 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AR5K_AR5210, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %18 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 5120, i32* %19, align 4
  %20 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %21 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 5430, i32* %22, align 4
  %23 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %24 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %27 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @AR5K_MODE_11A, align 4
  %30 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__set_bit(i32 %29, i32 %32)
  br label %116

34:                                               ; preds = %1
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @AR5K_EEPROM_HDR_11A(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %40 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ath_is_49ghz_allowed(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %47 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 4920, i32* %48, align 4
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %51 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 5005, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %55 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 6100, i32* %56, align 4
  %57 = load i32, i32* @AR5K_MODE_11A, align 4
  %58 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %59 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %53, %34
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @AR5K_EEPROM_HDR_11B(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = call i64 @AR5K_EEPROM_HDR_11G(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %66
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AR5K_AR5211, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %70, %62
  %77 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %78 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i32 2412, i32* %79, align 4
  %80 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %81 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  store i32 2732, i32* %82, align 4
  %83 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %84 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %114, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @AR5K_EEPROM_HDR_11B(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @AR5K_MODE_11B, align 4
  %93 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %94 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @__set_bit(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i32, i32* %4, align 4
  %99 = call i64 @AR5K_EEPROM_HDR_11G(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %103 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AR5K_AR5211, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* @AR5K_MODE_11G, align 4
  %109 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %110 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @__set_bit(i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %107, %101, %97
  br label %114

114:                                              ; preds = %113, %76
  br label %115

115:                                              ; preds = %114, %70, %66
  br label %116

116:                                              ; preds = %115, %16
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %118 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 240
  %121 = load i32, i32* @AR5K_SREV_RAD_2112, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32, i32* @AR5K_MODE_11A, align 4
  %125 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %126 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @__clear_bit(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %116
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %131 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AR5K_AR5210, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i32, i32* @AR5K_NUM_TX_QUEUES_NOQCU, align 4
  %137 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %138 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  br label %145

140:                                              ; preds = %129
  %141 = load i32, i32* @AR5K_NUM_TX_QUEUES, align 4
  %142 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %143 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %147 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AR5K_SREV_AR5213A, align 8
  %150 = icmp sge i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %153 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  br label %157

154:                                              ; preds = %145
  %155 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %156 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %155, i32 0, i32 0
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %159 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AR5K_AR5212, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %165 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  br label %169

166:                                              ; preds = %157
  %167 = load %struct.ath5k_capabilities*, %struct.ath5k_capabilities** %3, align 8
  %168 = getelementptr inbounds %struct.ath5k_capabilities, %struct.ath5k_capabilities* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %163
  ret i32 0
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @AR5K_EEPROM_HDR_11A(i32) #1

declare dso_local i64 @ath_is_49ghz_allowed(i32) #1

declare dso_local i64 @AR5K_EEPROM_HDR_11B(i32) #1

declare dso_local i64 @AR5K_EEPROM_HDR_11G(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
