; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_validate_esw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sysfs.c_validate_esw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i64, i64 }
%struct.qlcnic_esw_func_cfg = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@QLCNIC_DRV_OP_MODE = common dso_local global i64 0, align 8
@QLC_83XX_DRV_OP_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_NON_PRIV_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_esw_func_cfg*, i32)* @validate_esw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_esw_config(%struct.qlcnic_adapter* %0, %struct.qlcnic_esw_func_cfg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_esw_func_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_hardware_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_esw_func_cfg* %1, %struct.qlcnic_esw_func_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %14, align 8
  store %struct.qlcnic_hardware_context* %15, %struct.qlcnic_hardware_context** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %21 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QLCNIC_DRV_OP_MODE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %11, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %28 = load i32, i32* @QLC_83XX_DRV_OP_MODE, align 4
  %29 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %19
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %170, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %173

35:                                               ; preds = %31
  %36 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %36, i64 %38
  %40 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  %44 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %174

50:                                               ; preds = %35
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 0
  %53 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %52, align 8
  %54 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter* %59, i64 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %174

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %50
  %68 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %68, i64 %70
  %72 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %166 [
    i32 128, label %74
    i32 130, label %130
    i32 129, label %154
  ]

74:                                               ; preds = %67
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %76 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @QLC_DEV_GET_DRV(i32 %79, i64 %80)
  store i32 %81, i32* %10, align 4
  br label %91

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @QLC_83XX_GET_FUNC_PRIVILEGE(i32 %83, i64 %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %86, i64 %88
  %90 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %89, i32 0, i32 7
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %82, %78
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @QLCNIC_NON_PRIV_FUNC, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %96, i64 %98
  %100 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %174

106:                                              ; preds = %95
  %107 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %107, i64 %109
  %111 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %174

117:                                              ; preds = %106
  %118 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %118, i64 %120
  %122 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %174

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %91
  br label %169

130:                                              ; preds = %67
  %131 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %131, i64 %133
  %135 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @IS_VALID_VLAN(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %130
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %174

142:                                              ; preds = %130
  %143 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %143, i64 %145
  %147 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %174

153:                                              ; preds = %142
  br label %169

154:                                              ; preds = %67
  %155 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %155, i64 %157
  %159 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %174

165:                                              ; preds = %154
  br label %169

166:                                              ; preds = %67
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %174

169:                                              ; preds = %165, %153, %129
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %31

173:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %166, %162, %150, %139, %125, %114, %103, %63, %47
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i64 @qlcnic_is_valid_nic_func(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @QLC_DEV_GET_DRV(i32, i64) #1

declare dso_local i32 @QLC_83XX_GET_FUNC_PRIVILEGE(i32, i64) #1

declare dso_local i32 @IS_VALID_VLAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
