; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_sram_channel_dump_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_sram_channel_dump_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32*, i32 }
%struct.sram_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cx25821_sram_channel_dump_audio.name = internal constant [14 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"init risc lo\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"init risc hi\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cdt base\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cdt size\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iq base\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"iq size\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"risc pc lo\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"risc pc hi\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"iq wr ptr\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"iq rd ptr\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cdt current\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"pci target lo\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"pci target hi\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"line / byte\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\0A%s: %s - dma Audio channel status dump\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"%s: cmds + 0x%2x:   %-15s: 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"cmds + 0x%2x:   risc%d: \00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ctrl + 0x%2x (0x%08x): iq %x: \00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"ctrl + 0x%2x :   iq %x: 0x%08x [ arg #%d ]\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"        :   fifo: 0x%08x -> 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"        :   ctrl: 0x%08x -> 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"        :   ptr1_reg: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"        :   ptr2_reg: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"        :   cnt1_reg: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"        :   cnt2_reg: 0x%08x\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"instruction %d = 0x%x\0A\00", align 1
@AUD_A_CDT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"\0Aread cdt loc=0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"0x%x \00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@CLK_RST = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c" CLK_RST = 0x%x\0A\0A\00", align 1
@PLL_A_POST_STAT_BIST = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [31 x i8] c" PLL_A_POST_STAT_BIST = 0x%x\0A\0A\00", align 1
@PLL_A_INT_FRAC = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [25 x i8] c" PLL_A_INT_FRAC = 0x%x\0A\0A\00", align 1
@PLL_B_POST_STAT_BIST = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [31 x i8] c" PLL_B_POST_STAT_BIST = 0x%x\0A\0A\00", align 1
@PLL_B_INT_FRAC = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [25 x i8] c" PLL_B_INT_FRAC = 0x%x\0A\0A\00", align 1
@PLL_C_POST_STAT_BIST = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [31 x i8] c" PLL_C_POST_STAT_BIST = 0x%x\0A\0A\00", align 1
@PLL_C_INT_FRAC = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [25 x i8] c" PLL_C_INT_FRAC = 0x%x\0A\0A\00", align 1
@PLL_D_POST_STAT_BIST = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [31 x i8] c" PLL_D_POST_STAT_BIST = 0x%x\0A\0A\00", align 1
@PLL_D_INT_FRAC = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [25 x i8] c" PLL_D_INT_FRAC = 0x%x\0A\0A\00", align 1
@AFE_AB_DIAG_CTRL = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [40 x i8] c" AFE_AB_DIAG_CTRL (0x10900090) = 0x%x\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_sram_channel_dump_audio(%struct.cx25821_dev* %0, %struct.sram_channel* %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca %struct.sram_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %4, align 8
  %11 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %15 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %13, i32 %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @cx25821_sram_channel_dump_audio.name, i64 0, i64 0))
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 %26, 4
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [14 x i8*], [14 x i8*]* @cx25821_sram_channel_dump_audio.name, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %33 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul i32 4, %35
  %37 = add i32 %34, %36
  %38 = call i32 @cx_read(i32 %37)
  %39 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %25, i32 %27, i8* %31, i32 %38)
  br label %40

40:                                               ; preds = %22
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load i32, i32* %8, align 4
  %45 = mul i32 %44, 4
  store i32 %45, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %49, %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %51 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 14
  %55 = mul i32 4, %54
  %56 = add i32 %52, %55
  %57 = call i32 @cx_read(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul i32 %59, 4
  %61 = add i32 %58, %60
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @cx25821_risc_decode(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %46

68:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %120, %68
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %70, 16
  br i1 %71, label %72, label %124

72:                                               ; preds = %69
  %73 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %74 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul i32 4, %76
  %78 = add i32 %75, %77
  %79 = call i32 @cx_read(i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %8, align 4
  %81 = mul i32 %80, 4
  %82 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %83 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = mul i32 4, %85
  %87 = add i32 %84, %86
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %81, i32 %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @cx25821_risc_decode(i32 %90)
  store i32 %91, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %116, %72
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %98 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %100, %101
  %103 = mul i32 4, %102
  %104 = add i32 %99, %103
  %105 = call i32 @cx_read(i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %106, %107
  %109 = mul i32 4, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %109, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %96
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %92

119:                                              ; preds = %92
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %69

124:                                              ; preds = %69
  %125 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %126 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %129 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %132 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %130, %133
  %135 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %127, i32 %134)
  %136 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %137 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %140 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 96
  %143 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %138, i32 %142)
  %144 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %145 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @cx_read(i32 %146)
  %148 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %147)
  %149 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %150 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cx_read(i32 %151)
  %153 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i32 %152)
  %154 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %155 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @cx_read(i32 %156)
  %158 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 %157)
  %159 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %160 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @cx_read(i32 %161)
  %163 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %162)
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %179, %124
  %165 = load i32, i32* %8, align 4
  %166 = icmp ult i32 %165, 4
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %169 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 56
  %172 = load i32, i32* %8, align 4
  %173 = mul i32 %172, 4
  %174 = add i32 %171, %173
  %175 = call i32 @cx_read(i32 %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %167
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %164

182:                                              ; preds = %164
  %183 = load i32, i32* @AUD_A_CDT, align 4
  %184 = call i32 @cx_read(i32 %183)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 %185)
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %198, %182
  %188 = load i32, i32* %8, align 4
  %189 = icmp ult i32 %188, 8
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %8, align 4
  %193 = mul i32 %192, 4
  %194 = add i32 %191, %193
  %195 = call i32 @cx_read(i32 %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %8, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %187

201:                                              ; preds = %187
  %202 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %203 = load i32, i32* @CLK_RST, align 4
  %204 = call i32 @cx_read(i32 %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @PLL_A_POST_STAT_BIST, align 4
  %208 = call i32 @cx_read(i32 %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @PLL_A_INT_FRAC, align 4
  %212 = call i32 @cx_read(i32 %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @PLL_B_POST_STAT_BIST, align 4
  %216 = call i32 @cx_read(i32 %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @PLL_B_INT_FRAC, align 4
  %220 = call i32 @cx_read(i32 %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* @PLL_C_POST_STAT_BIST, align 4
  %224 = call i32 @cx_read(i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* @PLL_C_INT_FRAC, align 4
  %228 = call i32 @cx_read(i32 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @PLL_D_POST_STAT_BIST, align 4
  %232 = call i32 @cx_read(i32 %231)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @PLL_D_INT_FRAC, align 4
  %236 = call i32 @cx_read(i32 %235)
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i32 %237)
  %239 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %240 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* @AFE_AB_DIAG_CTRL, align 4
  %244 = call i32 @cx25821_i2c_read(i32* %242, i32 %243, i32* %7)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @CX25821_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i32 %245)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @cx25821_risc_decode(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @CX25821_INFO(i8*, i32) #1

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
