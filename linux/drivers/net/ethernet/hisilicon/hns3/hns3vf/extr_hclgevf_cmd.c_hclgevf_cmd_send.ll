; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_hw = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, %struct.hclgevf_cmq_ring }
%struct.hclgevf_cmq_ring = type { i32, i32, i32, %struct.hclgevf_desc*, i32 }
%struct.hclgevf_desc = type { i32, i32, i32 }
%struct.hclgevf_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@HCLGEVF_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HCLGEVF_NIC_CSQ_HEAD_REG = common dso_local global i32 0, align 4
@HCLGEVF_NIC_CSQ_TAIL_REG = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cleaned %d, need to clean %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclgevf_cmd_send(%struct.hclgevf_hw* %0, %struct.hclgevf_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclgevf_hw*, align 8
  %6 = alloca %struct.hclgevf_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hclgevf_dev*, align 8
  %9 = alloca %struct.hclgevf_cmq_ring*, align 8
  %10 = alloca %struct.hclgevf_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.hclgevf_hw* %0, %struct.hclgevf_hw** %5, align 8
  store %struct.hclgevf_desc* %1, %struct.hclgevf_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %19 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.hclgevf_dev*
  store %struct.hclgevf_dev* %21, %struct.hclgevf_dev** %8, align 8
  %22 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %23 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store %struct.hclgevf_cmq_ring* %24, %struct.hclgevf_cmq_ring** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %26 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %3
  %36 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %37 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %251

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %46 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = call i32 @hclgevf_ring_space(%struct.hclgevf_cmq_ring* %47)
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %52 = load i32, i32* @HCLGEVF_NIC_CSQ_HEAD_REG, align 4
  %53 = call i32 @hclgevf_read_dev(%struct.hclgevf_hw* %51, i32 %52)
  %54 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %9, align 8
  %55 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %57 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %58, i32 0, i32 2
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %251

63:                                               ; preds = %43
  %64 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %65 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %17, align 4
  %69 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %70 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %69, i64 0
  %71 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le16_to_cpu(i32 %72)
  store i64 %73, i64* %16, align 8
  br label %74

74:                                               ; preds = %120, %63
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %80 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %81, i32 0, i32 3
  %83 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %82, align 8
  %84 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %85 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %83, i64 %89
  store %struct.hclgevf_desc* %90, %struct.hclgevf_desc** %10, align 8
  %91 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %10, align 8
  %92 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %92, i64 %94
  %96 = bitcast %struct.hclgevf_desc* %91 to i8*
  %97 = bitcast %struct.hclgevf_desc* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %99 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %105 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %110 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %108, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %78
  %116 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %117 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %78
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %74

123:                                              ; preds = %74
  %124 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %125 = load i32, i32* @HCLGEVF_NIC_CSQ_TAIL_REG, align 4
  %126 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %127 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @hclgevf_write_dev(%struct.hclgevf_hw* %124, i32 %125, i32 %130)
  %132 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %133 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @le16_to_cpu(i32 %134)
  %136 = call i64 @HCLGEVF_SEND_SYNC(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %148, %138
  %140 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %141 = call i64 @hclgevf_cmd_csq_done(%struct.hclgevf_hw* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %155

144:                                              ; preds = %139
  %145 = call i32 @udelay(i32 1)
  %146 = load i64, i64* %12, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %151 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %149, %153
  br i1 %154, label %139, label %155

155:                                              ; preds = %148, %143
  br label %156

156:                                              ; preds = %155, %123
  %157 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %158 = call i64 @hclgevf_cmd_csq_done(%struct.hclgevf_hw* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %224

160:                                              ; preds = %156
  store i32 1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %222, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %223

165:                                              ; preds = %161
  %166 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %167 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %168, i32 0, i32 3
  %170 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %169, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %170, i64 %172
  store %struct.hclgevf_desc* %173, %struct.hclgevf_desc** %10, align 8
  %174 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %174, i64 %176
  %178 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %10, align 8
  %179 = bitcast %struct.hclgevf_desc* %177 to i8*
  %180 = bitcast %struct.hclgevf_desc* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 12, i1 false)
  %181 = load i64, i64* %16, align 8
  %182 = call i32 @hclgevf_is_special_opcode(i64 %181)
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = call i64 @likely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %165
  %189 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %189, i64 %191
  %193 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le16_to_cpu(i32 %194)
  store i64 %195, i64* %15, align 8
  br label %202

196:                                              ; preds = %165
  %197 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %198 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %197, i64 0
  %199 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @le16_to_cpu(i32 %200)
  store i64 %201, i64* %15, align 8
  br label %202

202:                                              ; preds = %196, %188
  %203 = load i64, i64* %15, align 8
  %204 = call i32 @hclgevf_cmd_convert_err_code(i64 %203)
  store i32 %204, i32* %14, align 4
  %205 = load i64, i64* %15, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %208 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 8
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %216 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %214, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %202
  store i32 0, i32* %17, align 4
  br label %222

222:                                              ; preds = %221, %202
  br label %161

223:                                              ; preds = %161
  br label %224

224:                                              ; preds = %223, %156
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* @EBADE, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %14, align 4
  br label %230

230:                                              ; preds = %227, %224
  %231 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %232 = call i32 @hclgevf_cmd_csq_clean(%struct.hclgevf_hw* %231)
  store i32 %232, i32* %13, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %230
  %237 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %8, align 8
  %238 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %237, i32 0, i32 0
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @dev_warn(i32* %240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %236, %230
  %245 = load %struct.hclgevf_hw*, %struct.hclgevf_hw** %5, align 8
  %246 = getelementptr inbounds %struct.hclgevf_hw, %struct.hclgevf_hw* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %247, i32 0, i32 2
  %249 = call i32 @spin_unlock_bh(i32* %248)
  %250 = load i32, i32* %14, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %244, %50, %35
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hclgevf_ring_space(%struct.hclgevf_cmq_ring*) #1

declare dso_local i32 @hclgevf_read_dev(%struct.hclgevf_hw*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hclgevf_write_dev(%struct.hclgevf_hw*, i32, i32) #1

declare dso_local i64 @HCLGEVF_SEND_SYNC(i64) #1

declare dso_local i64 @hclgevf_cmd_csq_done(%struct.hclgevf_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hclgevf_is_special_opcode(i64) #1

declare dso_local i32 @hclgevf_cmd_convert_err_code(i64) #1

declare dso_local i32 @hclgevf_cmd_csq_clean(%struct.hclgevf_hw*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
