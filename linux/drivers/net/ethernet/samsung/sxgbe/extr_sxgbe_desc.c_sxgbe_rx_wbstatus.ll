; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_desc.c_sxgbe_rx_wbstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_desc.c_sxgbe_rx_wbstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_rx_norm_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid Error type\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid L2 Packet type\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid L3/L4 Packet type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_rx_norm_desc*, %struct.sxgbe_extra_stats*, i32*)* @sxgbe_rx_wbstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_rx_wbstatus(%struct.sxgbe_rx_norm_desc* %0, %struct.sxgbe_extra_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.sxgbe_rx_norm_desc*, align 8
  %5 = alloca %struct.sxgbe_extra_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sxgbe_rx_norm_desc* %0, %struct.sxgbe_rx_norm_desc** %4, align 8
  store %struct.sxgbe_extra_stats* %1, %struct.sxgbe_extra_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %11 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %74

16:                                               ; preds = %3
  %17 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %18 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %71 [
    i32 147, label %22
    i32 128, label %29
    i32 155, label %36
    i32 148, label %43
    i32 138, label %50
    i32 131, label %57
    i32 132, label %64
  ]

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %26 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %25, i32 0, i32 33
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %73

29:                                               ; preds = %16
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %33 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %32, i32 0, i32 32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %73

36:                                               ; preds = %16
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %40 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %39, i32 0, i32 31
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %73

43:                                               ; preds = %16
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  %46 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %47 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %46, i32 0, i32 30
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %73

50:                                               ; preds = %16
  %51 = load i32, i32* @CHECKSUM_NONE, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %54 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %53, i32 0, i32 29
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %73

57:                                               ; preds = %16
  %58 = load i32, i32* @CHECKSUM_NONE, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %61 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %60, i32 0, i32 28
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %73

64:                                               ; preds = %16
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %68 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %67, i32 0, i32 27
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %73

71:                                               ; preds = %16
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64, %57, %50, %43, %36, %29, %22
  br label %148

74:                                               ; preds = %3
  %75 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %76 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %145 [
    i32 137, label %80
    i32 136, label %85
    i32 153, label %90
    i32 156, label %95
    i32 134, label %100
    i32 129, label %105
    i32 133, label %110
    i32 130, label %115
    i32 154, label %120
    i32 152, label %125
    i32 149, label %130
    i32 150, label %135
    i32 151, label %140
  ]

80:                                               ; preds = %74
  %81 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %82 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %81, i32 0, i32 26
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %147

85:                                               ; preds = %74
  %86 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %87 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %86, i32 0, i32 25
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %147

90:                                               ; preds = %74
  %91 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %92 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %91, i32 0, i32 24
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %147

95:                                               ; preds = %74
  %96 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %97 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %96, i32 0, i32 23
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %147

100:                                              ; preds = %74
  %101 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %102 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %101, i32 0, i32 22
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %147

105:                                              ; preds = %74
  %106 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %107 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %106, i32 0, i32 21
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %147

110:                                              ; preds = %74
  %111 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %112 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %111, i32 0, i32 20
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %147

115:                                              ; preds = %74
  %116 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %117 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %116, i32 0, i32 19
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %147

120:                                              ; preds = %74
  %121 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %122 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %121, i32 0, i32 18
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %147

125:                                              ; preds = %74
  %126 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %127 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %126, i32 0, i32 15
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %147

130:                                              ; preds = %74
  %131 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %132 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %131, i32 0, i32 17
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %147

135:                                              ; preds = %74
  %136 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %137 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %136, i32 0, i32 16
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %147

140:                                              ; preds = %74
  %141 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %142 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %147

145:                                              ; preds = %74
  %146 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80
  br label %148

148:                                              ; preds = %147, %73
  %149 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %150 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %199 [
    i32 135, label %154
    i32 145, label %159
    i32 144, label %164
    i32 146, label %169
    i32 143, label %174
    i32 141, label %179
    i32 140, label %184
    i32 142, label %189
    i32 139, label %194
  ]

154:                                              ; preds = %148
  %155 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %156 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %201

159:                                              ; preds = %148
  %160 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %161 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %160, i32 0, i32 13
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %201

164:                                              ; preds = %148
  %165 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %166 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %201

169:                                              ; preds = %148
  %170 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %171 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %170, i32 0, i32 11
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %201

174:                                              ; preds = %148
  %175 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %176 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %201

179:                                              ; preds = %148
  %180 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %181 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %201

184:                                              ; preds = %148
  %185 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %186 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %201

189:                                              ; preds = %148
  %190 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %191 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  br label %201

194:                                              ; preds = %148
  %195 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %196 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  br label %201

199:                                              ; preds = %148
  %200 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %194, %189, %184, %179, %174, %169, %164, %159, %154
  %202 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %203 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %201
  %209 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %210 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %208, %201
  %214 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %215 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  %223 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %224 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %220, %213
  %228 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %229 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %227
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %7, align 4
  %237 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %238 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %234, %227
  %242 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %243 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %241
  %249 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %250 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %248, %241
  %254 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %255 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %262 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %260, %253
  %266 = load %struct.sxgbe_rx_norm_desc*, %struct.sxgbe_rx_norm_desc** %4, align 8
  %267 = getelementptr inbounds %struct.sxgbe_rx_norm_desc, %struct.sxgbe_rx_norm_desc* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %5, align 8
  %274 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %272, %265
  %278 = load i32, i32* %7, align 4
  ret i32 %278
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
