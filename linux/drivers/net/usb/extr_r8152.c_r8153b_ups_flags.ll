; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_ups_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_ups_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@UPS_FLAGS_EN_GREEN = common dso_local global i32 0, align 4
@UPS_FLAGS_EN_ALDPS = common dso_local global i32 0, align 4
@UPS_FLAGS_EN_EEE = common dso_local global i32 0, align 4
@UPS_FLAGS_EN_FLOW_CTR = common dso_local global i32 0, align 4
@UPS_FLAGS_EN_EEE_CKDIV = common dso_local global i32 0, align 4
@UPS_FLAGS_EEE_CMOD_LV_EN = common dso_local global i32 0, align 4
@UPS_FLAGS_EN_10M_CKDIV = common dso_local global i32 0, align 4
@UPS_FLAGS_EEE_PLLOFF_100 = common dso_local global i32 0, align 4
@UPS_FLAGS_EEE_PLLOFF_GIGA = common dso_local global i32 0, align 4
@UPS_FLAGS_250M_CKDIV = common dso_local global i32 0, align 4
@UPS_FLAGS_CTAP_SHORT_DIS = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_UPS_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153b_ups_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153b_ups_flags(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = getelementptr inbounds %struct.r8152, %struct.r8152* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @UPS_FLAGS_EN_GREEN, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.r8152*, %struct.r8152** %2, align 8
  %15 = getelementptr inbounds %struct.r8152, %struct.r8152* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 10
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @UPS_FLAGS_EN_ALDPS, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.r8152*, %struct.r8152** %2, align 8
  %25 = getelementptr inbounds %struct.r8152, %struct.r8152* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @UPS_FLAGS_EN_EEE, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load %struct.r8152*, %struct.r8152** %2, align 8
  %35 = getelementptr inbounds %struct.r8152, %struct.r8152* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @UPS_FLAGS_EN_FLOW_CTR, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.r8152*, %struct.r8152** %2, align 8
  %45 = getelementptr inbounds %struct.r8152, %struct.r8152* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @UPS_FLAGS_EN_EEE_CKDIV, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.r8152*, %struct.r8152** %2, align 8
  %55 = getelementptr inbounds %struct.r8152, %struct.r8152* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @UPS_FLAGS_EEE_CMOD_LV_EN, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.r8152*, %struct.r8152** %2, align 8
  %65 = getelementptr inbounds %struct.r8152, %struct.r8152* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @UPS_FLAGS_EN_10M_CKDIV, align 4
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.r8152*, %struct.r8152** %2, align 8
  %75 = getelementptr inbounds %struct.r8152, %struct.r8152* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @UPS_FLAGS_EEE_PLLOFF_100, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.r8152*, %struct.r8152** %2, align 8
  %85 = getelementptr inbounds %struct.r8152, %struct.r8152* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @UPS_FLAGS_EEE_PLLOFF_GIGA, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.r8152*, %struct.r8152** %2, align 8
  %95 = getelementptr inbounds %struct.r8152, %struct.r8152* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @UPS_FLAGS_250M_CKDIV, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.r8152*, %struct.r8152** %2, align 8
  %105 = getelementptr inbounds %struct.r8152, %struct.r8152* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @UPS_FLAGS_CTAP_SHORT_DIS, align 4
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load %struct.r8152*, %struct.r8152** %2, align 8
  %115 = getelementptr inbounds %struct.r8152, %struct.r8152* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  switch i32 %117, label %154 [
    i32 128, label %118
    i32 129, label %122
    i32 130, label %126
    i32 131, label %130
    i32 132, label %134
    i32 133, label %138
    i32 134, label %142
    i32 135, label %146
    i32 136, label %150
  ]

118:                                              ; preds = %113
  %119 = call i32 @ups_flags_speed(i32 1)
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  br label %155

122:                                              ; preds = %113
  %123 = call i32 @ups_flags_speed(i32 2)
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  br label %155

126:                                              ; preds = %113
  %127 = call i32 @ups_flags_speed(i32 3)
  %128 = load i32, i32* %3, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %3, align 4
  br label %155

130:                                              ; preds = %113
  %131 = call i32 @ups_flags_speed(i32 4)
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  br label %155

134:                                              ; preds = %113
  %135 = call i32 @ups_flags_speed(i32 5)
  %136 = load i32, i32* %3, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %3, align 4
  br label %155

138:                                              ; preds = %113
  %139 = call i32 @ups_flags_speed(i32 6)
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  br label %155

142:                                              ; preds = %113
  %143 = call i32 @ups_flags_speed(i32 7)
  %144 = load i32, i32* %3, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %3, align 4
  br label %155

146:                                              ; preds = %113
  %147 = call i32 @ups_flags_speed(i32 8)
  %148 = load i32, i32* %3, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %3, align 4
  br label %155

150:                                              ; preds = %113
  %151 = call i32 @ups_flags_speed(i32 9)
  %152 = load i32, i32* %3, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %3, align 4
  br label %155

154:                                              ; preds = %113
  br label %155

155:                                              ; preds = %154, %150, %146, %142, %138, %134, %130, %126, %122, %118
  %156 = load %struct.r8152*, %struct.r8152** %2, align 8
  %157 = load i32, i32* @MCU_TYPE_USB, align 4
  %158 = load i32, i32* @USB_UPS_FLAGS, align 4
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @ocp_write_dword(%struct.r8152* %156, i32 %157, i32 %158, i32 %159)
  ret void
}

declare dso_local i32 @ups_flags_speed(i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
