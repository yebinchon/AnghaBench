; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_image_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_image_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_nvm_image_att = type { i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to find nvram image of type %08x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Read image %02x; type = %08x; NVM [%08x,...,%08x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed calculating CRC, rc = %d\0A\00", align 1
@QED_NVM_WRITE_NVRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed writing to %08x, rc = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed reading from %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"NVM %08x: %08x -> %08x [Value %08x Mask %08x]\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed writing to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64**, i32*)* @qed_nvm_flash_image_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvm_flash_image_access(%struct.qed_dev* %0, i64** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qed_nvm_image_att, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i64], align 16
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = load i64**, i64*** %6, align 8
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 4
  store i64* %23, i64** %21, align 8
  %24 = load i64**, i64*** %6, align 8
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %28 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %27)
  store %struct.qed_hwfn* %28, %struct.qed_hwfn** %9, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %50, %3
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %29

53:                                               ; preds = %48, %29
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %56 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %259

66:                                               ; preds = %53
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %68 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %78 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %88 = load i32, i32* @NETIF_MSG_DRV, align 4
  %89 = load i64**, i64*** %6, align 8
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %97, %99
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = call i32 (%struct.qed_dev*, i32, i8*, i64, i64, i64, i64, ...) @DP_VERBOSE(%struct.qed_dev* %87, i32 %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %91, i64 %92, i64 %95, i64 %102)
  %104 = load i64**, i64*** %6, align 8
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %104, align 8
  %107 = load i64**, i64*** %6, align 8
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @BIT(i32 0)
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load i64**, i64*** %6, align 8
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %116, align 8
  %119 = load i64**, i64*** %6, align 8
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %14, align 8
  %122 = load i64**, i64*** %6, align 8
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  store i64* %124, i64** %122, align 8
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %162

127:                                              ; preds = %66
  store i64 0, i64* %15, align 8
  %128 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %129 = call i32 @qed_nvm_flash_image_access_crc(%struct.qed_dev* %128, %struct.qed_nvm_image_att* %8, i64* %15)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %135)
  br label %257

137:                                              ; preds = %127
  %138 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %139 = load i32, i32* @QED_NVM_WRITE_NVRAM, align 4
  %140 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %141, %143
  %145 = sub nsw i32 %144, 4
  %146 = sext i32 %145 to i64
  %147 = call i32 @qed_mcp_nvm_write(%struct.qed_dev* %138, i32 %139, i64 %146, i64* %15, i32 4)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %137
  %151 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %152 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %153, %155
  %157 = sub nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %12, align 4
  %160 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %158, i32 %159)
  br label %161

161:                                              ; preds = %150, %137
  br label %257

162:                                              ; preds = %66
  br label %163

163:                                              ; preds = %253, %162
  %164 = load i64, i64* %14, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %256

166:                                              ; preds = %163
  %167 = load i64**, i64*** %6, align 8
  %168 = load i64*, i64** %167, align 8
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %18, align 8
  %170 = load i64**, i64*** %6, align 8
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 4
  store i64* %172, i64** %170, align 8
  %173 = load i64**, i64*** %6, align 8
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %17, align 8
  %176 = load i64**, i64*** %6, align 8
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 4
  store i64* %178, i64** %176, align 8
  %179 = load i64**, i64*** %6, align 8
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %16, align 8
  %182 = load i64**, i64*** %6, align 8
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 4
  store i64* %184, i64** %182, align 8
  %185 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %186 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %16, align 8
  %190 = add nsw i64 %188, %189
  %191 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %192 = call i32 @qed_mcp_nvm_read(%struct.qed_dev* %185, i64 %190, i64* %191, i32 4)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %166
  %196 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %197 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* %16, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %201)
  br label %257

203:                                              ; preds = %166
  %204 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %205 = bitcast i64* %204 to i32*
  %206 = load i32, i32* %205, align 16
  %207 = call i64 @le32_to_cpu(i32 %206)
  store i64 %207, i64* %19, align 8
  %208 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %209 = load i32, i32* @NETIF_MSG_DRV, align 4
  %210 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %16, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i64, i64* %19, align 8
  %216 = load i64, i64* %19, align 8
  %217 = load i64, i64* %17, align 8
  %218 = xor i64 %217, -1
  %219 = and i64 %216, %218
  %220 = load i64, i64* %18, align 8
  %221 = load i64, i64* %17, align 8
  %222 = and i64 %220, %221
  %223 = or i64 %219, %222
  %224 = load i64, i64* %18, align 8
  %225 = load i64, i64* %17, align 8
  %226 = call i32 (%struct.qed_dev*, i32, i8*, i64, i64, i64, i64, ...) @DP_VERBOSE(%struct.qed_dev* %208, i32 %209, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %214, i64 %215, i64 %223, i64 %224, i64 %225)
  %227 = load i64, i64* %18, align 8
  %228 = load i64, i64* %17, align 8
  %229 = and i64 %227, %228
  %230 = load i64, i64* %19, align 8
  %231 = load i64, i64* %17, align 8
  %232 = xor i64 %231, -1
  %233 = and i64 %230, %232
  %234 = or i64 %229, %233
  store i64 %234, i64* %18, align 8
  %235 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %236 = load i32, i32* @QED_NVM_WRITE_NVRAM, align 4
  %237 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %16, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @qed_mcp_nvm_write(%struct.qed_dev* %235, i32 %236, i64 %241, i64* %18, i32 4)
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %203
  %246 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %247 = getelementptr inbounds %struct.qed_nvm_image_att, %struct.qed_nvm_image_att* %8, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %16, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 (%struct.qed_dev*, i8*, i64, ...) @DP_ERR(%struct.qed_dev* %246, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %251)
  br label %257

253:                                              ; preds = %203
  %254 = load i64, i64* %14, align 8
  %255 = add nsw i64 %254, -1
  store i64 %255, i64* %14, align 8
  br label %163

256:                                              ; preds = %163
  br label %257

257:                                              ; preds = %256, %245, %195, %161, %132
  %258 = load i32, i32* %12, align 4
  store i32 %258, i32* %4, align 4
  br label %259

259:                                              ; preds = %257, %60
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i64, ...) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i64, i64, i64, i64, ...) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @qed_nvm_flash_image_access_crc(%struct.qed_dev*, %struct.qed_nvm_image_att*, i64*) #1

declare dso_local i32 @qed_mcp_nvm_write(%struct.qed_dev*, i32, i64, i64*, i32) #1

declare dso_local i32 @qed_mcp_nvm_read(%struct.qed_dev*, i64, i64*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
