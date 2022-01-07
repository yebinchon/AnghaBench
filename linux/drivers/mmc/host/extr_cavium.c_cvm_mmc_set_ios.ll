; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i32, i32, i64, i32, i32 }
%struct.cvm_mmc_slot = type { i32, i32, i32, %struct.cvm_mmc_host* }
%struct.cvm_mmc_host = type { i32, i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*, i32)*, i32, i32 (%struct.cvm_mmc_host*)* }

@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MIO_EMM_SWITCH_HS_TIMING = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS = common dso_local global i64 0, align 8
@MIO_EMM_SWITCH_BUS_WIDTH = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_POWER_CLASS = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_CLK_HI = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_CLK_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @cvm_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.cvm_mmc_slot*, align 8
  %6 = alloca %struct.cvm_mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host* %12)
  store %struct.cvm_mmc_slot* %13, %struct.cvm_mmc_slot** %5, align 8
  %14 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %15 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %14, i32 0, i32 3
  %16 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %15, align 8
  store %struct.cvm_mmc_host* %16, %struct.cvm_mmc_host** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %18 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %17, i32 0, i32 4
  %19 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %18, align 8
  %20 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %21 = call i32 %19(%struct.cvm_mmc_host* %20)
  %22 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %23 = call i32 @cvm_mmc_switch_to(%struct.cvm_mmc_slot* %22)
  %24 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %87 [
    i32 129, label %27
    i32 130, label %28
    i32 128, label %57
  ]

27:                                               ; preds = %2
  br label %87

28:                                               ; preds = %2
  %29 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %30 = call i32 @cvm_mmc_reset_bus(%struct.cvm_mmc_slot* %29)
  %31 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %32 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %37 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %36, i32 0, i32 2
  %38 = load i32 (%struct.cvm_mmc_host*, i32)*, i32 (%struct.cvm_mmc_host*, i32)** %37, align 8
  %39 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %40 = call i32 %38(%struct.cvm_mmc_host* %39, i32 0)
  br label %56

41:                                               ; preds = %28
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IS_ERR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %49, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %48, %41
  br label %56

56:                                               ; preds = %55, %35
  br label %87

57:                                               ; preds = %2
  %58 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %59 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %64 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %63, i32 0, i32 2
  %65 = load i32 (%struct.cvm_mmc_host*, i32)*, i32 (%struct.cvm_mmc_host*, i32)** %64, align 8
  %66 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %67 = call i32 %65(%struct.cvm_mmc_host* %66, i32 1)
  br label %86

68:                                               ; preds = %57
  %69 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IS_ERR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  %76 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %77 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %82 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %76, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %75, %68
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %2, %86, %56, %27
  %88 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %94 [
    i32 131, label %91
    i32 132, label %92
    i32 133, label %93
  ]

91:                                               ; preds = %87
  store i32 2, i32* %9, align 4
  br label %94

92:                                               ; preds = %87
  store i32 1, i32* %9, align 4
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %87, %93, %92, %91
  %95 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %105, %99, %94
  %109 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %110 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 52000000
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 52000000, i32* %10, align 4
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %118 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %123 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %124, %125
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 2, %128
  %130 = sdiv i32 %127, %129
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %121, %115
  %132 = load i32, i32* @MIO_EMM_SWITCH_HS_TIMING, align 4
  %133 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %134 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MMC_TIMING_MMC_HS, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @FIELD_PREP(i32 %132, i32 %138)
  %140 = load i32, i32* @MIO_EMM_SWITCH_BUS_WIDTH, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @FIELD_PREP(i32 %140, i32 %141)
  %143 = or i32 %139, %142
  %144 = load i32, i32* @MIO_EMM_SWITCH_POWER_CLASS, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @FIELD_PREP(i32 %144, i32 %145)
  %147 = or i32 %143, %146
  %148 = load i32, i32* @MIO_EMM_SWITCH_CLK_HI, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @FIELD_PREP(i32 %148, i32 %149)
  %151 = or i32 %147, %150
  %152 = load i32, i32* @MIO_EMM_SWITCH_CLK_LO, align 4
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @FIELD_PREP(i32 %152, i32 %153)
  %155 = or i32 %151, %154
  store i32 %155, i32* %11, align 4
  %156 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %157 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @set_bus_id(i32* %11, i32 %158)
  %160 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @switch_val_changed(%struct.cvm_mmc_slot* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %131
  br label %174

165:                                              ; preds = %131
  %166 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %167 = call i32 @set_wdog(%struct.cvm_mmc_slot* %166, i32 0)
  %168 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @do_switch(%struct.cvm_mmc_host* %168, i32 %169)
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %5, align 8
  %173 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %165, %164
  %175 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %176 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %175, i32 0, i32 1
  %177 = load i32 (%struct.cvm_mmc_host*)*, i32 (%struct.cvm_mmc_host*)** %176, align 8
  %178 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  %179 = call i32 %177(%struct.cvm_mmc_host* %178)
  ret void
}

declare dso_local %struct.cvm_mmc_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cvm_mmc_switch_to(%struct.cvm_mmc_slot*) #1

declare dso_local i32 @cvm_mmc_reset_bus(%struct.cvm_mmc_slot*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @set_bus_id(i32*, i32) #1

declare dso_local i32 @switch_val_changed(%struct.cvm_mmc_slot*, i32) #1

declare dso_local i32 @set_wdog(%struct.cvm_mmc_slot*, i32) #1

declare dso_local i32 @do_switch(%struct.cvm_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
