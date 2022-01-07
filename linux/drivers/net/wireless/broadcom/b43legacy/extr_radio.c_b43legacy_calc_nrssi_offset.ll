; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_calc_nrssi_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_calc_nrssi_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_calc_nrssi_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_calc_nrssi_offset(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %3, align 8
  %10 = bitcast [20 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 80, i1 false)
  store i32 65535, i32* %7, align 4
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %12 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %11, i32 1)
  %13 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %14, i32 2065)
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %18 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %17, i32 2066)
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %20, i32 2068)
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %23, i32 2069)
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 4
  store i32 %24, i32* %25, align 16
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %27 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %26, i32 90)
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 5
  store i32 %27, i32* %28, align 4
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %30 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %29, i32 89)
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 6
  store i32 %30, i32* %31, align 8
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %32, i32 88)
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 7
  store i32 %33, i32* %34, align 4
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %36 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %35, i32 10)
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 8
  store i32 %36, i32* %37, align 16
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %38, i32 3)
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 9
  store i32 %39, i32* %40, align 4
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %42 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %41, i32 122)
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 10
  store i32 %42, i32* %43, align 8
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %44, i32 67)
  %46 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 11
  store i32 %45, i32* %46, align 4
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %48, i32 1065)
  %50 = and i32 %49, 32767
  %51 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %47, i32 1065, i32 %50)
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %54 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %53, i32 1)
  %55 = and i32 %54, 16383
  %56 = or i32 %55, 16384
  %57 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %52, i32 1, i32 %56)
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %59, i32 2065)
  %61 = or i32 %60, 12
  %62 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %58, i32 2065, i32 %61)
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %65 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %64, i32 2066)
  %66 = and i32 %65, 65523
  %67 = or i32 %66, 4
  %68 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %63, i32 2066, i32 %67)
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %71 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %70, i32 2050)
  %72 = and i32 %71, -4
  %73 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %69, i32 2050, i32 %72)
  %74 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %75 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 6
  br i1 %77, label %78, label %131

78:                                               ; preds = %1
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %79, i32 46)
  %81 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 12
  store i32 %80, i32* %81, align 16
  %82 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %83 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %82, i32 47)
  %84 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 13
  store i32 %83, i32* %84, align 4
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %85, i32 2063)
  %87 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 14
  store i32 %86, i32* %87, align 8
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %89 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %88, i32 2064)
  %90 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 15
  store i32 %89, i32* %90, align 4
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %91, i32 2049)
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 16
  store i32 %92, i32* %93, align 16
  %94 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %95 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %94, i32 96)
  %96 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 17
  store i32 %95, i32* %96, align 4
  %97 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %98 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %97, i32 20)
  %99 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 18
  store i32 %98, i32* %99, align 8
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %101 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %100, i32 1144)
  %102 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 19
  store i32 %101, i32* %102, align 4
  %103 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %104 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %103, i32 46, i32 0)
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %106 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %105, i32 47, i32 0)
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %107, i32 2063, i32 0)
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %109, i32 2064, i32 0)
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %112 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %113 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %112, i32 1144)
  %114 = or i32 %113, 256
  %115 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %111, i32 1144, i32 %114)
  %116 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %117 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %118 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %117, i32 2049)
  %119 = or i32 %118, 64
  %120 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %116, i32 2049, i32 %119)
  %121 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %122 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %123 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %122, i32 96)
  %124 = or i32 %123, 64
  %125 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %121, i32 96, i32 %124)
  %126 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %128 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %127, i32 20)
  %129 = or i32 %128, 512
  %130 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %126, i32 20, i32 %129)
  br label %131

131:                                              ; preds = %78, %1
  %132 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %133 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %134 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %133, i32 122)
  %135 = or i32 %134, 112
  %136 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %132, i32 122, i32 %135)
  %137 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %138 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %139 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %138, i32 122)
  %140 = or i32 %139, 128
  %141 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %137, i32 122, i32 %140)
  %142 = call i32 @udelay(i32 30)
  %143 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %144 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %143, i32 1151)
  %145 = ashr i32 %144, 8
  %146 = and i32 %145, 63
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp sge i32 %147, 32
  br i1 %148, label %149, label %152

149:                                              ; preds = %131
  %150 = load i32, i32* %5, align 4
  %151 = sub nsw i32 %150, 64
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %149, %131
  %153 = load i32, i32* %5, align 4
  %154 = icmp eq i32 %153, 31
  br i1 %154, label %155, label %190

155:                                              ; preds = %152
  store i32 7, i32* %6, align 4
  br label %156

156:                                              ; preds = %182, %155
  %157 = load i32, i32* %6, align 4
  %158 = icmp sge i32 %157, 4
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %160, i32 123, i32 %161)
  %163 = call i32 @udelay(i32 20)
  %164 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %165 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %164, i32 1151)
  %166 = ashr i32 %165, 8
  %167 = and i32 %166, 63
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = icmp sge i32 %168, 32
  br i1 %169, label %170, label %173

170:                                              ; preds = %159
  %171 = load i32, i32* %5, align 4
  %172 = sub nsw i32 %171, 64
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %159
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %174, 31
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = icmp eq i32 %177, 65535
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %176, %173
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %6, align 4
  br label %156

185:                                              ; preds = %156
  %186 = load i32, i32* %7, align 4
  %187 = icmp eq i32 %186, 65535
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 4, i32* %7, align 4
  br label %189

189:                                              ; preds = %188, %185
  br label %325

190:                                              ; preds = %152
  %191 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %192 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %193 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %192, i32 122)
  %194 = and i32 %193, 127
  %195 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %191, i32 122, i32 %194)
  %196 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %197 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %198 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %197, i32 2068)
  %199 = or i32 %198, 1
  %200 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %196, i32 2068, i32 %199)
  %201 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %202 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %203 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %202, i32 2069)
  %204 = and i32 %203, 65534
  %205 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %201, i32 2069, i32 %204)
  %206 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %207 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %208 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %207, i32 2065)
  %209 = or i32 %208, 12
  %210 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %206, i32 2065, i32 %209)
  %211 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %212 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %213 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %212, i32 2066)
  %214 = or i32 %213, 12
  %215 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %211, i32 2066, i32 %214)
  %216 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %217 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %218 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %217, i32 2065)
  %219 = or i32 %218, 48
  %220 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %216, i32 2065, i32 %219)
  %221 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %222 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %223 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %222, i32 2066)
  %224 = or i32 %223, 48
  %225 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %221, i32 2066, i32 %224)
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %227 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %226, i32 90, i32 1152)
  %228 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %229 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %228, i32 89, i32 2064)
  %230 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %231 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %230, i32 88, i32 13)
  %232 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %233 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %190
  %237 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %238 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %237, i32 3, i32 290)
  br label %245

239:                                              ; preds = %190
  %240 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %241 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %242 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %241, i32 10)
  %243 = or i32 %242, 8192
  %244 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %240, i32 10, i32 %243)
  br label %245

245:                                              ; preds = %239, %236
  %246 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %247 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %248 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %247, i32 2068)
  %249 = or i32 %248, 4
  %250 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %246, i32 2068, i32 %249)
  %251 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %252 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %253 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %252, i32 2069)
  %254 = and i32 %253, 65531
  %255 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %251, i32 2069, i32 %254)
  %256 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %257 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %258 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %257, i32 3)
  %259 = and i32 %258, 65439
  %260 = or i32 %259, 64
  %261 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %256, i32 3, i32 %260)
  %262 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %264 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %263, i32 122)
  %265 = or i32 %264, 15
  %266 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %262, i32 122, i32 %265)
  %267 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %268 = call i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev* %267, i32 3, i32 0, i32 1)
  %269 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %270 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %271 = call i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %270, i32 67)
  %272 = and i32 %271, 240
  %273 = or i32 %272, 15
  %274 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %269, i32 67, i32 %273)
  %275 = call i32 @udelay(i32 30)
  %276 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %277 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %276, i32 1151)
  %278 = ashr i32 %277, 8
  %279 = and i32 %278, 63
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* %5, align 4
  %281 = icmp sge i32 %280, 32
  br i1 %281, label %282, label %285

282:                                              ; preds = %245
  %283 = load i32, i32* %5, align 4
  %284 = sub nsw i32 %283, 64
  store i32 %284, i32* %5, align 4
  br label %285

285:                                              ; preds = %282, %245
  %286 = load i32, i32* %5, align 4
  %287 = icmp eq i32 %286, -32
  br i1 %287, label %288, label %323

288:                                              ; preds = %285
  store i32 0, i32* %6, align 4
  br label %289

289:                                              ; preds = %315, %288
  %290 = load i32, i32* %6, align 4
  %291 = icmp slt i32 %290, 4
  br i1 %291, label %292, label %318

292:                                              ; preds = %289
  %293 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %294 = load i32, i32* %6, align 4
  %295 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %293, i32 123, i32 %294)
  %296 = call i32 @udelay(i32 20)
  %297 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %298 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %297, i32 1151)
  %299 = ashr i32 %298, 8
  %300 = and i32 %299, 63
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = icmp sge i32 %301, 32
  br i1 %302, label %303, label %306

303:                                              ; preds = %292
  %304 = load i32, i32* %5, align 4
  %305 = sub nsw i32 %304, 64
  store i32 %305, i32* %5, align 4
  br label %306

306:                                              ; preds = %303, %292
  %307 = load i32, i32* %5, align 4
  %308 = icmp sgt i32 %307, -31
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = load i32, i32* %7, align 4
  %311 = icmp eq i32 %310, 65535
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = load i32, i32* %6, align 4
  store i32 %313, i32* %7, align 4
  br label %314

314:                                              ; preds = %312, %309, %306
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %6, align 4
  br label %289

318:                                              ; preds = %289
  %319 = load i32, i32* %7, align 4
  %320 = icmp eq i32 %319, 65535
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  store i32 3, i32* %7, align 4
  br label %322

322:                                              ; preds = %321, %318
  br label %324

323:                                              ; preds = %285
  store i32 0, i32* %7, align 4
  br label %324

324:                                              ; preds = %323, %322
  br label %325

325:                                              ; preds = %324, %189
  %326 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %327 = load i32, i32* %7, align 4
  %328 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %326, i32 123, i32 %327)
  %329 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %330 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp sge i32 %331, 6
  br i1 %332, label %333, label %350

333:                                              ; preds = %325
  %334 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %335 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 12
  %336 = load i32, i32* %335, align 16
  %337 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %334, i32 46, i32 %336)
  %338 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %339 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 13
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %338, i32 47, i32 %340)
  %342 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %343 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 14
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %342, i32 2063, i32 %344)
  %346 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %347 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 15
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %346, i32 2064, i32 %348)
  br label %350

350:                                              ; preds = %333, %325
  %351 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %352 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 3
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %351, i32 2068, i32 %353)
  %355 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %356 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 4
  %357 = load i32, i32* %356, align 16
  %358 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %355, i32 2069, i32 %357)
  %359 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %360 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 5
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %359, i32 90, i32 %361)
  %363 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %364 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 6
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %363, i32 89, i32 %365)
  %367 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %368 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 7
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %367, i32 88, i32 %369)
  %371 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %372 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 8
  %373 = load i32, i32* %372, align 16
  %374 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %371, i32 10, i32 %373)
  %375 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %376 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 9
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %375, i32 3, i32 %377)
  %379 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %380 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 11
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %379, i32 67, i32 %381)
  %383 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %384 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 10
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @b43legacy_radio_write16(%struct.b43legacy_wldev* %383, i32 122, i32 %385)
  %387 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %388 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %389 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %388, i32 2050)
  %390 = or i32 %389, 1
  %391 = or i32 %390, 2
  %392 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %387, i32 2050, i32 %391)
  %393 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %394 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %395 = call i32 @b43legacy_phy_read(%struct.b43legacy_wldev* %394, i32 1065)
  %396 = or i32 %395, 32768
  %397 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %393, i32 1065, i32 %396)
  %398 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %399 = call i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev* %398)
  %400 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %401 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = icmp sge i32 %402, 6
  br i1 %403, label %404, label %421

404:                                              ; preds = %350
  %405 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %406 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 16
  %407 = load i32, i32* %406, align 16
  %408 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %405, i32 2049, i32 %407)
  %409 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %410 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 17
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %409, i32 96, i32 %411)
  %413 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %414 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 18
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %413, i32 20, i32 %415)
  %417 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %418 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 19
  %419 = load i32, i32* %418, align 4
  %420 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %417, i32 1144, i32 %419)
  br label %421

421:                                              ; preds = %404, %350
  %422 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %423 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %424 = load i32, i32* %423, align 16
  %425 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %422, i32 1, i32 %424)
  %426 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %427 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 2
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %426, i32 2066, i32 %428)
  %430 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %431 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 1
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @b43legacy_phy_write(%struct.b43legacy_wldev* %430, i32 2065, i32 %432)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_phy_read(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev*, i32) #2

declare dso_local i32 @b43legacy_phy_write(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @b43legacy_radio_write16(%struct.b43legacy_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43legacy_set_all_gains(%struct.b43legacy_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43legacy_set_original_gains(%struct.b43legacy_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
