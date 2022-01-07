; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_port_c2_tcam_rule_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_port_c2_tcam_rule_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32 }
%struct.mvpp2_rfs_rule = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flow_action_entry* }
%struct.flow_action_entry = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.mvpp2_cls_c2_entry = type { i32, i32*, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MVPP2_CLS_LU_TYPE_MASK = common dso_local global i32 0, align 4
@FLOW_ACTION_DROP = common dso_local global i64 0, align 8
@MVPP22_C2_COL_RED_LOCK = common dso_local global i32 0, align 4
@MVPP22_C2_COL_NO_UPD_LOCK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR2_RSS_EN = common dso_local global i32 0, align 4
@MVPP22_C2_UPD_LOCK = common dso_local global i32 0, align 4
@MVPP22_C2_FWD_SW_LOCK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QHIGH_MASK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QLOW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_rfs_rule*)* @mvpp2_port_c2_tcam_rule_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_port_c2_tcam_rule_add(%struct.mvpp2_port* %0, %struct.mvpp2_rfs_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.mvpp2_rfs_rule*, align 8
  %6 = alloca %struct.flow_action_entry*, align 8
  %7 = alloca %struct.mvpp2_cls_c2_entry, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.mvpp2_rfs_rule* %1, %struct.mvpp2_rfs_rule** %5, align 8
  %13 = call i32 @memset(%struct.mvpp2_cls_c2_entry* %7, i32 0, i32 40)
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %15 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %16 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mvpp2_cls_c2_port_flow_index(%struct.mvpp2_port* %14, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %236

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %28 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %27, i32 0, i32 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.flow_action_entry*, %struct.flow_action_entry** %31, align 8
  %33 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %32, i64 0
  store %struct.flow_action_entry* %33, %struct.flow_action_entry** %6, align 8
  %34 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %37 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %39 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65535
  %42 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %43 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 65535
  %46 = shl i32 %45, 16
  %47 = or i32 %41, %46
  %48 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %52 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 65535
  %56 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %57 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 65535
  %61 = shl i32 %60, 16
  %62 = or i32 %55, %61
  %63 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %62, i32* %65, align 4
  %66 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %67 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 32
  %70 = and i32 %69, 65535
  %71 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %72 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 32
  %75 = and i32 %74, 65535
  %76 = shl i32 %75, 16
  %77 = or i32 %70, %76
  %78 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %82 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 48
  %85 = and i32 %84, 65535
  %86 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %87 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = ashr i32 %88, 48
  %90 = and i32 %89, 65535
  %91 = shl i32 %90, 16
  %92 = or i32 %85, %91
  %93 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %97 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BIT(i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @MVPP22_CLS_C2_PORT_ID(i32 %100)
  %102 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @MVPP22_CLS_C2_PORT_ID(i32 %105)
  %107 = call i32 @MVPP22_CLS_C2_TCAM_EN(i32 %106)
  %108 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @MVPP2_CLS_LU_TYPE_MASK, align 4
  %114 = call i32 @MVPP22_CLS_C2_LU_TYPE(i32 %113)
  %115 = call i32 @MVPP22_CLS_C2_TCAM_EN(i32 %114)
  %116 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %5, align 8
  %122 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MVPP22_CLS_C2_LU_TYPE(i32 %123)
  %125 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 4
  %130 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %131 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FLOW_ACTION_DROP, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %24
  %136 = load i32, i32* @MVPP22_C2_COL_RED_LOCK, align 4
  %137 = call i8* @MVPP22_CLS_C2_ACT_COLOR(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 2
  store i32 %138, i32* %139, align 8
  br label %230

140:                                              ; preds = %24
  %141 = load i32, i32* @MVPP22_C2_COL_NO_UPD_LOCK, align 4
  %142 = call i8* @MVPP22_CLS_C2_ACT_COLOR(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 2
  store i32 %143, i32* %144, align 8
  %145 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %146 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %140
  %151 = load i32, i32* @MVPP22_CLS_C2_ATTR2_RSS_EN, align 4
  %152 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %151
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %140
  %158 = load i32, i32* @MVPP22_C2_UPD_LOCK, align 4
  %159 = call i32 @MVPP22_CLS_C2_ACT_RSS_EN(i32 %158)
  %160 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 2
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* @MVPP22_C2_FWD_SW_LOCK, align 4
  %162 = call i32 @MVPP22_CLS_C2_ACT_FWD(i32 %161)
  %163 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @MVPP22_C2_UPD_LOCK, align 4
  %167 = call i32 @MVPP22_CLS_C2_ACT_QHIGH(i32 %166)
  %168 = load i32, i32* @MVPP22_C2_UPD_LOCK, align 4
  %169 = call i32 @MVPP22_CLS_C2_ACT_QLOW(i32 %168)
  %170 = or i32 %167, %169
  %171 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %170
  store i32 %173, i32* %171, align 8
  %174 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %175 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %157
  %180 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %181 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %182 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @mvpp22_rss_ctx(%struct.mvpp2_port* %180, i64 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %236

191:                                              ; preds = %179
  %192 = load i32, i32* %12, align 4
  %193 = ashr i32 %192, 3
  %194 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QHIGH_MASK, align 4
  %195 = and i32 %193, %194
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QLOW_MASK, align 4
  %198 = and i32 %196, %197
  store i32 %198, i32* %9, align 4
  br label %221

199:                                              ; preds = %157
  %200 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %201 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %205 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = ashr i32 %207, 3
  %209 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QHIGH_MASK, align 4
  %210 = and i32 %208, %209
  store i32 %210, i32* %8, align 4
  %211 = load %struct.flow_action_entry*, %struct.flow_action_entry** %6, align 8
  %212 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %216 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %214, %217
  %219 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QLOW_MASK, align 4
  %220 = and i32 %218, %219
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %199, %191
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @MVPP22_CLS_C2_ATTR0_QHIGH(i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @MVPP22_CLS_C2_ATTR0_QLOW(i32 %224)
  %226 = or i32 %223, %225
  %227 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %226, i32* %229, align 4
  br label %230

230:                                              ; preds = %221, %135
  %231 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %7, i32 0, i32 4
  store i32 1, i32* %231, align 8
  %232 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %233 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @mvpp2_cls_c2_write(i32 %234, %struct.mvpp2_cls_c2_entry* %7)
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %230, %188, %21
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @memset(%struct.mvpp2_cls_c2_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_cls_c2_port_flow_index(%struct.mvpp2_port*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_PORT_ID(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_TCAM_EN(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_LU_TYPE(i32) #1

declare dso_local i8* @MVPP22_CLS_C2_ACT_COLOR(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_RSS_EN(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_FWD(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_QHIGH(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ACT_QLOW(i32) #1

declare dso_local i32 @mvpp22_rss_ctx(%struct.mvpp2_port*, i64) #1

declare dso_local i32 @MVPP22_CLS_C2_ATTR0_QHIGH(i32) #1

declare dso_local i32 @MVPP22_CLS_C2_ATTR0_QLOW(i32) #1

declare dso_local i32 @mvpp2_cls_c2_write(i32, %struct.mvpp2_cls_c2_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
