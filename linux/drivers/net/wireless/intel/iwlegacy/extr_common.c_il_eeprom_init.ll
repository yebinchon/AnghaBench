; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_eeprom_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_eeprom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}*, {}*, {}* }
%struct.TYPE_3__ = type { i32 }

@CSR_EEPROM_GP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"NVM size = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"EEPROM not found, EEPROM_GP=0x%08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to acquire EEPROM semaphore.\0A\00", align 1
@CSR_EEPROM_REG = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_MSK_ADDR = common dso_local global i32 0, align 4
@CSR_EEPROM_REG_READ_VALID_MSK = common dso_local global i32 0, align 4
@IL_EEPROM_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Time out reading EEPROM[%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"NVM Type: %s, version: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@EEPROM_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_eeprom_init(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = load i32, i32* @CSR_EEPROM_GP, align 4
  %12 = call i32 @_il_rd(%struct.il_priv* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, ...) @D_EEPROM(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %134

32:                                               ; preds = %1
  %33 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %4, align 8
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = bitcast {}** %40 to i32 (%struct.il_priv*)**
  %42 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %41, align 8
  %43 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %44 = call i32 %42(%struct.il_priv* %43)
  %45 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %46 = call i32 @il_eeprom_verify_signature(%struct.il_priv* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %124

54:                                               ; preds = %32
  %55 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.il_priv*)**
  %60 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %59, align 8
  %61 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %62 = call i32 %60(%struct.il_priv* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %124

69:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %105, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %76 = load i32, i32* @CSR_EEPROM_REG, align 4
  %77 = load i32, i32* @CSR_EEPROM_REG_MSK_ADDR, align 4
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 1
  %80 = and i32 %77, %79
  %81 = call i32 @_il_wr(%struct.il_priv* %75, i32 %76, i32 %80)
  %82 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %83 = load i32, i32* @CSR_EEPROM_REG, align 4
  %84 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %85 = load i32, i32* @CSR_EEPROM_REG_READ_VALID_MSK, align 4
  %86 = load i32, i32* @IL_EEPROM_ACCESS_TIMEOUT, align 4
  %87 = call i32 @_il_poll_bit(%struct.il_priv* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %115

93:                                               ; preds = %74
  %94 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %95 = load i32, i32* @CSR_EEPROM_REG, align 4
  %96 = call i32 @_il_rd(%struct.il_priv* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 16
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sdiv i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %8, align 4
  br label %70

110:                                              ; preds = %70
  %111 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %112 = load i32, i32* @EEPROM_VERSION, align 4
  %113 = call i32 @il_eeprom_query16(%struct.il_priv* %111, i32 %112)
  %114 = call i32 (i8*, ...) @D_EEPROM(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %90
  %116 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %117 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = bitcast {}** %119 to i32 (%struct.il_priv*)**
  %121 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %120, align 8
  %122 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %123 = call i32 %121(%struct.il_priv* %122)
  br label %124

124:                                              ; preds = %115, %65, %49
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %129 = call i32 @il_eeprom_free(%struct.il_priv* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %132 = call i32 @il_apm_stop(%struct.il_priv* %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %130, %29
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @D_EEPROM(i8*, ...) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @il_eeprom_verify_signature(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @il_eeprom_query16(%struct.il_priv*, i32) #1

declare dso_local i32 @il_eeprom_free(%struct.il_priv*) #1

declare dso_local i32 @il_apm_stop(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
