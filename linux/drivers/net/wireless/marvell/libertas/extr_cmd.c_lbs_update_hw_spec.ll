; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_update_hw_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_update_hw_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32*, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cmd_ds_get_hw_spec = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_GET_HW_SPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%pM, fw %u.%u.%up%u, cap 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"GET_HW_SPEC: hardware interface 0x%x, hardware spec 0x%04x\0A\00", align 1
@MRVL_FW_V4 = common dso_local global i64 0, align 8
@MRVDRV_MAX_REGION_CODE = common dso_local global i64 0, align 8
@lbs_region_code_to_index = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"unidentified region code; using the default (USA)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_update_hw_spec(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_get_hw_spec, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 -1, i32* %4, align 4
  %6 = call i32 @memset(%struct.cmd_ds_get_hw_spec* %3, i32 0, i32 28)
  %7 = call i32 @cpu_to_le16(i32 28)
  %8 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memcpy(i32 %11, i32* %14, i32 %15)
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = load i32, i32* @CMD_GET_HW_SPEC, align 4
  %19 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %17, i32 %18, %struct.cmd_ds_get_hw_spec* %3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %181

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le32_to_cpu(i32 %25)
  %27 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @le32_to_cpu(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %36 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 8
  %39 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 24
  %43 = and i32 %42, 255
  %44 = or i32 %38, %43
  %45 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %53 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 255
  %57 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 255
  %71 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_info(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %66, i32 %70, i8* %73)
  %75 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @MRVL_FW_MAJOR_REV(i32 %82)
  %84 = load i64, i64* @MRVL_FW_V4, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %23
  %87 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %101

94:                                               ; preds = %23
  %95 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = and i32 %97, 255
  %99 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %100 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %86
  store i64 0, i64* %5, align 8
  br label %102

102:                                              ; preds = %117, %101
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @MRVDRV_MAX_REGION_CODE, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %108 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @lbs_region_code_to_index, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %109, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %120

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %5, align 8
  br label %102

120:                                              ; preds = %115, %102
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @MRVDRV_MAX_REGION_CODE, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %126 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %125, i32 0, i32 2
  store i32 16, i32* %126, align 4
  %127 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %128 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %127, i32 0, i32 5
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 (%struct.TYPE_6__*, i8*, ...) @netdev_info(%struct.TYPE_6__* %129, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %124, %120
  %132 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %133 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 255
  br i1 %137, label %138, label %146

138:                                              ; preds = %131
  %139 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %140 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds %struct.cmd_ds_get_hw_spec, %struct.cmd_ds_get_hw_spec* %3, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ETH_ALEN, align 4
  %145 = call i32 @memmove(i32* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %131
  %147 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %148 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %180, label %151

151:                                              ; preds = %146
  %152 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %153 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %152, i32 0, i32 5
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %158 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @ETH_ALEN, align 4
  %161 = call i32 @memcpy(i32 %156, i32* %159, i32 %160)
  %162 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %163 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %162, i32 0, i32 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = icmp ne %struct.TYPE_5__* %164, null
  br i1 %165, label %166, label %177

166:                                              ; preds = %151
  %167 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %168 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %167, i32 0, i32 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %173 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* @ETH_ALEN, align 4
  %176 = call i32 @memcpy(i32 %171, i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %166, %151
  %178 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %179 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %178, i32 0, i32 3
  store i32 1, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %146
  br label %181

181:                                              ; preds = %180, %22
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @memset(%struct.cmd_ds_get_hw_spec*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_get_hw_spec*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32, i32) #1

declare dso_local i64 @MRVL_FW_MAJOR_REV(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
