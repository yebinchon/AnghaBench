; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_regdomain_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_regdomain_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ath6kl_wmi_regdomain = type { i32 }
%struct.country_code_to_enum_rd = type { i8* }
%struct.reg_dmn_pair_mapping = type { i32 }

@ATH6KL_COUNTRY_RD_SHIFT = common dso_local global i32 0, align 4
@COUNTRY_ERD_FLAG = common dso_local global i32 0, align 4
@WORLD_SKU_MASK = common dso_local global i32 0, align 4
@WORLD_SKU_PREFIX = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Regpair used: 0x%0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Regpair not found reg_code 0x%0x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Country alpha2 being used: %c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi*, i32*, i32)* @ath6kl_wmi_regdomain_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_wmi_regdomain_event(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath6kl_wmi_regdomain*, align 8
  %8 = alloca %struct.country_code_to_enum_rd*, align 8
  %9 = alloca %struct.reg_dmn_pair_mapping*, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.country_code_to_enum_rd* null, %struct.country_code_to_enum_rd** %8, align 8
  store %struct.reg_dmn_pair_mapping* null, %struct.reg_dmn_pair_mapping** %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %struct.ath6kl_wmi_regdomain*
  store %struct.ath6kl_wmi_regdomain* %13, %struct.ath6kl_wmi_regdomain** %7, align 8
  %14 = load %struct.ath6kl_wmi_regdomain*, %struct.ath6kl_wmi_regdomain** %7, align 8
  %15 = getelementptr inbounds %struct.ath6kl_wmi_regdomain, %struct.ath6kl_wmi_regdomain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @ATH6KL_COUNTRY_RD_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load i32, i32* @COUNTRY_ERD_FLAG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.country_code_to_enum_rd* @ath6kl_regd_find_country(i32 %25)
  store %struct.country_code_to_enum_rd* %26, %struct.country_code_to_enum_rd** %8, align 8
  br label %52

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @WORLD_SKU_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @WORLD_SKU_PREFIX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.reg_dmn_pair_mapping* @ath6kl_get_regpair(i32 %34)
  store %struct.reg_dmn_pair_mapping* %35, %struct.reg_dmn_pair_mapping** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.country_code_to_enum_rd* @ath6kl_regd_find_country_by_rd(i32 %36)
  store %struct.country_code_to_enum_rd* %37, %struct.country_code_to_enum_rd** %8, align 8
  %38 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %9, align 8
  %39 = icmp ne %struct.reg_dmn_pair_mapping* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %42 = load %struct.reg_dmn_pair_mapping*, %struct.reg_dmn_pair_mapping** %9, align 8
  %43 = getelementptr inbounds %struct.reg_dmn_pair_mapping, %struct.reg_dmn_pair_mapping* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = call i32 (i32, i8*, i8, ...) @ath6kl_dbg(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 signext %45)
  br label %50

47:                                               ; preds = %33
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %8, align 8
  %54 = icmp ne %struct.country_code_to_enum_rd* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %52
  %56 = load %struct.wmi*, %struct.wmi** %4, align 8
  %57 = getelementptr inbounds %struct.wmi, %struct.wmi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %55
  %63 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %8, align 8
  %64 = getelementptr inbounds %struct.country_code_to_enum_rd, %struct.country_code_to_enum_rd* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %67, i8* %68, align 1
  %69 = load %struct.country_code_to_enum_rd*, %struct.country_code_to_enum_rd** %8, align 8
  %70 = getelementptr inbounds %struct.country_code_to_enum_rd, %struct.country_code_to_enum_rd* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %73, i8* %74, align 1
  %75 = load %struct.wmi*, %struct.wmi** %4, align 8
  %76 = getelementptr inbounds %struct.wmi, %struct.wmi* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %81 = call i32 @regulatory_hint(i32 %79, i8* %80)
  %82 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (i32, i8*, i8, ...) @ath6kl_dbg(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8 signext %84, i32 %87)
  br label %89

89:                                               ; preds = %62, %55, %52
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.country_code_to_enum_rd* @ath6kl_regd_find_country(i32) #1

declare dso_local %struct.reg_dmn_pair_mapping* @ath6kl_get_regpair(i32) #1

declare dso_local %struct.country_code_to_enum_rd* @ath6kl_regd_find_country_by_rd(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8 signext, ...) #1

declare dso_local i32 @ath6kl_warn(i8*, i32) #1

declare dso_local i32 @regulatory_hint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
