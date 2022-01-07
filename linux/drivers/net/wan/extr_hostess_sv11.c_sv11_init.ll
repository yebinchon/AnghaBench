; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hostess_sv11.c_sv11_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hostess_sv11.c_sv11_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_dev = type { i32, i32, i64, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.net_device*, %struct.z8530_dev*, %struct.z8530_dev*, i32* }
%struct.net_device = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Comtrol SV11\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"I/O 0x%X already in use\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@z8530_nop = common dso_local global i32 0, align 4
@z8530_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Hostess SV11\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"IRQ %d already in use\0A\00", align 1
@dma = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Hostess SV/11 (TX)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Hostess SV/11 (RX)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Z8530 series device not found\0A\00", align 1
@z8530_dead_port = common dso_local global i32 0, align 4
@Z85C30 = common dso_local global i64 0, align 8
@z8530_hdlc_kilostream = common dso_local global i32 0, align 4
@z8530_hdlc_kilostream_85230 = common dso_local global i32 0, align 4
@hostess_attach = common dso_local global i32 0, align 4
@hostess_queue_xmit = common dso_local global i32 0, align 4
@hostess_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"unable to register HDLC device\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z8530_dev* (i32, i32)* @sv11_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z8530_dev* @sv11_init(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.z8530_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z8530_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @request_region(i32 %8, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store %struct.z8530_dev* null, %struct.z8530_dev** %3, align 8
  br label %206

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.z8530_dev* @kzalloc(i32 112, i32 %15)
  store %struct.z8530_dev* %16, %struct.z8530_dev** %6, align 8
  %17 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %18 = icmp ne %struct.z8530_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %203

20:                                               ; preds = %14
  %21 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %22 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %26 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 3
  %30 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %31 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %34 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %37 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 4
  %39 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %40 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  store i32* @z8530_nop, i32** %41, align 8
  %42 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %43 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 7
  store i32* @z8530_nop, i32** %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 4
  %47 = call i32 @outb(i32 0, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @z8530_interrupt, align 4
  %50 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %51 = call i64 @request_irq(i32 %48, i32 %49, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.z8530_dev* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %20
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %200

56:                                               ; preds = %20
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %59 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %61 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %62 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  store %struct.z8530_dev* %60, %struct.z8530_dev** %63, align 8
  %64 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %65 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %66 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  store %struct.z8530_dev* %64, %struct.z8530_dev** %67, align 8
  %68 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %69 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %70 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  store %struct.z8530_dev* %68, %struct.z8530_dev** %71, align 8
  %72 = load i32, i32* @dma, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %56
  %75 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %76 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 3, i32* %77, align 8
  %78 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %79 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 4
  %83 = call i32 @outb(i32 11, i32 %82)
  %84 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %85 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @request_dma(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  br label %196

91:                                               ; preds = %74
  %92 = load i32, i32* @dma, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %96 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @request_dma(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %186

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %56
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @disable_irq(i32 %105)
  %107 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %108 = call i64 @z8530_init(%struct.z8530_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @enable_irq(i32 %112)
  br label %176

114:                                              ; preds = %104
  %115 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %116 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %115, i32 0, i32 4
  %117 = load i32, i32* @z8530_dead_port, align 4
  %118 = call i32 @z8530_channel_load(%struct.TYPE_3__* %116, i32 %117)
  %119 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %120 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @Z85C30, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %126 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %125, i32 0, i32 3
  %127 = load i32, i32* @z8530_hdlc_kilostream, align 4
  %128 = call i32 @z8530_channel_load(%struct.TYPE_3__* %126, i32 %127)
  br label %134

129:                                              ; preds = %114
  %130 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %131 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %130, i32 0, i32 3
  %132 = load i32, i32* @z8530_hdlc_kilostream_85230, align 4
  %133 = call i32 @z8530_channel_load(%struct.TYPE_3__* %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @enable_irq(i32 %135)
  %137 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %138 = call %struct.net_device* @alloc_hdlcdev(%struct.z8530_dev* %137)
  store %struct.net_device* %138, %struct.net_device** %7, align 8
  %139 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %140 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  store %struct.net_device* %138, %struct.net_device** %141, align 8
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = icmp ne %struct.net_device* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %176

145:                                              ; preds = %134
  %146 = load i32, i32* @hostess_attach, align 4
  %147 = load %struct.net_device*, %struct.net_device** %7, align 8
  %148 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %147)
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* @hostess_queue_xmit, align 4
  %151 = load %struct.net_device*, %struct.net_device** %7, align 8
  %152 = call %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device* %151)
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  %154 = load %struct.net_device*, %struct.net_device** %7, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 2
  store i32* @hostess_ops, i32** %155, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.net_device*, %struct.net_device** %7, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.net_device*, %struct.net_device** %7, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.net_device*, %struct.net_device** %7, align 8
  %163 = call i64 @register_hdlc_device(%struct.net_device* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %145
  %166 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %167 = load %struct.net_device*, %struct.net_device** %7, align 8
  %168 = call i32 @free_netdev(%struct.net_device* %167)
  br label %176

169:                                              ; preds = %145
  %170 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @z8530_describe(%struct.z8530_dev* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  %173 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %174 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  store %struct.z8530_dev* %175, %struct.z8530_dev** %3, align 8
  br label %206

176:                                              ; preds = %165, %144, %110
  %177 = load i32, i32* @dma, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %181 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @free_dma(i32 %183)
  br label %185

185:                                              ; preds = %179, %176
  br label %186

186:                                              ; preds = %185, %101
  %187 = load i32, i32* @dma, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %191 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @free_dma(i32 %193)
  br label %195

195:                                              ; preds = %189, %186
  br label %196

196:                                              ; preds = %195, %90
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %199 = call i32 @free_irq(i32 %197, %struct.z8530_dev* %198)
  br label %200

200:                                              ; preds = %196, %53
  %201 = load %struct.z8530_dev*, %struct.z8530_dev** %6, align 8
  %202 = call i32 @kfree(%struct.z8530_dev* %201)
  br label %203

203:                                              ; preds = %200, %19
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @release_region(i32 %204, i32 8)
  store %struct.z8530_dev* null, %struct.z8530_dev** %3, align 8
  br label %206

206:                                              ; preds = %203, %169, %11
  %207 = load %struct.z8530_dev*, %struct.z8530_dev** %3, align 8
  ret %struct.z8530_dev* %207
}

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.z8530_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.z8530_dev*) #1

declare dso_local i64 @request_dma(i32, i8*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i64 @z8530_init(%struct.z8530_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @z8530_channel_load(%struct.TYPE_3__*, i32) #1

declare dso_local %struct.net_device* @alloc_hdlcdev(%struct.z8530_dev*) #1

declare dso_local %struct.TYPE_4__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i64 @register_hdlc_device(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @z8530_describe(%struct.z8530_dev*, i8*, i32) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @free_irq(i32, %struct.z8530_dev*) #1

declare dso_local i32 @kfree(%struct.z8530_dev*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
