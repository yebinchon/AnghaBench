; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_intrpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_intrpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@QLCNIC_CMD_CONFIG_INTRPT = common dso_local global i32 0, align 4
@BIT_16 = common dso_local global i32 0, align 4
@QLCNIC_INTRPT_ADD = common dso_local global i32 0, align 4
@QLCNIC_INTRPT_DEL = common dso_local global i32 0, align 4
@QLCNIC_INTRPT_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to configure interrupts 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't configure interrupt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qlcnic_cmd_args, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %21 = load i32, i32* @QLCNIC_CMD_CONFIG_INTRPT, align 4
  %22 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %13, %struct.qlcnic_adapter* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %246

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %34 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load i32, i32* @BIT_16, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %36, %27
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %52

52:                                               ; preds = %113, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %116

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @QLCNIC_INTRPT_ADD, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @QLCNIC_INTRPT_DEL, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 4
  %77 = or i32 %65, %76
  store i32 %77, i32* %10, align 4
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @QLCNIC_INTRPT_MSIX, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %63
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %90, %63
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %52

116:                                              ; preds = %52
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %118 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %117, %struct.qlcnic_cmd_args* %13)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %243

128:                                              ; preds = %116
  %129 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %9, align 4
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %134

134:                                              ; preds = %237, %128
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %242

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i64 @LSB(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %138
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %151 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %155 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @dev_info(i32* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %237

165:                                              ; preds = %138
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %207

168:                                              ; preds = %165
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @MSW(i32 %169)
  %171 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %172 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  store i32 %170, i32* %179, align 4
  %180 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %181 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  store i32 1, i32* %188, align 4
  %189 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %199 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %198, i32 0, i32 0
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  store i32 %197, i32* %206, align 4
  br label %236

207:                                              ; preds = %165
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %210 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %209, i32 0, i32 0
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  store i32 %208, i32* %217, align 4
  %218 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %219 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %218, i32 0, i32 0
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  store i32 0, i32* %226, align 4
  %227 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %228 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %227, i32 0, i32 0
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %207, %168
  br label %237

237:                                              ; preds = %236, %149
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 2
  store i32 %241, i32* %7, align 4
  br label %134

242:                                              ; preds = %134
  br label %243

243:                                              ; preds = %242, %121
  %244 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %13)
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %243, %25
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @LSB(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @MSW(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
