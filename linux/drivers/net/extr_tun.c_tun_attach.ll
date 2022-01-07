; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32, i64, i32, i32, i32*, i32, i32, i32, i64, %struct.TYPE_11__, %struct.net_device*, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.file = type { %struct.tun_struct* }
%struct.tun_file = type { i32, i32, i64, i32, i32, i32*, i32, i32, i32, i64, %struct.TYPE_11__, %struct.net_device*, %struct.TYPE_10__, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFF_MULTI_QUEUE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@MAX_TAP_QUEUES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@tun_ptr_free = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_SHARED = common dso_local global i32 0, align 4
@SOCK_XDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.file*, i32, i32, i32, i32)* @tun_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_attach(%struct.tun_struct* %0, %struct.file* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tun_struct*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tun_file*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.file*, %struct.file** %8, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.tun_struct*, %struct.tun_struct** %17, align 8
  %19 = bitcast %struct.tun_struct* %18 to %struct.tun_file*
  store %struct.tun_file* %19, %struct.tun_file** %13, align 8
  %20 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %21 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %20, i32 0, i32 11
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %14, align 8
  %23 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %24 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %23, i32 0, i32 12
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %28 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @security_tun_dev_attach(%struct.TYPE_12__* %26, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  br label %256

34:                                               ; preds = %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %38 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @rtnl_dereference(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %44 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %256

48:                                               ; preds = %42, %34
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  %51 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %52 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IFF_MULTI_QUEUE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %59 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %256

63:                                               ; preds = %57, %48
  %64 = load i32, i32* @E2BIG, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  %66 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %67 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %63
  %71 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %72 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %76 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load i64, i64* @MAX_TAP_QUEUES, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %256

82:                                               ; preds = %70, %63
  store i32 0, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %112, label %85

85:                                               ; preds = %82
  %86 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %87 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %112

90:                                               ; preds = %85
  %91 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %92 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %91, i32 0, i32 12
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = call i32 @lock_sock(%struct.TYPE_12__* %94)
  %96 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %97 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %96, i32 0, i32 14
  %98 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %99 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = call i32 @sk_attach_filter(i32* %97, %struct.TYPE_12__* %101)
  store i32 %102, i32* %15, align 4
  %103 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %104 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %103, i32 0, i32 12
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = call i32 @release_sock(%struct.TYPE_12__* %106)
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %90
  br label %256

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111, %85, %82
  %113 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %114 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %113, i32 0, i32 9
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %112
  %118 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %119 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %118, i32 0, i32 13
  %120 = load %struct.net_device*, %struct.net_device** %14, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = load i32, i32* @tun_ptr_free, align 4
  %125 = call i64 @ptr_ring_resize(i32* %119, i32 %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %15, align 4
  br label %256

130:                                              ; preds = %117, %112
  %131 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %132 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %135 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @RCV_SHUTDOWN, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %139 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %137
  store i32 %144, i32* %142, align 4
  %145 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %146 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %130
  %150 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %151 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %150, i32 0, i32 10
  %152 = call i32 @xdp_rxq_info_is_reg(%struct.TYPE_11__* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @WARN_ON(i32 %155)
  %157 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %158 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %162 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %149
  %166 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %167 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %170 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %169, i32 0, i32 10
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  br label %172

172:                                              ; preds = %165, %149
  br label %198

173:                                              ; preds = %130
  %174 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %175 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %174, i32 0, i32 10
  %176 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %177 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %176, i32 0, i32 11
  %178 = load %struct.net_device*, %struct.net_device** %177, align 8
  %179 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %180 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @xdp_rxq_info_reg(%struct.TYPE_11__* %175, %struct.net_device* %178, i32 %181)
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %173
  br label %256

186:                                              ; preds = %173
  %187 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %188 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %187, i32 0, i32 10
  %189 = load i32, i32* @MEM_TYPE_PAGE_SHARED, align 4
  %190 = call i32 @xdp_rxq_info_reg_mem_model(%struct.TYPE_11__* %188, i32 %189, i32* null)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %195 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %194, i32 0, i32 10
  %196 = call i32 @xdp_rxq_info_unreg(%struct.TYPE_11__* %195)
  br label %256

197:                                              ; preds = %186
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %197, %172
  %199 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %200 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %199, i32 0, i32 9
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %205 = bitcast %struct.tun_file* %204 to %struct.tun_struct*
  %206 = call i32 @tun_enable_queue(%struct.tun_struct* %205)
  br label %217

207:                                              ; preds = %198
  %208 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %209 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %208, i32 0, i32 7
  %210 = call i32 @sock_hold(i32* %209)
  %211 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %212 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %213 = bitcast %struct.tun_file* %212 to %struct.tun_struct*
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @tun_napi_init(%struct.tun_struct* %211, %struct.tun_struct* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %207, %203
  %218 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %219 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @rtnl_dereference(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %225 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %224, i32 0, i32 7
  %226 = load i32, i32* @SOCK_XDP, align 4
  %227 = call i32 @sock_set_flag(i32* %225, i32 %226)
  br label %228

228:                                              ; preds = %223, %217
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %233 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %236 = call i32 @rcu_assign_pointer(i32 %234, %struct.tun_struct* %235)
  br label %237

237:                                              ; preds = %231, %228
  %238 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %239 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %242 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %240, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.tun_file*, %struct.tun_file** %13, align 8
  %248 = bitcast %struct.tun_file* %247 to %struct.tun_struct*
  %249 = call i32 @rcu_assign_pointer(i32 %246, %struct.tun_struct* %248)
  %250 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %251 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  %254 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %255 = call i32 @tun_set_real_num_queues(%struct.tun_struct* %254)
  br label %256

256:                                              ; preds = %237, %193, %185, %127, %110, %81, %62, %47, %33
  %257 = load i32, i32* %15, align 4
  ret i32 %257
}

declare dso_local i32 @security_tun_dev_attach(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @rtnl_dereference(i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_12__*) #1

declare dso_local i32 @sk_attach_filter(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @release_sock(%struct.TYPE_12__*) #1

declare dso_local i64 @ptr_ring_resize(i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xdp_rxq_info_is_reg(%struct.TYPE_11__*) #1

declare dso_local i32 @xdp_rxq_info_reg(%struct.TYPE_11__*, %struct.net_device*, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @xdp_rxq_info_unreg(%struct.TYPE_11__*) #1

declare dso_local i32 @tun_enable_queue(%struct.tun_struct*) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @tun_napi_init(%struct.tun_struct*, %struct.tun_struct*, i32, i32) #1

declare dso_local i32 @sock_set_flag(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tun_struct*) #1

declare dso_local i32 @tun_set_real_num_queues(%struct.tun_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
