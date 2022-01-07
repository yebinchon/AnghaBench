; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_sb_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_sb_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@TG3_VER_SIZE = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_FORMAT_MASK = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_FORMAT_1 = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_REVISION_MASK = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_F1R0_EDH_OFF = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_F1R2_EDH_OFF = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_F1R3_EDH_OFF = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_F1R4_EDH_OFF = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_F1R5_EDH_OFF = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_F1R6_EDH_OFF = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_EDH_BLD_MASK = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_EDH_BLD_SHFT = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_EDH_MAJ_MASK = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_EDH_MAJ_SHFT = common dso_local global i32 0, align 4
@TG3_EEPROM_SB_EDH_MIN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" v%d.%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_read_sb_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_sb_ver(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tg3*, %struct.tg3** %3, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @TG3_VER_SIZE, align 4
  %13 = load %struct.tg3*, %struct.tg3** %3, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sub nsw i32 %12, %16
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @strncat(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @TG3_EEPROM_SB_FORMAT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @TG3_EEPROM_SB_FORMAT_1, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %109

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TG3_EEPROM_SB_REVISION_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %42 [
    i32 133, label %30
    i32 132, label %32
    i32 131, label %34
    i32 130, label %36
    i32 129, label %38
    i32 128, label %40
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @TG3_EEPROM_SB_F1R0_EDH_OFF, align 4
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @TG3_EEPROM_SB_F1R2_EDH_OFF, align 4
  store i32 %33, i32* %5, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* @TG3_EEPROM_SB_F1R3_EDH_OFF, align 4
  store i32 %35, i32* %5, align 4
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* @TG3_EEPROM_SB_F1R4_EDH_OFF, align 4
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %26
  %39 = load i32, i32* @TG3_EEPROM_SB_F1R5_EDH_OFF, align 4
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @TG3_EEPROM_SB_F1R6_EDH_OFF, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %26
  br label %109

43:                                               ; preds = %40, %38, %36, %34, %32, %30
  %44 = load %struct.tg3*, %struct.tg3** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @tg3_nvram_read(%struct.tg3* %44, i32 %45, i32* %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %109

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TG3_EEPROM_SB_EDH_BLD_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @TG3_EEPROM_SB_EDH_BLD_SHFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TG3_EEPROM_SB_EDH_MAJ_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @TG3_EEPROM_SB_EDH_MAJ_SHFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TG3_EEPROM_SB_EDH_MIN_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 99
  br i1 %64, label %68, label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 26
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %49
  br label %109

69:                                               ; preds = %65
  %70 = load %struct.tg3*, %struct.tg3** %3, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* %72)
  store i32 %73, i32* %5, align 4
  %74 = load %struct.tg3*, %struct.tg3** %3, align 8
  %75 = getelementptr inbounds %struct.tg3, %struct.tg3* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i32, i32* @TG3_VER_SIZE, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @snprintf(i8* %79, i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %69
  %89 = load %struct.tg3*, %struct.tg3** %3, align 8
  %90 = getelementptr inbounds %struct.tg3, %struct.tg3* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @TG3_VER_SIZE, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 97, %98
  %100 = sub nsw i32 %99, 1
  %101 = trunc i32 %100 to i8
  %102 = load %struct.tg3*, %struct.tg3** %3, align 8
  %103 = getelementptr inbounds %struct.tg3, %struct.tg3* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 %101, i8* %107, align 1
  br label %108

108:                                              ; preds = %97, %88
  br label %109

109:                                              ; preds = %25, %42, %48, %68, %108, %69
  ret void
}

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @tg3_nvram_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
