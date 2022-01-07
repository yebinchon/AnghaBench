; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.cx23885_dev = type { i64, i32, i32, %struct.cx23885_tsport, %struct.cx23885_tsport }
%struct.cx23885_tsport = type { i32 }

@PCI_INT_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pci_status: 0x%08x  pci_mask: 0x%08x\0A\00", align 1
@VID_A_INT_STAT = common dso_local global i32 0, align 4
@VID_A_INT_MSK = common dso_local global i32 0, align 4
@AUDIO_INT_INT_STAT = common dso_local global i32 0, align 4
@AUDIO_INT_INT_MSK = common dso_local global i32 0, align 4
@VID_B_INT_STAT = common dso_local global i32 0, align 4
@VID_B_INT_MSK = common dso_local global i32 0, align 4
@VID_C_INT_STAT = common dso_local global i32 0, align 4
@VID_C_INT_MSK = common dso_local global i32 0, align 4
@VID_A_GPCNT = common dso_local global i32 0, align 4
@AUD_INT_A_GPCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"vida_status: 0x%08x vida_mask: 0x%08x count: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"audint_status: 0x%08x audint_mask: 0x%08x count: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"ts1_status: 0x%08x  ts1_mask: 0x%08x count: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"ts2_status: 0x%08x  ts2_mask: 0x%08x count: 0x%x\0A\00", align 1
@PCI_MSK_RISC_RD = common dso_local global i32 0, align 4
@PCI_MSK_RISC_WR = common dso_local global i32 0, align 4
@PCI_MSK_AL_RD = common dso_local global i32 0, align 4
@PCI_MSK_AL_WR = common dso_local global i32 0, align 4
@PCI_MSK_APB_DMA = common dso_local global i32 0, align 4
@PCI_MSK_VID_C = common dso_local global i32 0, align 4
@PCI_MSK_VID_B = common dso_local global i32 0, align 4
@PCI_MSK_VID_A = common dso_local global i32 0, align 4
@PCI_MSK_AUD_INT = common dso_local global i32 0, align 4
@PCI_MSK_AUD_EXT = common dso_local global i32 0, align 4
@PCI_MSK_GPIO0 = common dso_local global i32 0, align 4
@PCI_MSK_GPIO1 = common dso_local global i32 0, align 4
@PCI_MSK_AV_CORE = common dso_local global i32 0, align 4
@PCI_MSK_IR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_RISC_RD   0x%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_RISC_WR   0x%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_AL_RD     0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_AL_WR     0x%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_APB_DMA   0x%08x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_VID_C     0x%08x)\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_VID_B     0x%08x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_VID_A     0x%08x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_AUD_INT   0x%08x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_AUD_EXT   0x%08x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_GPIO0     0x%08x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_GPIO1     0x%08x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_AV_CORE   0x%08x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c" (PCI_MSK_IR        0x%08x)\0A\00", align 1
@cx23885_boards = common dso_local global %struct.TYPE_2__* null, align 8
@CX23885_MPEG_DVB = common dso_local global i64 0, align 8
@CX23885_MPEG_ENCODER = common dso_local global i64 0, align 8
@core = common dso_local global i32 0, align 4
@interrupt_service_routine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cx23885_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx23885_dev*, align 8
  %6 = alloca %struct.cx23885_tsport*, align 8
  %7 = alloca %struct.cx23885_tsport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.cx23885_dev*
  store %struct.cx23885_dev* %25, %struct.cx23885_dev** %5, align 8
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %27 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %26, i32 0, i32 4
  store %struct.cx23885_tsport* %27, %struct.cx23885_tsport** %6, align 8
  %28 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %29 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %28, i32 0, i32 3
  store %struct.cx23885_tsport* %29, %struct.cx23885_tsport** %7, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %30 = load i32, i32* @PCI_INT_STAT, align 4
  %31 = call i32 @cx_read(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %33 = call i32 @cx23885_irq_get_mask(%struct.cx23885_dev* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %444

42:                                               ; preds = %2
  %43 = load i32, i32* @VID_A_INT_STAT, align 4
  %44 = call i32 @cx_read(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @VID_A_INT_MSK, align 4
  %46 = call i32 @cx_read(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @AUDIO_INT_INT_STAT, align 4
  %48 = call i32 @cx_read(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @AUDIO_INT_INT_MSK, align 4
  %50 = call i32 @cx_read(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @VID_B_INT_STAT, align 4
  %52 = call i32 @cx_read(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @VID_B_INT_MSK, align 4
  %54 = call i32 @cx_read(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* @VID_C_INT_STAT, align 4
  %56 = call i32 @cx_read(i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* @VID_C_INT_MSK, align 4
  %58 = call i32 @cx_read(i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %42
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %444

74:                                               ; preds = %68, %63, %42
  %75 = load i32, i32* @VID_A_GPCNT, align 4
  %76 = call i32 @cx_read(i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* @AUD_INT_A_GPCNT, align 4
  %78 = call i32 @cx_read(i32 %77)
  store i32 %78, i32* %22, align 4
  %79 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %80 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cx_read(i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %7, align 8
  %84 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @cx_read(i32 %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %18, align 4
  %93 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %22, align 4
  %97 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %19, align 4
  %101 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %20, align 4
  %105 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @PCI_MSK_RISC_RD, align 4
  %108 = load i32, i32* @PCI_MSK_RISC_WR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @PCI_MSK_AL_RD, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PCI_MSK_AL_WR, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @PCI_MSK_APB_DMA, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @PCI_MSK_VID_C, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @PCI_MSK_VID_B, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @PCI_MSK_VID_A, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @PCI_MSK_AUD_INT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @PCI_MSK_AUD_EXT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @PCI_MSK_GPIO1, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @PCI_MSK_AV_CORE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @PCI_MSK_IR, align 4
  %133 = or i32 %131, %132
  %134 = and i32 %106, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %249

136:                                              ; preds = %74
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @PCI_MSK_RISC_RD, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @PCI_MSK_RISC_RD, align 4
  %143 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @PCI_MSK_RISC_WR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @PCI_MSK_RISC_WR, align 4
  %151 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @PCI_MSK_AL_RD, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @PCI_MSK_AL_RD, align 4
  %159 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @PCI_MSK_AL_WR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i32, i32* @PCI_MSK_AL_WR, align 4
  %167 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @PCI_MSK_APB_DMA, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* @PCI_MSK_APB_DMA, align 4
  %175 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @PCI_MSK_VID_C, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @PCI_MSK_VID_C, align 4
  %183 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @PCI_MSK_VID_B, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load i32, i32* @PCI_MSK_VID_B, align 4
  %191 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @PCI_MSK_VID_A, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* @PCI_MSK_VID_A, align 4
  %199 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @PCI_MSK_AUD_INT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i32, i32* @PCI_MSK_AUD_INT, align 4
  %207 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @PCI_MSK_AUD_EXT, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* @PCI_MSK_AUD_EXT, align 4
  %215 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %213, %208
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %223 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @PCI_MSK_GPIO1, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i32, i32* @PCI_MSK_GPIO1, align 4
  %231 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @PCI_MSK_AV_CORE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i32, i32* @PCI_MSK_AV_CORE, align 4
  %239 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %238)
  br label %240

240:                                              ; preds = %237, %232
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @PCI_MSK_IR, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load i32, i32* @PCI_MSK_IR, align 4
  %247 = call i32 (i32, i8*, i32, ...) @dprintk(i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %245, %240
  br label %249

249:                                              ; preds = %248, %74
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %251 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %252 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %258, label %273

258:                                              ; preds = %249
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @PCI_MSK_GPIO1, align 4
  %261 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %262 = or i32 %260, %261
  %263 = and i32 %259, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %258
  %266 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %267 = load i32, i32* %8, align 4
  %268 = call i64 @netup_ci_slot_status(%struct.cx23885_dev* %266, i32 %267)
  %269 = load i32, i32* %21, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %21, align 4
  br label %273

273:                                              ; preds = %265, %258, %249
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %275 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %276 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %294

282:                                              ; preds = %273
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @PCI_MSK_GPIO0, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %289 = call i64 @altera_ci_irq(%struct.cx23885_dev* %288)
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %291, %289
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %21, align 4
  br label %294

294:                                              ; preds = %287, %282, %273
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %335

297:                                              ; preds = %294
  %298 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %299 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %300 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @CX23885_MPEG_DVB, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %297
  %308 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %6, align 8
  %309 = load i32, i32* %14, align 4
  %310 = call i64 @cx23885_irq_ts(%struct.cx23885_tsport* %308, i32 %309)
  %311 = load i32, i32* %21, align 4
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %312, %310
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %21, align 4
  br label %334

315:                                              ; preds = %297
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %317 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %318 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @CX23885_MPEG_ENCODER, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %315
  %326 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %327 = load i32, i32* %14, align 4
  %328 = call i64 @cx23885_irq_417(%struct.cx23885_dev* %326, i32 %327)
  %329 = load i32, i32* %21, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %330, %328
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %21, align 4
  br label %333

333:                                              ; preds = %325, %315
  br label %334

334:                                              ; preds = %333, %307
  br label %335

335:                                              ; preds = %334, %294
  %336 = load i32, i32* %16, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %376

338:                                              ; preds = %335
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %340 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %341 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @CX23885_MPEG_DVB, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %356

348:                                              ; preds = %338
  %349 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %7, align 8
  %350 = load i32, i32* %16, align 4
  %351 = call i64 @cx23885_irq_ts(%struct.cx23885_tsport* %349, i32 %350)
  %352 = load i32, i32* %21, align 4
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, %351
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %21, align 4
  br label %375

356:                                              ; preds = %338
  %357 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %358 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %359 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @CX23885_MPEG_ENCODER, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %374

366:                                              ; preds = %356
  %367 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %368 = load i32, i32* %16, align 4
  %369 = call i64 @cx23885_irq_417(%struct.cx23885_dev* %367, i32 %368)
  %370 = load i32, i32* %21, align 4
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %371, %369
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %21, align 4
  br label %374

374:                                              ; preds = %366, %356
  br label %375

375:                                              ; preds = %374, %348
  br label %376

376:                                              ; preds = %375, %335
  %377 = load i32, i32* %10, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %376
  %380 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %381 = load i32, i32* %10, align 4
  %382 = call i64 @cx23885_video_irq(%struct.cx23885_dev* %380, i32 %381)
  %383 = load i32, i32* %21, align 4
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %382
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %21, align 4
  br label %387

387:                                              ; preds = %379, %376
  %388 = load i32, i32* %12, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %387
  %391 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %13, align 4
  %394 = call i64 @cx23885_audio_irq(%struct.cx23885_dev* %391, i32 %392, i32 %393)
  %395 = load i32, i32* %21, align 4
  %396 = sext i32 %395 to i64
  %397 = add nsw i64 %396, %394
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %21, align 4
  br label %399

399:                                              ; preds = %390, %387
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* @PCI_MSK_IR, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %418

404:                                              ; preds = %399
  store i32 0, i32* %23, align 4
  %405 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %406 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @core, align 4
  %409 = load i32, i32* @interrupt_service_routine, align 4
  %410 = load i32, i32* %8, align 4
  %411 = call i32 @v4l2_subdev_call(i32 %407, i32 %408, i32 %409, i32 %410, i32* %23)
  %412 = load i32, i32* %23, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %404
  %415 = load i32, i32* %21, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %21, align 4
  br label %417

417:                                              ; preds = %414, %404
  br label %418

418:                                              ; preds = %417, %399
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* %9, align 4
  %421 = and i32 %419, %420
  %422 = load i32, i32* @PCI_MSK_AV_CORE, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %418
  %426 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %427 = load i32, i32* @PCI_MSK_AV_CORE, align 4
  %428 = call i32 @cx23885_irq_disable(%struct.cx23885_dev* %426, i32 %427)
  %429 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %430 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %429, i32 0, i32 1
  %431 = call i32 @schedule_work(i32* %430)
  %432 = load i32, i32* %21, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %21, align 4
  br label %434

434:                                              ; preds = %425, %418
  %435 = load i32, i32* %21, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %434
  %438 = load i32, i32* @PCI_INT_STAT, align 4
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %9, align 4
  %441 = and i32 %439, %440
  %442 = call i32 @cx_write(i32 %438, i32 %441)
  br label %443

443:                                              ; preds = %437, %434
  br label %444

444:                                              ; preds = %443, %73, %38
  %445 = load i32, i32* %21, align 4
  %446 = call i32 @IRQ_RETVAL(i32 %445)
  ret i32 %446
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx23885_irq_get_mask(%struct.cx23885_dev*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i64 @netup_ci_slot_status(%struct.cx23885_dev*, i32) #1

declare dso_local i64 @altera_ci_irq(%struct.cx23885_dev*) #1

declare dso_local i64 @cx23885_irq_ts(%struct.cx23885_tsport*, i32) #1

declare dso_local i64 @cx23885_irq_417(%struct.cx23885_dev*, i32) #1

declare dso_local i64 @cx23885_video_irq(%struct.cx23885_dev*, i32) #1

declare dso_local i64 @cx23885_audio_irq(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cx23885_irq_disable(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
