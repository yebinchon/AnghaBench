; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, %struct.modal_eep_header* }
%struct.base_eep_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.modal_eep_header = type { i32*, i32, i32, i32* }

@AR5416_EEP_MINOR_VER_19 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_20 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_22 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_21 = common dso_local global i32 0, align 4
@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_def_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_def_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar5416_eeprom_def*, align 8
  %7 = alloca %struct.modal_eep_header*, align 8
  %8 = alloca %struct.base_eep_header*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %12, %struct.ar5416_eeprom_def** %6, align 8
  %13 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %14 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %13, i32 0, i32 1
  %15 = load %struct.modal_eep_header*, %struct.modal_eep_header** %14, align 8
  store %struct.modal_eep_header* %15, %struct.modal_eep_header** %7, align 8
  %16 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %17 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %16, i32 0, i32 0
  store %struct.base_eep_header* %17, %struct.base_eep_header** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %195 [
    i32 141, label %19
    i32 142, label %26
    i32 145, label %33
    i32 144, label %38
    i32 143, label %44
    i32 133, label %50
    i32 137, label %57
    i32 136, label %62
    i32 132, label %66
    i32 139, label %71
    i32 148, label %76
    i32 140, label %81
    i32 149, label %86
    i32 128, label %91
    i32 130, label %95
    i32 146, label %99
    i32 131, label %103
    i32 129, label %107
    i32 138, label %111
    i32 134, label %124
    i32 150, label %134
    i32 147, label %144
    i32 135, label %154
    i32 152, label %165
    i32 151, label %166
  ]

19:                                               ; preds = %2
  %20 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %21 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %20, i64 0
  %22 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %196

26:                                               ; preds = %2
  %27 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %28 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %27, i64 1
  %29 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %196

33:                                               ; preds = %2
  %34 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %35 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @get_unaligned_be16(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %196

38:                                               ; preds = %2
  %39 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %40 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 2
  %43 = call i32 @get_unaligned_be16(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %196

44:                                               ; preds = %2
  %45 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %46 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 4
  %49 = call i32 @get_unaligned_be16(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %196

50:                                               ; preds = %2
  %51 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %52 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %51, i32 0, i32 13
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %196

57:                                               ; preds = %2
  %58 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %59 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %196

62:                                               ; preds = %2
  %63 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %64 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %3, align 4
  br label %196

66:                                               ; preds = %2
  %67 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %68 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %196

71:                                               ; preds = %2
  %72 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %73 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %72, i64 0
  %74 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %3, align 4
  br label %196

76:                                               ; preds = %2
  %77 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %78 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %77, i64 0
  %79 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %3, align 4
  br label %196

81:                                               ; preds = %2
  %82 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %83 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %82, i64 1
  %84 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %3, align 4
  br label %196

86:                                               ; preds = %2
  %87 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %88 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %87, i64 1
  %89 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %3, align 4
  br label %196

91:                                               ; preds = %2
  %92 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %93 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %3, align 4
  br label %196

95:                                               ; preds = %2
  %96 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %97 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %3, align 4
  br label %196

99:                                               ; preds = %2
  %100 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %101 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %196

103:                                              ; preds = %2
  %104 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %105 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %3, align 4
  br label %196

107:                                              ; preds = %2
  %108 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %109 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %3, align 4
  br label %196

111:                                              ; preds = %2
  %112 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %113 = call i32 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %112)
  %114 = load i32, i32* @AR5416_EEP_MINOR_VER_19, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %118 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 0
  store i32 %122, i32* %3, align 4
  br label %196

123:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %196

124:                                              ; preds = %2
  %125 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %126 = call i32 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %125)
  %127 = load i32, i32* @AR5416_EEP_MINOR_VER_19, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %131 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %3, align 4
  br label %196

133:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %196

134:                                              ; preds = %2
  %135 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %136 = call i32 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %135)
  %137 = load i32, i32* @AR5416_EEP_MINOR_VER_20, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %141 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %3, align 4
  br label %196

143:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %196

144:                                              ; preds = %2
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = call i32 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %145)
  %147 = load i32, i32* @AR5416_EEP_MINOR_VER_22, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %151 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %3, align 4
  br label %196

153:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %196

154:                                              ; preds = %2
  %155 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %156 = call i32 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw* %155)
  %157 = load i32, i32* @AR5416_EEP_MINOR_VER_21, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %161 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %3, align 4
  br label %196

163:                                              ; preds = %154
  %164 = load i32, i32* @AR5416_PWR_TABLE_OFFSET_DB, align 4
  store i32 %164, i32* %3, align 4
  br label %196

165:                                              ; preds = %2
  store i32 1, i32* %9, align 4
  br label %166

166:                                              ; preds = %2, %165
  %167 = load i32, i32* @u8, align 4
  %168 = load i32, i32* @u8, align 4
  %169 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %169, i64 %171
  %173 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %177, i64 %179
  %181 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @max_t(i32 %168, i32 %176, i32 %184)
  %186 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %186, i64 %188
  %190 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @max_t(i32 %167, i32 %185, i32 %193)
  store i32 %194, i32* %3, align 4
  br label %196

195:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %195, %166, %163, %159, %153, %149, %143, %139, %133, %129, %123, %116, %107, %103, %99, %95, %91, %86, %81, %76, %71, %66, %62, %57, %50, %44, %38, %33, %26, %19
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath9k_hw_def_get_eeprom_rev(%struct.ath_hw*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
