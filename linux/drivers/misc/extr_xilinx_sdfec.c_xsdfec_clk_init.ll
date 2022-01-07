; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xsdfec_clks = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [9 x i8] c"core_clk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get core_clk\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"s_axi_aclk\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get axi_clk\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"s_axis_din_words_aclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"s_axis_din_aclk\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"m_axis_dout_aclk\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"s_axis_dout_words_aclk\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"s_axis_ctrl_aclk\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"m_axis_status_aclk\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to enable core_clk (%d)\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to enable axi_clk (%d)\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"failed to enable din_clk (%d)\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"failed to enable din_words_clk (%d)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"failed to enable dout_clk (%d)\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"failed to enable dout_words_clk (%d)\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to enable ctrl_clk (%d)\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"failed to enable status_clk (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.xsdfec_clks*)* @xsdfec_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_clk_init(%struct.platform_device* %0, %struct.xsdfec_clks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.xsdfec_clks*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.xsdfec_clks* %1, %struct.xsdfec_clks** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i8* @devm_clk_get(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %12 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %14 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @IS_ERR(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %23 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @PTR_ERR(i32* %24)
  store i32 %25, i32* %3, align 4
  br label %355

26:                                               ; preds = %2
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i8* @devm_clk_get(i32* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %32 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %34 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %43 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %3, align 4
  br label %355

46:                                               ; preds = %26
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i8* @devm_clk_get(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %52 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %54 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @IS_ERR(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %46
  %59 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %60 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %68 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %355

72:                                               ; preds = %58
  %73 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %74 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %72, %46
  %76 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i8* @devm_clk_get(i32* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %81 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %83 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @IS_ERR(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %75
  %88 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %89 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %97 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @PTR_ERR(i32* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %355

101:                                              ; preds = %87
  %102 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %103 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %75
  %105 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i8* @devm_clk_get(i32* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %110 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %112 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @IS_ERR(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %104
  %117 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %118 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @PTR_ERR(i32* %119)
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %126 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @PTR_ERR(i32* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %355

130:                                              ; preds = %116
  %131 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %132 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %131, i32 0, i32 4
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %130, %104
  %134 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i8* @devm_clk_get(i32* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %139 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %138, i32 0, i32 5
  store i32* %137, i32** %139, align 8
  %140 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %141 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @IS_ERR(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %133
  %146 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %147 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @PTR_ERR(i32* %148)
  %150 = load i32, i32* @ENOENT, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %145
  %154 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %155 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %154, i32 0, i32 5
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @PTR_ERR(i32* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %3, align 4
  br label %355

159:                                              ; preds = %145
  %160 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %161 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %160, i32 0, i32 5
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %159, %133
  %163 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i8* @devm_clk_get(i32* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %166 = bitcast i8* %165 to i32*
  %167 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %168 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %167, i32 0, i32 6
  store i32* %166, i32** %168, align 8
  %169 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %170 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %169, i32 0, i32 6
  %171 = load i32*, i32** %170, align 8
  %172 = call i64 @IS_ERR(i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %162
  %175 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %176 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @PTR_ERR(i32* %177)
  %179 = load i32, i32* @ENOENT, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp ne i32 %178, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %184 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %183, i32 0, i32 6
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @PTR_ERR(i32* %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %355

188:                                              ; preds = %174
  %189 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %190 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %189, i32 0, i32 6
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %188, %162
  %192 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = call i8* @devm_clk_get(i32* %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %195 = bitcast i8* %194 to i32*
  %196 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %197 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %196, i32 0, i32 7
  store i32* %195, i32** %197, align 8
  %198 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %199 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @IS_ERR(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %191
  %204 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %205 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %204, i32 0, i32 7
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @PTR_ERR(i32* %206)
  %208 = load i32, i32* @ENOENT, align 4
  %209 = sub nsw i32 0, %208
  %210 = icmp ne i32 %207, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %203
  %212 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %213 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %212, i32 0, i32 7
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @PTR_ERR(i32* %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %3, align 4
  br label %355

217:                                              ; preds = %203
  %218 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %219 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %218, i32 0, i32 7
  store i32* null, i32** %219, align 8
  br label %220

220:                                              ; preds = %217, %191
  %221 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %222 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @clk_prepare_enable(i32* %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %220
  %228 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = load i32, i32* %6, align 4
  %231 = call i32 (i32*, i8*, ...) @dev_err(i32* %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %3, align 4
  br label %355

233:                                              ; preds = %220
  %234 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %235 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 @clk_prepare_enable(i32* %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = load i32, i32* %6, align 4
  %244 = call i32 (i32*, i8*, ...) @dev_err(i32* %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %243)
  br label %349

245:                                              ; preds = %233
  %246 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %247 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @clk_prepare_enable(i32* %248)
  store i32 %249, i32* %6, align 4
  %250 = load i32, i32* %6, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %245
  %253 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 0
  %255 = load i32, i32* %6, align 4
  %256 = call i32 (i32*, i8*, ...) @dev_err(i32* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %255)
  br label %344

257:                                              ; preds = %245
  %258 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %259 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @clk_prepare_enable(i32* %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %257
  %265 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 0
  %267 = load i32, i32* %6, align 4
  %268 = call i32 (i32*, i8*, ...) @dev_err(i32* %266, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %267)
  br label %339

269:                                              ; preds = %257
  %270 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %271 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @clk_prepare_enable(i32* %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %269
  %277 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %278 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %277, i32 0, i32 0
  %279 = load i32, i32* %6, align 4
  %280 = call i32 (i32*, i8*, ...) @dev_err(i32* %278, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %279)
  br label %334

281:                                              ; preds = %269
  %282 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %283 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %282, i32 0, i32 5
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @clk_prepare_enable(i32* %284)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %281
  %289 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = load i32, i32* %6, align 4
  %292 = call i32 (i32*, i8*, ...) @dev_err(i32* %290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %291)
  br label %329

293:                                              ; preds = %281
  %294 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %295 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = call i32 @clk_prepare_enable(i32* %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %293
  %301 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %302 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %301, i32 0, i32 0
  %303 = load i32, i32* %6, align 4
  %304 = call i32 (i32*, i8*, ...) @dev_err(i32* %302, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %303)
  br label %324

305:                                              ; preds = %293
  %306 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %307 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %306, i32 0, i32 7
  %308 = load i32*, i32** %307, align 8
  %309 = call i32 @clk_prepare_enable(i32* %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %6, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %305
  %313 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %314 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %313, i32 0, i32 0
  %315 = load i32, i32* %6, align 4
  %316 = call i32 (i32*, i8*, ...) @dev_err(i32* %314, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %315)
  br label %319

317:                                              ; preds = %305
  %318 = load i32, i32* %6, align 4
  store i32 %318, i32* %3, align 4
  br label %355

319:                                              ; preds = %312
  %320 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %321 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %320, i32 0, i32 6
  %322 = load i32*, i32** %321, align 8
  %323 = call i32 @clk_disable_unprepare(i32* %322)
  br label %324

324:                                              ; preds = %319, %300
  %325 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %326 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %325, i32 0, i32 5
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @clk_disable_unprepare(i32* %327)
  br label %329

329:                                              ; preds = %324, %288
  %330 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %331 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %330, i32 0, i32 4
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @clk_disable_unprepare(i32* %332)
  br label %334

334:                                              ; preds = %329, %276
  %335 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %336 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = call i32 @clk_disable_unprepare(i32* %337)
  br label %339

339:                                              ; preds = %334, %264
  %340 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %341 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = call i32 @clk_disable_unprepare(i32* %342)
  br label %344

344:                                              ; preds = %339, %252
  %345 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %346 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = call i32 @clk_disable_unprepare(i32* %347)
  br label %349

349:                                              ; preds = %344, %240
  %350 = load %struct.xsdfec_clks*, %struct.xsdfec_clks** %5, align 8
  %351 = getelementptr inbounds %struct.xsdfec_clks, %struct.xsdfec_clks* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @clk_disable_unprepare(i32* %352)
  %354 = load i32, i32* %6, align 4
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %349, %317, %227, %211, %182, %153, %124, %95, %66, %38, %18
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
