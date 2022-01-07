; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_calc_nrssi_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_calc_nrssi_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_calc_nrssi_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_calc_nrssi_offset(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  store %struct.b43_phy* %9, %struct.b43_phy** %3, align 8
  %10 = bitcast [20 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 80, i1 false)
  store i32 65535, i32* %7, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = call i32 @b43_phy_read(%struct.b43_wldev* %11, i32 1)
  %13 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = call i32 @b43_phy_read(%struct.b43_wldev* %14, i32 2065)
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i32 @b43_phy_read(%struct.b43_wldev* %17, i32 2066)
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = call i32 @b43_phy_read(%struct.b43_wldev* %25, i32 2068)
  %27 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_phy_read(%struct.b43_wldev* %28, i32 2069)
  %30 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 4
  store i32 %29, i32* %30, align 16
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_phy_read(%struct.b43_wldev* %32, i32 90)
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = call i32 @b43_phy_read(%struct.b43_wldev* %35, i32 89)
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 6
  store i32 %36, i32* %37, align 8
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_phy_read(%struct.b43_wldev* %38, i32 88)
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 7
  store i32 %39, i32* %40, align 4
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @b43_phy_read(%struct.b43_wldev* %41, i32 10)
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 8
  store i32 %42, i32* %43, align 16
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = call i32 @b43_phy_read(%struct.b43_wldev* %44, i32 3)
  %46 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 9
  store i32 %45, i32* %46, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = call i32 @b43_radio_read16(%struct.b43_wldev* %47, i32 122)
  %49 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 10
  store i32 %48, i32* %49, align 8
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 @b43_radio_read16(%struct.b43_wldev* %50, i32 67)
  %52 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 11
  store i32 %51, i32* %52, align 4
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @b43_phy_mask(%struct.b43_wldev* %53, i32 1065, i32 32767)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_phy_maskset(%struct.b43_wldev* %55, i32 1, i32 16383, i32 16384)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @b43_phy_set(%struct.b43_wldev* %57, i32 2065, i32 12)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = call i32 @b43_phy_maskset(%struct.b43_wldev* %59, i32 2066, i32 65523, i32 4)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @b43_phy_mask(%struct.b43_wldev* %61, i32 2050, i32 -4)
  %63 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %64 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 6
  br i1 %66, label %67, label %108

67:                                               ; preds = %31
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_phy_read(%struct.b43_wldev* %68, i32 46)
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 12
  store i32 %69, i32* %70, align 16
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @b43_phy_read(%struct.b43_wldev* %71, i32 47)
  %73 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 13
  store i32 %72, i32* %73, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = call i32 @b43_phy_read(%struct.b43_wldev* %74, i32 2063)
  %76 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 14
  store i32 %75, i32* %76, align 8
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @b43_phy_read(%struct.b43_wldev* %77, i32 2064)
  %79 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 15
  store i32 %78, i32* %79, align 4
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @b43_phy_read(%struct.b43_wldev* %80, i32 2049)
  %82 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 16
  store i32 %81, i32* %82, align 16
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @b43_phy_read(%struct.b43_wldev* %83, i32 96)
  %85 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 17
  store i32 %84, i32* %85, align 4
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = call i32 @b43_phy_read(%struct.b43_wldev* %86, i32 20)
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 18
  store i32 %87, i32* %88, align 8
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @b43_phy_read(%struct.b43_wldev* %89, i32 1144)
  %91 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 19
  store i32 %90, i32* %91, align 4
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = call i32 @b43_phy_write(%struct.b43_wldev* %92, i32 46, i32 0)
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %95 = call i32 @b43_phy_write(%struct.b43_wldev* %94, i32 47, i32 0)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = call i32 @b43_phy_write(%struct.b43_wldev* %96, i32 2063, i32 0)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = call i32 @b43_phy_write(%struct.b43_wldev* %98, i32 2064, i32 0)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = call i32 @b43_phy_set(%struct.b43_wldev* %100, i32 1144, i32 256)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = call i32 @b43_phy_set(%struct.b43_wldev* %102, i32 2049, i32 64)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = call i32 @b43_phy_set(%struct.b43_wldev* %104, i32 96, i32 64)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = call i32 @b43_phy_set(%struct.b43_wldev* %106, i32 20, i32 512)
  br label %108

108:                                              ; preds = %67, %31
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = call i32 @b43_radio_set(%struct.b43_wldev* %109, i32 122, i32 112)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = call i32 @b43_radio_set(%struct.b43_wldev* %111, i32 122, i32 128)
  %113 = call i32 @udelay(i32 30)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = call i32 @b43_phy_read(%struct.b43_wldev* %114, i32 1151)
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 63
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp sge i32 %118, 32
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 64
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %108
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 31
  br i1 %125, label %126, label %161

126:                                              ; preds = %123
  store i32 7, i32* %6, align 4
  br label %127

127:                                              ; preds = %153, %126
  %128 = load i32, i32* %6, align 4
  %129 = icmp sge i32 %128, 4
  br i1 %129, label %130, label %156

130:                                              ; preds = %127
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @b43_radio_write16(%struct.b43_wldev* %131, i32 123, i32 %132)
  %134 = call i32 @udelay(i32 20)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = call i32 @b43_phy_read(%struct.b43_wldev* %135, i32 1151)
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 63
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp sge i32 %139, 32
  br i1 %140, label %141, label %144

141:                                              ; preds = %130
  %142 = load i32, i32* %5, align 4
  %143 = sub nsw i32 %142, 64
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %141, %130
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 31
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 65535
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %150, %147, %144
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %6, align 4
  br label %127

156:                                              ; preds = %127
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 65535
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 4, i32* %7, align 4
  br label %160

160:                                              ; preds = %159, %156
  br label %267

161:                                              ; preds = %123
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = call i32 @b43_radio_mask(%struct.b43_wldev* %162, i32 122, i32 127)
  %164 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %165 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %170 = call i32 @b43_phy_set(%struct.b43_wldev* %169, i32 2068, i32 1)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = call i32 @b43_phy_mask(%struct.b43_wldev* %171, i32 2069, i32 65534)
  br label %173

173:                                              ; preds = %168, %161
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = call i32 @b43_phy_set(%struct.b43_wldev* %174, i32 2065, i32 12)
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %177 = call i32 @b43_phy_set(%struct.b43_wldev* %176, i32 2066, i32 12)
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = call i32 @b43_phy_set(%struct.b43_wldev* %178, i32 2065, i32 48)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = call i32 @b43_phy_set(%struct.b43_wldev* %180, i32 2066, i32 48)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %183 = call i32 @b43_phy_write(%struct.b43_wldev* %182, i32 90, i32 1152)
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = call i32 @b43_phy_write(%struct.b43_wldev* %184, i32 89, i32 2064)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = call i32 @b43_phy_write(%struct.b43_wldev* %186, i32 88, i32 13)
  %188 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %189 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %173
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %194 = call i32 @b43_phy_write(%struct.b43_wldev* %193, i32 3, i32 290)
  br label %198

195:                                              ; preds = %173
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = call i32 @b43_phy_set(%struct.b43_wldev* %196, i32 10, i32 8192)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %200 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 1
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %205 = call i32 @b43_phy_set(%struct.b43_wldev* %204, i32 2068, i32 4)
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = call i32 @b43_phy_mask(%struct.b43_wldev* %206, i32 2069, i32 65531)
  br label %208

208:                                              ; preds = %203, %198
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = call i32 @b43_phy_maskset(%struct.b43_wldev* %209, i32 3, i32 65439, i32 64)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = call i32 @b43_radio_set(%struct.b43_wldev* %211, i32 122, i32 15)
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = call i32 @b43_set_all_gains(%struct.b43_wldev* %213, i32 3, i32 0, i32 1)
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %216 = call i32 @b43_radio_maskset(%struct.b43_wldev* %215, i32 67, i32 240, i32 15)
  %217 = call i32 @udelay(i32 30)
  %218 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %219 = call i32 @b43_phy_read(%struct.b43_wldev* %218, i32 1151)
  %220 = ashr i32 %219, 8
  %221 = and i32 %220, 63
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = icmp sge i32 %222, 32
  br i1 %223, label %224, label %227

224:                                              ; preds = %208
  %225 = load i32, i32* %5, align 4
  %226 = sub nsw i32 %225, 64
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %224, %208
  %228 = load i32, i32* %5, align 4
  %229 = icmp eq i32 %228, -32
  br i1 %229, label %230, label %265

230:                                              ; preds = %227
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %257, %230
  %232 = load i32, i32* %6, align 4
  %233 = icmp slt i32 %232, 4
  br i1 %233, label %234, label %260

234:                                              ; preds = %231
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @b43_radio_write16(%struct.b43_wldev* %235, i32 123, i32 %236)
  %238 = call i32 @udelay(i32 20)
  %239 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %240 = call i32 @b43_phy_read(%struct.b43_wldev* %239, i32 1151)
  %241 = ashr i32 %240, 8
  %242 = and i32 %241, 63
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = icmp sge i32 %243, 32
  br i1 %244, label %245, label %248

245:                                              ; preds = %234
  %246 = load i32, i32* %5, align 4
  %247 = sub nsw i32 %246, 64
  store i32 %247, i32* %5, align 4
  br label %248

248:                                              ; preds = %245, %234
  %249 = load i32, i32* %5, align 4
  %250 = icmp sgt i32 %249, -31
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* %7, align 4
  %253 = icmp eq i32 %252, 65535
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %254, %251, %248
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %231

260:                                              ; preds = %231
  %261 = load i32, i32* %7, align 4
  %262 = icmp eq i32 %261, 65535
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i32 3, i32* %7, align 4
  br label %264

264:                                              ; preds = %263, %260
  br label %266

265:                                              ; preds = %227
  store i32 0, i32* %7, align 4
  br label %266

266:                                              ; preds = %265, %264
  br label %267

267:                                              ; preds = %266, %160
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @b43_radio_write16(%struct.b43_wldev* %268, i32 123, i32 %269)
  %271 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %272 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp sge i32 %273, 6
  br i1 %274, label %275, label %292

275:                                              ; preds = %267
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 12
  %278 = load i32, i32* %277, align 16
  %279 = call i32 @b43_phy_write(%struct.b43_wldev* %276, i32 46, i32 %278)
  %280 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %281 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 13
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @b43_phy_write(%struct.b43_wldev* %280, i32 47, i32 %282)
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %285 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 14
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @b43_phy_write(%struct.b43_wldev* %284, i32 2063, i32 %286)
  %288 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %289 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 15
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @b43_phy_write(%struct.b43_wldev* %288, i32 2064, i32 %290)
  br label %292

292:                                              ; preds = %275, %267
  %293 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %294 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 1
  br i1 %296, label %297, label %306

297:                                              ; preds = %292
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %299 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 3
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @b43_phy_write(%struct.b43_wldev* %298, i32 2068, i32 %300)
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %303 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 4
  %304 = load i32, i32* %303, align 16
  %305 = call i32 @b43_phy_write(%struct.b43_wldev* %302, i32 2069, i32 %304)
  br label %306

306:                                              ; preds = %297, %292
  %307 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %308 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 5
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @b43_phy_write(%struct.b43_wldev* %307, i32 90, i32 %309)
  %311 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %312 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 6
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @b43_phy_write(%struct.b43_wldev* %311, i32 89, i32 %313)
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %316 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 7
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @b43_phy_write(%struct.b43_wldev* %315, i32 88, i32 %317)
  %319 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %320 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 8
  %321 = load i32, i32* %320, align 16
  %322 = call i32 @b43_phy_write(%struct.b43_wldev* %319, i32 10, i32 %321)
  %323 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %324 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 9
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @b43_phy_write(%struct.b43_wldev* %323, i32 3, i32 %325)
  %327 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %328 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 11
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @b43_radio_write16(%struct.b43_wldev* %327, i32 67, i32 %329)
  %331 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %332 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 10
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @b43_radio_write16(%struct.b43_wldev* %331, i32 122, i32 %333)
  %335 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %336 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %337 = call i32 @b43_phy_read(%struct.b43_wldev* %336, i32 2050)
  %338 = or i32 %337, 1
  %339 = or i32 %338, 2
  %340 = call i32 @b43_phy_write(%struct.b43_wldev* %335, i32 2050, i32 %339)
  %341 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %342 = call i32 @b43_phy_set(%struct.b43_wldev* %341, i32 1065, i32 32768)
  %343 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %344 = call i32 @b43_set_original_gains(%struct.b43_wldev* %343)
  %345 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %346 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp sge i32 %347, 6
  br i1 %348, label %349, label %366

349:                                              ; preds = %306
  %350 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %351 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 16
  %352 = load i32, i32* %351, align 16
  %353 = call i32 @b43_phy_write(%struct.b43_wldev* %350, i32 2049, i32 %352)
  %354 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %355 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 17
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @b43_phy_write(%struct.b43_wldev* %354, i32 96, i32 %356)
  %358 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %359 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 18
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @b43_phy_write(%struct.b43_wldev* %358, i32 20, i32 %360)
  %362 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %363 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 19
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @b43_phy_write(%struct.b43_wldev* %362, i32 1144, i32 %364)
  br label %366

366:                                              ; preds = %349, %306
  %367 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %368 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %369 = load i32, i32* %368, align 16
  %370 = call i32 @b43_phy_write(%struct.b43_wldev* %367, i32 1, i32 %369)
  %371 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %372 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 2
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @b43_phy_write(%struct.b43_wldev* %371, i32 2066, i32 %373)
  %375 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %376 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @b43_phy_write(%struct.b43_wldev* %375, i32 2065, i32 %377)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_set_all_gains(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_set_original_gains(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
