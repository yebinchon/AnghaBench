; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_board_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_saa7134_board_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: board init: gpio is %x\0A\00", align 1
@SAA7134_REMOTE_GPIO = common dso_local global i8* null, align 8
@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [180 x i8] c"%s: seems there are two different versions of the MD5044\0A%s: (with the same ID) out there.  If sound doesn't work for\0A%s: you try the audio_clock_override=0x200000 insmod option.\0A\00", align 1
@SAA7134_GPIO_GPMODE1 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS1 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS3 = common dso_local global i32 0, align 4
@SAA7134_REMOTE_I2C = common dso_local global i8* null, align 8
@SAA7134_PRODUCTION_TEST_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [175 x i8] c"%s: %s: dual saa713x broadcast decoders\0A%s: Sorry, none of the inputs to this chip are supported yet.\0A%s: Dual decoder functionality is disabled for now, use the other chip.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_board_init1(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %4 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %5 = ashr i32 %4, 2
  %6 = call i32 @saa_writel(i32 %5, i32 0)
  %7 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %8 = ashr i32 %7, 2
  %9 = call i32 @saa_readl(i32 %8)
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %256 [
    i32 168, label %22
    i32 167, label %22
    i32 166, label %22
    i32 169, label %28
    i32 170, label %28
    i32 186, label %28
    i32 184, label %28
    i32 183, label %28
    i32 182, label %28
    i32 181, label %28
    i32 180, label %28
    i32 150, label %28
    i32 157, label %28
    i32 156, label %28
    i32 221, label %28
    i32 241, label %28
    i32 219, label %28
    i32 239, label %28
    i32 220, label %28
    i32 240, label %28
    i32 218, label %28
    i32 228, label %28
    i32 238, label %28
    i32 223, label %28
    i32 128, label %28
    i32 133, label %28
    i32 129, label %28
    i32 132, label %28
    i32 134, label %28
    i32 136, label %28
    i32 135, label %28
    i32 152, label %28
    i32 151, label %28
    i32 209, label %28
    i32 242, label %28
    i32 164, label %28
    i32 158, label %28
    i32 139, label %28
    i32 171, label %28
    i32 243, label %28
    i32 245, label %28
    i32 244, label %28
    i32 246, label %28
    i32 174, label %28
    i32 143, label %28
    i32 236, label %28
    i32 179, label %28
    i32 178, label %28
    i32 176, label %28
    i32 177, label %28
    i32 248, label %28
    i32 217, label %28
    i32 216, label %28
    i32 215, label %28
    i32 214, label %28
    i32 213, label %28
    i32 212, label %28
    i32 211, label %28
    i32 210, label %28
    i32 208, label %28
    i32 206, label %28
    i32 207, label %28
    i32 203, label %28
    i32 205, label %28
    i32 204, label %28
    i32 165, label %28
    i32 142, label %28
    i32 159, label %28
    i32 227, label %28
    i32 141, label %28
    i32 155, label %28
    i32 154, label %28
    i32 175, label %32
    i32 149, label %40
    i32 185, label %51
    i32 146, label %58
    i32 148, label %63
    i32 173, label %70
    i32 247, label %75
    i32 172, label %75
    i32 231, label %82
    i32 224, label %82
    i32 230, label %97
    i32 229, label %115
    i32 225, label %124
    i32 235, label %130
    i32 193, label %140
    i32 140, label %158
    i32 161, label %161
    i32 162, label %161
    i32 145, label %173
    i32 144, label %173
    i32 137, label %173
    i32 147, label %173
    i32 163, label %173
    i32 202, label %173
    i32 201, label %173
    i32 198, label %173
    i32 197, label %173
    i32 200, label %173
    i32 199, label %173
    i32 196, label %173
    i32 195, label %173
    i32 190, label %173
    i32 189, label %173
    i32 188, label %173
    i32 192, label %173
    i32 187, label %173
    i32 191, label %173
    i32 194, label %173
    i32 160, label %173
    i32 138, label %173
    i32 237, label %177
    i32 226, label %193
    i32 234, label %203
    i32 233, label %203
    i32 232, label %210
    i32 131, label %220
    i32 222, label %230
    i32 153, label %242
    i32 130, label %249
  ]

22:                                               ; preds = %1, %1, %1
  %23 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = call i32 @board_flyvideo(%struct.saa7134_dev* %26)
  br label %256

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %29 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %256

32:                                               ; preds = %1
  %33 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %34 = call i32 @saa_writeb(i32 %33, i32 128)
  %35 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %36 = call i32 @saa_writeb(i32 %35, i32 64)
  %37 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %256

40:                                               ; preds = %1
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %45 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  br label %256

51:                                               ; preds = %1
  %52 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %53 = ashr i32 %52, 2
  %54 = call i32 @saa_andorl(i32 %53, i32 262144, i32 262144)
  %55 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %56 = ashr i32 %55, 2
  %57 = call i32 @saa_andorl(i32 %56, i32 262144, i32 0)
  br label %256

58:                                               ; preds = %1
  %59 = load i32, i32* @SAA7134_GPIO_GPMODE1, align 4
  %60 = call i32 @saa_writeb(i32 %59, i32 128)
  %61 = load i32, i32* @SAA7134_GPIO_GPSTATUS1, align 4
  %62 = call i32 @saa_writeb(i32 %61, i32 128)
  br label %256

63:                                               ; preds = %1
  %64 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %65 = ashr i32 %64, 2
  %66 = call i32 @saa_andorl(i32 %65, i32 262144, i32 262144)
  %67 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %68 = ashr i32 %67, 2
  %69 = call i32 @saa_andorl(i32 %68, i32 262144, i32 4)
  br label %256

70:                                               ; preds = %1
  %71 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %72 = call i32 @saa_writeb(i32 %71, i32 8)
  %73 = load i32, i32* @SAA7134_GPIO_GPSTATUS3, align 4
  %74 = call i32 @saa_writeb(i32 %73, i32 6)
  br label %256

75:                                               ; preds = %1, %1
  %76 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %77 = ashr i32 %76, 2
  %78 = call i32 @saa_andorl(i32 %77, i32 134217728, i32 134217728)
  %79 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %80 = ashr i32 %79, 2
  %81 = call i32 @saa_andorl(i32 %80, i32 134217728, i32 0)
  br label %256

82:                                               ; preds = %1, %1
  %83 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %84 = ashr i32 %83, 2
  %85 = call i32 @saa_andorl(i32 %84, i32 -1, i32 0)
  %86 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %87 = ashr i32 %86, 2
  %88 = call i32 @saa_andorl(i32 %87, i32 -1, i32 0)
  %89 = call i32 @msleep(i32 10)
  %90 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %91 = ashr i32 %90, 2
  %92 = call i32 @saa_andorl(i32 %91, i32 -1, i32 -1)
  %93 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %94 = ashr i32 %93, 2
  %95 = call i32 @saa_andorl(i32 %94, i32 -1, i32 -1)
  %96 = call i32 @msleep(i32 10)
  br label %256

97:                                               ; preds = %1
  %98 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %99 = ashr i32 %98, 2
  %100 = call i32 @saa_andorl(i32 %99, i32 138412032, i32 138412032)
  %101 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %102 = ashr i32 %101, 2
  %103 = call i32 @saa_andorl(i32 %102, i32 138412032, i32 0)
  %104 = call i32 @msleep(i32 10)
  %105 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %106 = ashr i32 %105, 2
  %107 = call i32 @saa_andorl(i32 %106, i32 138412032, i32 138412032)
  %108 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %109 = ashr i32 %108, 2
  %110 = call i32 @saa_andorl(i32 %109, i32 138412032, i32 138412032)
  %111 = call i32 @msleep(i32 10)
  %112 = load i8*, i8** @SAA7134_REMOTE_I2C, align 8
  %113 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %114 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  br label %256

115:                                              ; preds = %1
  %116 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %117 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %116, i32 23, i32 0)
  %118 = call i32 @msleep(i32 10)
  %119 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %120 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %119, i32 23, i32 1)
  %121 = load i8*, i8** @SAA7134_REMOTE_I2C, align 8
  %122 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %123 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %256

124:                                              ; preds = %1
  %125 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %126 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %125, i32 23, i32 0)
  %127 = call i32 @msleep(i32 10)
  %128 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %129 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %128, i32 23, i32 1)
  br label %256

130:                                              ; preds = %1
  %131 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %132 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %131, i32 21, i32 0)
  %133 = call i32 @msleep(i32 10)
  %134 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %135 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %134, i32 21, i32 1)
  %136 = call i32 @msleep(i32 1)
  %137 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %138 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %139 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %256

140:                                              ; preds = %1
  %141 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %142 = ashr i32 %141, 2
  %143 = call i32 @saa_andorl(i32 %142, i32 688132, i32 688132)
  %144 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %145 = ashr i32 %144, 2
  %146 = call i32 @saa_andorl(i32 %145, i32 688132, i32 0)
  %147 = call i32 @msleep(i32 10)
  %148 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %149 = ashr i32 %148, 2
  %150 = call i32 @saa_andorl(i32 %149, i32 688132, i32 688132)
  %151 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %152 = ashr i32 %151, 2
  %153 = call i32 @saa_andorl(i32 %152, i32 688132, i32 688132)
  %154 = call i32 @msleep(i32 10)
  %155 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %156 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %157 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %256

158:                                              ; preds = %1
  %159 = load i32, i32* @SAA7134_PRODUCTION_TEST_MODE, align 4
  %160 = call i32 @saa_writeb(i32 %159, i32 0)
  br label %256

161:                                              ; preds = %1, %1
  %162 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %163 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %164 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %166 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %165, i32 26, i32 0)
  %167 = call i32 @msleep(i32 1)
  %168 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %169 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %168, i32 22, i32 0)
  %170 = call i32 @msleep(i32 10)
  %171 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %172 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %171, i32 22, i32 1)
  br label %256

173:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %174 = load i8*, i8** @SAA7134_REMOTE_I2C, align 8
  %175 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %176 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %256

177:                                              ; preds = %1
  %178 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %179 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %182 = call i32 @card(%struct.saa7134_dev* %181)
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %187 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %190 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.2, i64 0, i64 0), i32 %180, i32 %185, i32 %188, i32 %191)
  br label %256

193:                                              ; preds = %1
  %194 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %195 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %196 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %198 = ashr i32 %197, 2
  %199 = call i32 @saa_andorl(i32 %198, i32 -1945894905, i32 -1945894905)
  %200 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %201 = ashr i32 %200, 2
  %202 = call i32 @saa_andorl(i32 %201, i32 201328589, i32 201328589)
  br label %256

203:                                              ; preds = %1, %1
  %204 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %205 = ashr i32 %204, 2
  %206 = call i32 @saa_andorl(i32 %205, i32 -2147221248, i32 -2147221248)
  %207 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %208 = ashr i32 %207, 2
  %209 = call i32 @saa_andorl(i32 %208, i32 -2147221248, i32 262400)
  br label %256

210:                                              ; preds = %1
  %211 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %212 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %211, i32 12, i32 3)
  %213 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %214 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %213, i32 13, i32 3)
  %215 = load i8*, i8** @SAA7134_REMOTE_I2C, align 8
  %216 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %217 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  %218 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %219 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %218, i32 23, i32 1)
  br label %256

220:                                              ; preds = %1
  %221 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %222 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %223 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %225 = ashr i32 %224, 2
  %226 = call i32 @saa_andorl(i32 %225, i32 49152, i32 49152)
  %227 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %228 = ashr i32 %227, 2
  %229 = call i32 @saa_andorl(i32 %228, i32 49152, i32 49152)
  br label %256

230:                                              ; preds = %1
  %231 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %232 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %231, i32 1, i32 1)
  %233 = call i32 @msleep(i32 10)
  %234 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %235 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %234, i32 1, i32 0)
  %236 = call i32 @msleep(i32 10)
  %237 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %238 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %237, i32 1, i32 1)
  %239 = load i8*, i8** @SAA7134_REMOTE_GPIO, align 8
  %240 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %241 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %240, i32 0, i32 1
  store i8* %239, i8** %241, align 8
  br label %256

242:                                              ; preds = %1
  %243 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %244 = ashr i32 %243, 2
  %245 = call i32 @saa_andorl(i32 %244, i32 235208704, i32 201654272)
  %246 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %247 = ashr i32 %246, 2
  %248 = call i32 @saa_andorl(i32 %247, i32 235208704, i32 201654272)
  br label %256

249:                                              ; preds = %1
  %250 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %251 = ashr i32 %250, 2
  %252 = call i32 @saa_andorl(i32 %251, i32 32768, i32 32768)
  %253 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %254 = ashr i32 %253, 2
  %255 = call i32 @saa_andorl(i32 %254, i32 32768, i32 32768)
  br label %256

256:                                              ; preds = %1, %249, %242, %230, %220, %210, %203, %193, %177, %173, %161, %158, %140, %130, %124, %115, %97, %82, %75, %70, %63, %58, %51, %40, %32, %28, %22
  ret i32 0
}

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @board_flyvideo(%struct.saa7134_dev*) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @saa7134_set_gpio(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @card(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
