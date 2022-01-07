; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c___ath9k_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c___ath9k_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.ath_common = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not read hardware revisions\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Mac Chip Rev 0x%02x.%x is not supported by this driver\0A\00", align 1
@AR_WA = common dso_local global i32 0, align 4
@AR_WA_D3_L1_DISABLE = common dso_local global i32 0, align 4
@AR_WA_ASPM_TIMER_BASED_DISABLE = common dso_local global i32 0, align 4
@ATH9K_RESET_POWER_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Couldn't reset chip\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AR_WA_BIT22 = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Couldn't wakeup chip\0A\00", align 1
@AR_PHY_CHIP_ID = common dso_local global i32 0, align 4
@ATH_HW_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @__ath9k_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath9k_hw_init(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call i32 @ath9k_hw_read_revisions(%struct.ath_hw* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %13 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %163

16:                                               ; preds = %1
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %22 [
    i32 144, label %21
    i32 143, label %21
    i32 141, label %21
    i32 142, label %21
    i32 139, label %21
    i32 138, label %21
    i32 137, label %21
    i32 140, label %21
    i32 136, label %21
    i32 135, label %21
    i32 132, label %21
    i32 134, label %21
    i32 133, label %21
    i32 130, label %21
    i32 128, label %21
    i32 131, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %35

22:                                               ; preds = %16
  %23 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %163

35:                                               ; preds = %21
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_WA, align 4
  %42 = call i8* @REG_READ(%struct.ath_hw* %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @AR_WA_D3_L1_DISABLE, align 4
  %47 = load i32, i32* @AR_WA_ASPM_TIMER_BASED_DISABLE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %39, %35
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = load i32, i32* @ATH9K_RESET_POWER_ON, align 4
  %56 = call i32 @ath9k_hw_set_reset_reg(%struct.ath_hw* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %60 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %163

63:                                               ; preds = %53
  %64 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %65 = call i64 @AR_SREV_9565(%struct.ath_hw* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* @AR_WA_BIT22, align 4
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %74 = load i32, i32* @AR_WA, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @REG_WRITE(%struct.ath_hw* %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %67, %63
  %80 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %81 = call i32 @ath9k_hw_init_defaults(%struct.ath_hw* %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %83 = call i32 @ath9k_hw_init_config(%struct.ath_hw* %82)
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = call i32 @ath9k_hw_attach_ops(%struct.ath_hw* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %163

90:                                               ; preds = %79
  %91 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %92 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %93 = call i32 @ath9k_hw_setpower(%struct.ath_hw* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %97 = call i32 (%struct.ath_common*, i8*, ...) @ath_err(%struct.ath_common* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %163

100:                                              ; preds = %90
  %101 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %102 = call i64 @AR_SREV_9271(%struct.ath_hw* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = call i64 @AR_SREV_9100(%struct.ath_hw* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %110 = call i64 @AR_SREV_9340(%struct.ath_hw* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %114 = call i64 @AR_SREV_9330(%struct.ath_hw* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %118 = call i64 @AR_SREV_9550(%struct.ath_hw* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %112, %108, %104, %100
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = load i32, i32* @AR_PHY_CHIP_ID, align 4
  %126 = call i8* @REG_READ(%struct.ath_hw* %124, i32 %125)
  %127 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %128 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %131 = call i32 @ath9k_hw_init_cal_settings(%struct.ath_hw* %130)
  %132 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %133 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %123
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = call i32 @ath9k_hw_disablepcie(%struct.ath_hw* %137)
  br label %139

139:                                              ; preds = %136, %123
  %140 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %141 = call i32 @ath9k_hw_post_init(%struct.ath_hw* %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %163

146:                                              ; preds = %139
  %147 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %148 = call i32 @ath9k_hw_init_mode_gain_regs(%struct.ath_hw* %147)
  %149 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %150 = call i32 @ath9k_hw_fill_cap_info(%struct.ath_hw* %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %163

155:                                              ; preds = %146
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = call i32 @ath9k_hw_init_macaddr(%struct.ath_hw* %156)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %159 = call i32 @ath9k_hw_init_hang_checks(%struct.ath_hw* %158)
  %160 = load i32, i32* @ATH_HW_INITIALIZED, align 4
  %161 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %162 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %155, %153, %144, %95, %88, %58, %22, %11
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_read_revisions(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, ...) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i8* @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_reset_reg(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_init_defaults(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_config(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_attach_ops(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setpower(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_cal_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_disablepcie(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_post_init(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_mode_gain_regs(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_fill_cap_info(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_macaddr(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_hang_checks(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
