; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_eeprom_init_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_eeprom_init_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.iwl_nvm_data* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.iwl_nvm_data = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid 11n configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid device sku\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Device SKU: 24GHz %s %s, 52GHz %s %s, 11.n %s %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Valid Tx ant: 0x%X, Valid Rx ant: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_eeprom_init_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_eeprom_init_hw_params(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_nvm_data*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %5, i32 0, i32 2
  %7 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %6, align 8
  store %struct.iwl_nvm_data* %7, %struct.iwl_nvm_data** %4, align 8
  %8 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %21 = call i32 @IWL_ERR(%struct.iwl_priv* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %104

24:                                               ; preds = %12, %1
  %25 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %41 = call i32 @IWL_ERR(%struct.iwl_priv* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %104

44:                                               ; preds = %34, %29, %24
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %47 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %52 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %58 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %59 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %64 = call i32 (%struct.iwl_priv*, i8*, i8*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @num_of_ant(i32 %67)
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %44
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %91

82:                                               ; preds = %44
  %83 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %84 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @num_of_ant(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %82, %78
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %93 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %94 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 (%struct.iwl_priv*, i8*, i8*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %97, i8* %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %91, %39, %19
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @num_of_ant(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
