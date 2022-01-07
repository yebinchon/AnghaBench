; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@cmdlog = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error allocating %d command log entries.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_HW_RESTARTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to load firmware: %d\0A\00", align 1
@CFG_CUSTOM_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@STATUS_RF_KILL_SW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Radio disabled by module parameter.\0A\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"Radio Frequency Kill Switch is On:\0AKill switch must be turned off for wireless networking to work.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Configured device on count %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Device configuration failed: 0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to config device on retry %d of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Unable to initialize device after %d attempts.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_up(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @libipw_networks_age(i32 %13, i64 %16)
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %147

30:                                               ; preds = %20
  %31 = load i32, i32* @cmdlog, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @cmdlog, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kcalloc(i32 %39, i32 4, i32 %40)
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 7
  store i32* %41, i32** %43, align 8
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32, i32* @cmdlog, align 4
  %50 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %147

53:                                               ; preds = %38
  %54 = load i32, i32* @cmdlog, align 4
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %33, %30
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %139, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MAX_HW_RESTARTS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %142

63:                                               ; preds = %59
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %65 = call i32 @ipw_load(%struct.ipw_priv* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %147

72:                                               ; preds = %63
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %74 = call i32 @ipw_init_ordinals(%struct.ipw_priv* %73)
  %75 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %76 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CFG_CUSTOM_MAC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %72
  %82 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %84 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @eeprom_parse_mac(%struct.ipw_priv* %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %72
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %89 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %88, i32 0, i32 6
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %94 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32 %92, i32 %95, i32 %96)
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %99 = call i32 @ipw_set_geo(%struct.ipw_priv* %98)
  %100 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %101 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %87
  %107 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %147

108:                                              ; preds = %87
  %109 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %110 = call i64 @rf_kill_active(%struct.ipw_priv* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %115 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %114, i32 0, i32 4
  %116 = load i32, i32* @HZ, align 4
  %117 = mul nsw i32 2, %116
  %118 = call i32 @schedule_delayed_work(i32* %115, i32 %117)
  store i32 0, i32* %2, align 4
  br label %147

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %122 = call i32 @ipw_config(%struct.ipw_priv* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  %128 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %129 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %128, i32 0, i32 3
  %130 = call i32 @schedule_delayed_work(i32* %129, i32 0)
  store i32 0, i32* %2, align 4
  br label %147

131:                                              ; preds = %120
  %132 = load i32, i32* %4, align 4
  %133 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @MAX_HW_RESTARTS, align 4
  %136 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %138 = call i32 @ipw_down(%struct.ipw_priv* %137)
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %59

142:                                              ; preds = %59
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %125, %112, %106, %68, %48, %27
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @libipw_networks_age(i32, i64) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*, i32) #1

declare dso_local i32 @ipw_load(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_init_ordinals(%struct.ipw_priv*) #1

declare dso_local i32 @eeprom_parse_mac(%struct.ipw_priv*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipw_set_geo(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_WARNING(i8*) #1

declare dso_local i64 @rf_kill_active(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @ipw_config(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32, ...) #1

declare dso_local i32 @ipw_down(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
