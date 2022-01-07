; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.fst_card_info = type { i32, i32, i32, i64 }
%struct.fst_port_info = type { i32, %struct.fst_card_info* }
%struct.fstioc_write = type { i64, i64 }
%struct.fstioc_info = type { i64, i64 }

@DBG_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ioctl: %x, %p\0A\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FST_RESET = common dso_local global i32 0, align 4
@FST_STARTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FST_MEMSIZE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@FST_DOWNLOAD = common dso_local global i32 0, align 4
@FST_RUNNING = common dso_local global i32 0, align 4
@interruptHandshake = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Attempt to configure card %d in non-running state (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FST_RAW = common dso_local global i32 0, align 4
@FST_GEN_HDLC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Passing this type to hdlc %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @fst_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fst_card_info*, align 8
  %9 = alloca %struct.fst_port_info*, align 8
  %10 = alloca %struct.fstioc_write, align 8
  %11 = alloca %struct.fstioc_info, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @DBG_IOCTL, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 (i32, i8*, i32, ...) @dbg(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15, i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.fst_port_info* @dev_to_port(%struct.net_device* %20)
  store %struct.fst_port_info* %21, %struct.fst_port_info** %9, align 8
  %22 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %23 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %22, i32 0, i32 1
  %24 = load %struct.fst_card_info*, %struct.fst_card_info** %23, align 8
  store %struct.fst_card_info* %24, %struct.fst_card_info** %8, align 8
  %25 = load i32, i32* @CAP_NET_ADMIN, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %257

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %252 [
    i32 142, label %33
    i32 143, label %39
    i32 139, label %45
    i32 141, label %121
    i32 140, label %173
    i32 128, label %204
  ]

33:                                               ; preds = %31
  %34 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %35 = call i32 @fst_cpureset(%struct.fst_card_info* %34)
  %36 = load i32, i32* @FST_RESET, align 4
  %37 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %38 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %257

39:                                               ; preds = %31
  %40 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %41 = call i32 @fst_cpurelease(%struct.fst_card_info* %40)
  %42 = load i32, i32* @FST_STARTING, align 4
  %43 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %44 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %4, align 4
  br label %257

45:                                               ; preds = %31
  %46 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %257

53:                                               ; preds = %45
  %54 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @copy_from_user(%struct.fstioc_write* %10, i32* %56, i32 16)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %257

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FST_MEMSIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %80, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FST_MEMSIZE, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %74, %76
  %78 = load i64, i64* @FST_MEMSIZE, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %67, %62
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %257

83:                                               ; preds = %72
  %84 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %85 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 16
  %88 = ptrtoint i32* %87 to i32
  %89 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @memdup_user(i32 %88, i64 %90)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @IS_ERR(i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %83
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %4, align 4
  br label %257

98:                                               ; preds = %83
  %99 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %100 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %101, %103
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds %struct.fstioc_write, %struct.fstioc_write* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @memcpy_toio(i64 %104, i8* %105, i64 %107)
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @kfree(i8* %109)
  %111 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %112 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FST_RESET, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %98
  %117 = load i32, i32* @FST_DOWNLOAD, align 4
  %118 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %119 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %98
  store i32 0, i32* %4, align 4
  br label %257

121:                                              ; preds = %31
  %122 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %123 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FST_STARTING, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %121
  %128 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %129 = call i32 @check_started_ok(%struct.fst_card_info* %128)
  %130 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %131 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FST_RUNNING, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %127
  %136 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %137 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %136, i32 0, i32 2
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %141 = call i32 @fst_enable_intr(%struct.fst_card_info* %140)
  %142 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %143 = load i32, i32* @interruptHandshake, align 4
  %144 = call i32 @FST_WRB(%struct.fst_card_info* %142, i32 %143, i32 238)
  %145 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %146 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %145, i32 0, i32 2
  %147 = load i64, i64* %12, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %135, %127
  br label %150

150:                                              ; preds = %149, %121
  %151 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %152 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %257

158:                                              ; preds = %150
  %159 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %160 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %161 = bitcast %struct.fstioc_info* %11 to %struct.fstioc_write*
  %162 = call i32 @gather_conf_info(%struct.fst_card_info* %159, %struct.fst_port_info* %160, %struct.fstioc_write* %161)
  %163 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %164 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = bitcast %struct.fstioc_info* %11 to %struct.fstioc_write*
  %167 = call i32 @copy_to_user(i32* %165, %struct.fstioc_write* %166, i32 16)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = load i32, i32* @EFAULT, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %257

172:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %257

173:                                              ; preds = %31
  %174 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %175 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FST_RUNNING, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %181 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %184 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %185)
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  br label %257

189:                                              ; preds = %173
  %190 = bitcast %struct.fstioc_info* %11 to %struct.fstioc_write*
  %191 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %192 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @copy_from_user(%struct.fstioc_write* %190, i32* %193, i32 16)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load i32, i32* @EFAULT, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %4, align 4
  br label %257

199:                                              ; preds = %189
  %200 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %201 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %202 = bitcast %struct.fstioc_info* %11 to %struct.fstioc_write*
  %203 = call i32 @set_conf_from_info(%struct.fst_card_info* %200, %struct.fst_port_info* %201, %struct.fstioc_write* %202)
  store i32 %203, i32* %4, align 4
  br label %257

204:                                              ; preds = %31
  %205 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %206 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %238 [
    i32 138, label %209
    i32 135, label %214
    i32 132, label %214
    i32 133, label %214
    i32 131, label %214
    i32 130, label %214
    i32 134, label %214
    i32 136, label %214
    i32 129, label %219
    i32 137, label %223
  ]

209:                                              ; preds = %204
  %210 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %211 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %212 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %213 = call i32 @fst_get_iface(%struct.fst_card_info* %210, %struct.fst_port_info* %211, %struct.ifreq* %212)
  store i32 %213, i32* %4, align 4
  br label %257

214:                                              ; preds = %204, %204, %204, %204, %204, %204, %204
  %215 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  %216 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %217 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %218 = call i32 @fst_set_iface(%struct.fst_card_info* %215, %struct.fst_port_info* %216, %struct.ifreq* %217)
  store i32 %218, i32* %4, align 4
  br label %257

219:                                              ; preds = %204
  %220 = load i32, i32* @FST_RAW, align 4
  %221 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %222 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  store i32 0, i32* %4, align 4
  br label %257

223:                                              ; preds = %204
  %224 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %225 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @FST_RAW, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %231 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  store i32 129, i32* %232, align 8
  store i32 0, i32* %4, align 4
  br label %257

233:                                              ; preds = %223
  %234 = load %struct.net_device*, %struct.net_device** %5, align 8
  %235 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @hdlc_ioctl(%struct.net_device* %234, %struct.ifreq* %235, i32 %236)
  store i32 %237, i32* %4, align 4
  br label %257

238:                                              ; preds = %204
  %239 = load i32, i32* @FST_GEN_HDLC, align 4
  %240 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  %241 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load i32, i32* @DBG_IOCTL, align 4
  %243 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %244 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i32, i8*, i32, ...) @dbg(i32 %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %246)
  %248 = load %struct.net_device*, %struct.net_device** %5, align 8
  %249 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @hdlc_ioctl(%struct.net_device* %248, %struct.ifreq* %249, i32 %250)
  store i32 %251, i32* %4, align 4
  br label %257

252:                                              ; preds = %31
  %253 = load %struct.net_device*, %struct.net_device** %5, align 8
  %254 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @hdlc_ioctl(%struct.net_device* %253, %struct.ifreq* %254, i32 %255)
  store i32 %256, i32* %4, align 4
  br label %257

257:                                              ; preds = %252, %238, %233, %229, %219, %214, %209, %199, %196, %179, %172, %169, %155, %120, %95, %80, %59, %50, %39, %33, %28
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.fst_port_info* @dev_to_port(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @fst_cpureset(%struct.fst_card_info*) #1

declare dso_local i32 @fst_cpurelease(%struct.fst_card_info*) #1

declare dso_local i32 @copy_from_user(%struct.fstioc_write*, i32*, i32) #1

declare dso_local i8* @memdup_user(i32, i64) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @memcpy_toio(i64, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @check_started_ok(%struct.fst_card_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fst_enable_intr(%struct.fst_card_info*) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gather_conf_info(%struct.fst_card_info*, %struct.fst_port_info*, %struct.fstioc_write*) #1

declare dso_local i32 @copy_to_user(i32*, %struct.fstioc_write*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @set_conf_from_info(%struct.fst_card_info*, %struct.fst_port_info*, %struct.fstioc_write*) #1

declare dso_local i32 @fst_get_iface(%struct.fst_card_info*, %struct.fst_port_info*, %struct.ifreq*) #1

declare dso_local i32 @fst_set_iface(%struct.fst_card_info*, %struct.fst_port_info*, %struct.ifreq*) #1

declare dso_local i32 @hdlc_ioctl(%struct.net_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
