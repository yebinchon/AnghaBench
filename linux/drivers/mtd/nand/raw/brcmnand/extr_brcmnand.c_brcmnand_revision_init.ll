; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_revision_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_revision_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_controller = type { i32, i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@brcmnand_revision_init.block_sizes_v6 = internal constant [8 x i32] [i32 8, i32 16, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 0], align 16
@brcmnand_revision_init.block_sizes_v4 = internal constant [8 x i32] [i32 16, i32 128, i32 8, i32 512, i32 256, i32 1024, i32 2048, i32 0], align 16
@brcmnand_revision_init.page_sizes = internal constant [5 x i32] [i32 512, i32 2048, i32 4096, i32 8192, i32 0], align 16
@.str = private unnamed_addr constant [27 x i8] c"version %#x not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@brcmnand_regs_v72 = common dso_local global i32 0, align 4
@brcmnand_regs_v71 = common dso_local global i32 0, align 4
@brcmnand_regs_v60 = common dso_local global i32 0, align 4
@brcmnand_regs_v50 = common dso_local global i32 0, align 4
@brcmnand_regs_v40 = common dso_local global i32 0, align 4
@brcmnand_cs_offsets_v71 = common dso_local global i32 0, align 4
@brcmnand_cs_offsets = common dso_local global i32 0, align 4
@brcmnand_cs_offsets_cs0 = common dso_local global i32 0, align 4
@BRCMNAND_HAS_PREFETCH = common dso_local global i32 0, align 4
@BRCMNAND_HAS_CACHE_MODE = common dso_local global i32 0, align 4
@BRCMNAND_HAS_1K_SECTORS = common dso_local global i32 0, align 4
@BRCMNAND_HAS_WP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"brcm,nand-has-wp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_controller*)* @brcmnand_revision_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_revision_init(%struct.brcmnand_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmnand_controller*, align 8
  store %struct.brcmnand_controller* %0, %struct.brcmnand_controller** %3, align 8
  %4 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %5 = call i32 @nand_readreg(%struct.brcmnand_controller* %4, i32 0)
  %6 = and i32 %5, 65535
  %7 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %8 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %10 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1024
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %15 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %14, i32 0, i32 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %18 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(%struct.TYPE_2__* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %233

23:                                               ; preds = %1
  %24 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %25 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 1794
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @brcmnand_regs_v72, align 4
  %30 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %31 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 8
  br label %72

32:                                               ; preds = %23
  %33 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %34 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1793
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @brcmnand_regs_v71, align 4
  %39 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %40 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 8
  br label %71

41:                                               ; preds = %32
  %42 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %43 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 1536
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @brcmnand_regs_v60, align 4
  %48 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %49 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 8
  br label %70

50:                                               ; preds = %41
  %51 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %52 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 1280
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @brcmnand_regs_v50, align 4
  %57 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %58 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 8
  br label %69

59:                                               ; preds = %50
  %60 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %61 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 1024
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @brcmnand_regs_v40, align 4
  %66 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %67 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %28
  %73 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %74 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %75, 1793
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %79 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %78, i32 0, i32 1
  store i32 20, i32* %79, align 4
  br label %83

80:                                               ; preds = %72
  %81 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %82 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %81, i32 0, i32 1
  store i32 16, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %85 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 1793
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @brcmnand_cs_offsets_v71, align 4
  %90 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %91 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  br label %105

92:                                               ; preds = %83
  %93 = load i32, i32* @brcmnand_cs_offsets, align 4
  %94 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %95 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %97 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sle i32 %98, 1280
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* @brcmnand_cs_offsets_cs0, align 4
  %102 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %103 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %92
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %107 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 1793
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %112 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %111, i32 0, i32 2
  store i32 16384, i32* %112, align 8
  %113 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %114 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %113, i32 0, i32 3
  store i32 2097152, i32* %114, align 4
  br label %139

115:                                              ; preds = %105
  %116 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %117 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %116, i32 0, i32 4
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @brcmnand_revision_init.page_sizes, i64 0, i64 0), i32** %117, align 8
  %118 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %119 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %120, 1536
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %124 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %123, i32 0, i32 5
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @brcmnand_revision_init.block_sizes_v6, i64 0, i64 0), i32** %124, align 8
  br label %128

125:                                              ; preds = %115
  %126 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %127 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %126, i32 0, i32 5
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @brcmnand_revision_init.block_sizes_v4, i64 0, i64 0), i32** %127, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %130 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %131, 1024
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %135 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %134, i32 0, i32 2
  store i32 4096, i32* %135, align 8
  %136 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %137 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %136, i32 0, i32 3
  store i32 524288, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %110
  %140 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %141 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1794
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %146 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %145, i32 0, i32 6
  store i32 128, i32* %146, align 8
  br label %168

147:                                              ; preds = %139
  %148 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %149 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sge i32 %150, 1536
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %154 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %153, i32 0, i32 6
  store i32 64, i32* %154, align 8
  br label %167

155:                                              ; preds = %147
  %156 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %157 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %158, 1280
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %162 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %161, i32 0, i32 6
  store i32 32, i32* %162, align 8
  br label %166

163:                                              ; preds = %155
  %164 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %165 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %164, i32 0, i32 6
  store i32 16, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %144
  %169 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %170 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %171, 1536
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %175 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 1537
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32, i32* @BRCMNAND_HAS_PREFETCH, align 4
  %180 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %181 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %173, %168
  %185 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %186 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp sge i32 %187, 1792
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i32, i32* @BRCMNAND_HAS_CACHE_MODE, align 4
  %191 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %192 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %184
  %196 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %197 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %198, 1280
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* @BRCMNAND_HAS_1K_SECTORS, align 4
  %202 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %203 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %195
  %207 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %208 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp sge i32 %209, 1792
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i32, i32* @BRCMNAND_HAS_WP, align 4
  %213 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %214 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %232

217:                                              ; preds = %206
  %218 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %219 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %218, i32 0, i32 8
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @of_property_read_bool(i32 %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %217
  %226 = load i32, i32* @BRCMNAND_HAS_WP, align 4
  %227 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %3, align 8
  %228 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %225, %217
  br label %232

232:                                              ; preds = %231, %211
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %232, %13
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @nand_readreg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
