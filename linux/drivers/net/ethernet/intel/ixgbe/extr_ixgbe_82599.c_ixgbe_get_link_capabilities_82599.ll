; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_get_link_capabilities_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_get_link_capabilities_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@ixgbe_media_type_fiber_qsfp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*)* @ixgbe_get_link_capabilities_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_link_capabilities_82599(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %50, label %15

15:                                               ; preds = %3
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %50, label %22

22:                                               ; preds = %15
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %50, label %29

29:                                               ; preds = %22
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %36, %29, %22, %15, %3
  %51 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 1, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %190

54:                                               ; preds = %43
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %8, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = load i32, i32* @IXGBE_AUTOC, align 4
  %68 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %163 [
    i32 132, label %73
    i32 135, label %77
    i32 133, label %81
    i32 134, label %85
    i32 131, label %89
    i32 130, label %89
    i32 129, label %123
    i32 128, label %157
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 0, i32* %76, align 4
  br label %165

77:                                               ; preds = %69
  %78 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 0, i32* %80, align 4
  br label %165

81:                                               ; preds = %69
  %82 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 1, i32* %84, align 4
  br label %165

85:                                               ; preds = %69
  %86 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 0, i32* %88, align 4
  br label %165

89:                                               ; preds = %69, %69
  %90 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %89
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %111
  %122 = load i32*, i32** %7, align 8
  store i32 1, i32* %122, align 4
  br label %165

123:                                              ; preds = %69
  %124 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %125 = load i32*, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %130, %123
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %141
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32*, i32** %7, align 8
  store i32 1, i32* %156, align 4
  br label %165

157:                                              ; preds = %69
  %158 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %159 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %160 = or i32 %158, %159
  %161 = load i32*, i32** %6, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %7, align 8
  store i32 0, i32* %162, align 4
  br label %165

163:                                              ; preds = %69
  %164 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %164, i32* %4, align 4
  br label %190

165:                                              ; preds = %157, %155, %121, %85, %81, %77, %73
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %167 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %173 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %174 = or i32 %172, %173
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, i32* %175, align 4
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %179 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ixgbe_media_type_fiber_qsfp, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %171
  %185 = load i32*, i32** %7, align 8
  store i32 0, i32* %185, align 4
  br label %188

186:                                              ; preds = %171
  %187 = load i32*, i32** %7, align 8
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %186, %184
  br label %189

189:                                              ; preds = %188, %165
  store i32 0, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %163, %50
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
