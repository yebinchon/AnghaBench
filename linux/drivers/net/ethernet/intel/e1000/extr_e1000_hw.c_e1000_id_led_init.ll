; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_id_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_id_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32, i32 }

@E1000_LEDCTL_MODE_LED_ON = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_OFF = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@EEPROM_ID_LED_SETTINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"EEPROM Read Error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@ID_LED_RESERVED_0000 = common dso_local global i32 0, align 4
@ID_LED_RESERVED_FFFF = common dso_local global i32 0, align 4
@ID_LED_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_id_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_id_led_init(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 255, i32* %5, align 4
  %12 = load i32, i32* @E1000_LEDCTL_MODE_LED_ON, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @E1000_LEDCTL_MODE_LED_OFF, align 4
  store i32 %13, i32* %7, align 4
  store i32 15, i32* %11, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_82540, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %20, i32* %2, align 4
  br label %144

21:                                               ; preds = %1
  %22 = load i32, i32* @LEDCTL, align 4
  %23 = call i32 @er32(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @EEPROM_ID_LED_SETTINGS, align 4
  %39 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %37, i32 %38, i32 1, i32* %8)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %21
  %42 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %144

45:                                               ; preds = %21
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ID_LED_RESERVED_0000, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ID_LED_RESERVED_FFFF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @ID_LED_DEFAULT, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %139, %55
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %142

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 2
  %63 = ashr i32 %60, %62
  %64 = and i32 %63, 15
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  switch i32 %65, label %100 [
    i32 130, label %66
    i32 128, label %66
    i32 129, label %66
    i32 133, label %83
    i32 131, label %83
    i32 132, label %83
  ]

66:                                               ; preds = %59, %59, %59
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 3
  %69 = shl i32 255, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 3
  %78 = shl i32 %75, %77
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %101

83:                                               ; preds = %59, %59, %59
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 %84, 3
  %86 = shl i32 255, %85
  %87 = xor i32 %86, -1
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 %93, 3
  %95 = shl i32 %92, %94
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %101

100:                                              ; preds = %59
  br label %101

101:                                              ; preds = %100, %83, %66
  %102 = load i32, i32* %10, align 4
  switch i32 %102, label %137 [
    i32 134, label %103
    i32 128, label %103
    i32 131, label %103
    i32 135, label %120
    i32 129, label %120
    i32 132, label %120
  ]

103:                                              ; preds = %101, %101, %101
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 3
  %106 = shl i32 255, %105
  %107 = xor i32 %106, -1
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %9, align 4
  %114 = shl i32 %113, 3
  %115 = shl i32 %112, %114
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %138

120:                                              ; preds = %101, %101, %101
  %121 = load i32, i32* %9, align 4
  %122 = shl i32 %121, 3
  %123 = shl i32 255, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 %130, 3
  %132 = shl i32 %129, %131
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %134 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %138

137:                                              ; preds = %101
  br label %138

138:                                              ; preds = %137, %120, %103
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %56

142:                                              ; preds = %56
  %143 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %41, %19
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
