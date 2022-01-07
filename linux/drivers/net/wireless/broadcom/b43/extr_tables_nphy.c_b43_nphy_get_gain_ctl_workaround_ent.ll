; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_get_gain_ctl_workaround_ent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_get_gain_ctl_workaround_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_gain_ctl_workaround_entry = type { i32, i32*, i32, i32 }
%struct.b43_wldev = type { %struct.TYPE_8__*, %struct.b43_phy }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.b43_phy = type { i32, i32 }

@nphy_gain_ctl_wa_phy6_radio11_ghz2 = common dso_local global %struct.nphy_gain_ctl_workaround_entry zeroinitializer, align 8
@nphy_gain_ctl_workaround = common dso_local global %struct.nphy_gain_ctl_workaround_entry** null, align 8
@b43_nphy_get_gain_ctl_workaround_ent.gain_data = internal constant [8 x i32] [i32 4202, i32 4204, i32 4212, i32 4220, i32 126, i32 4222, i32 8318, i32 12414], align 16
@b43_nphy_get_gain_ctl_workaround_ent.gain_data.1 = internal constant [8 x i32] [i32 98, i32 100, i32 106, i32 4202, i32 4204, i32 4212, i32 4220, i32 8316], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nphy_gain_ctl_workaround_entry* @b43_nphy_get_gain_ctl_workaround_ent(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nphy_gain_ctl_workaround_entry*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_phy*, align 8
  %9 = alloca %struct.nphy_gain_ctl_workaround_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  store %struct.b43_phy* %13, %struct.b43_phy** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 6
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.nphy_gain_ctl_workaround_entry* @nphy_gain_ctl_wa_phy6_radio11_ghz2, %struct.nphy_gain_ctl_workaround_entry** %4, align 8
  br label %231

29:                                               ; preds = %22, %16, %3
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 3
  %35 = zext i1 %34 to i32
  %36 = call i32 @B43_WARN_ON(i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 6
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i64 3, i64* %10, align 8
  br label %60

43:                                               ; preds = %29
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i64 2, i64* %10, align 8
  br label %59

50:                                               ; preds = %43
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %52 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i64 1, i64* %10, align 8
  br label %58

57:                                               ; preds = %50
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.nphy_gain_ctl_workaround_entry**, %struct.nphy_gain_ctl_workaround_entry*** @nphy_gain_ctl_workaround, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %61, i64 %63
  %65 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %65, i64 %66
  store %struct.nphy_gain_ctl_workaround_entry* %67, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %144, label %70

70:                                               ; preds = %60
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %72 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ugt i64 %80, 7
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i64 3, i64* %11, align 8
  br label %83

83:                                               ; preds = %82, %70
  %84 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %85 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 6
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* @b43_nphy_get_gain_ctl_workaround_ent.gain_data, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %93 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %106

94:                                               ; preds = %83
  %95 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %96 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* @b43_nphy_get_gain_ctl_workaround_ent.gain_data.1, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %104 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %88
  %107 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %108 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %109, 5
  br i1 %110, label %111, label %143

111:                                              ; preds = %106
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %116 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, -16385
  store i32 %120, i32* %118, align 4
  %121 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %122 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, -16385
  store i32 %126, i32* %124, align 4
  %127 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %128 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, -16385
  store i32 %132, i32* %130, align 4
  %133 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %134 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, -16385
  store i32 %138, i32* %136, align 4
  %139 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %140 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, -16385
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %114, %111, %106
  br label %229

144:                                              ; preds = %60
  %145 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %146 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp sge i32 %147, 6
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %151 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 11
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %156 = call i32 @b43_is_40mhz(%struct.b43_wldev* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %160 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %159, i32 0, i32 3
  store i32 45, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %154, %149
  br label %228

162:                                              ; preds = %144
  %163 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %164 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %167, label %227

167:                                              ; preds = %162
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %227

170:                                              ; preds = %167
  %171 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %172 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, -16385
  store i32 %176, i32* %174, align 4
  %177 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %178 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, -16385
  store i32 %182, i32* %180, align 4
  %183 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %184 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, -16385
  store i32 %188, i32* %186, align 4
  %189 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %190 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, -16385
  store i32 %194, i32* %192, align 4
  %195 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %196 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, -16385
  store i32 %198, i32* %196, align 8
  %199 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %200 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, 4096
  store i32 %204, i32* %202, align 4
  %205 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %206 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, 4096
  store i32 %210, i32* %208, align 4
  %211 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %212 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, 4096
  store i32 %216, i32* %214, align 4
  %217 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %218 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, 4096
  store i32 %222, i32* %220, align 4
  %223 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  %224 = getelementptr inbounds %struct.nphy_gain_ctl_workaround_entry, %struct.nphy_gain_ctl_workaround_entry* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, 4096
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %170, %167, %162
  br label %228

228:                                              ; preds = %227, %161
  br label %229

229:                                              ; preds = %228, %143
  %230 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %9, align 8
  store %struct.nphy_gain_ctl_workaround_entry* %230, %struct.nphy_gain_ctl_workaround_entry** %4, align 8
  br label %231

231:                                              ; preds = %229, %28
  %232 = load %struct.nphy_gain_ctl_workaround_entry*, %struct.nphy_gain_ctl_workaround_entry** %4, align 8
  ret %struct.nphy_gain_ctl_workaround_entry* %232
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_is_40mhz(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
