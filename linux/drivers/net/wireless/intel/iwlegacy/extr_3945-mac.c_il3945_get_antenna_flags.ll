; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_get_antenna_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_get_antenna_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.il_priv = type { i64 }
%struct.il3945_eeprom = type { i32 }

@il3945_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RXON_FLG_DIS_DIV_MSK = common dso_local global i32 0, align 4
@RXON_FLG_ANT_B_MSK = common dso_local global i32 0, align 4
@RXON_FLG_ANT_A_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Bad antenna selector value (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il3945_get_antenna_flags(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il3945_eeprom*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %8, %struct.il3945_eeprom** %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @il3945_mod_params, i32 0, i32 0), align 4
  switch i32 %9, label %37 [
    i32 129, label %10
    i32 128, label %11
    i32 130, label %24
  ]

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %4, align 8
  %13 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @RXON_FLG_DIS_DIV_MSK, align 4
  %18 = load i32, i32* @RXON_FLG_ANT_B_MSK, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %11
  %21 = load i32, i32* @RXON_FLG_DIS_DIV_MSK, align 4
  %22 = load i32, i32* @RXON_FLG_ANT_A_MSK, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %4, align 8
  %26 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @RXON_FLG_DIS_DIV_MSK, align 4
  %31 = load i32, i32* @RXON_FLG_ANT_A_MSK, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %24
  %34 = load i32, i32* @RXON_FLG_DIS_DIV_MSK, align 4
  %35 = load i32, i32* @RXON_FLG_ANT_B_MSK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %1
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @il3945_mod_params, i32 0, i32 0), align 4
  %39 = call i32 @IL_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %33, %29, %20, %16, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
