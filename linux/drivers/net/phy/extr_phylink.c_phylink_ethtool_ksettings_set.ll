; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_ksettings_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_ethtool_ksettings_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, i32, %struct.phylink_link_state, i32, i64, i32 }
%struct.phylink_link_state = type { i64, i32, i64, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.phy_setting = type { i64, i64 }

@support = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLO_AN_FIXED = common dso_local global i64 0, align 8
@ETHTOOL_LINK_MODE_Autoneg_BIT = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i64 0, align 8
@PHYLINK_DISABLE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_ethtool_ksettings_set(%struct.phylink* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ethtool_link_ksettings, align 8
  %7 = alloca %struct.phylink_link_state, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.phy_setting*, align 8
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load i32, i32* @support, align 4
  %11 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %10)
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AUTONEG_DISABLE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AUTONEG_ENABLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %235

29:                                               ; preds = %19, %2
  %30 = load i32, i32* @support, align 4
  %31 = load %struct.phylink*, %struct.phylink** %4, align 8
  %32 = getelementptr inbounds %struct.phylink, %struct.phylink* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @linkmode_copy(i32 %30, i32 %33)
  %35 = load %struct.phylink*, %struct.phylink** %4, align 8
  %36 = getelementptr inbounds %struct.phylink, %struct.phylink* %35, i32 0, i32 2
  %37 = bitcast %struct.phylink_link_state* %7 to i8*
  %38 = bitcast %struct.phylink_link_state* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 32, i1 false)
  %39 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @support, align 4
  %46 = call i32 @linkmode_and(i32 %40, i32 %44, i32 %45)
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTONEG_DISABLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %29
  %54 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @support, align 4
  %63 = call %struct.phy_setting* @phy_lookup_setting(i64 %57, i64 %61, i32 %62, i32 0)
  store %struct.phy_setting* %63, %struct.phy_setting** %9, align 8
  %64 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %65 = icmp ne %struct.phy_setting* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %235

69:                                               ; preds = %53
  %70 = load %struct.phylink*, %struct.phylink** %4, align 8
  %71 = getelementptr inbounds %struct.phylink, %struct.phylink* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MLO_AN_FIXED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %77 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.phylink*, %struct.phylink** %4, align 8
  %80 = getelementptr inbounds %struct.phylink, %struct.phylink* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %75
  %85 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %86 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.phylink*, %struct.phylink** %4, align 8
  %89 = getelementptr inbounds %struct.phylink, %struct.phylink* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84, %75
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %235

96:                                               ; preds = %84, %69
  %97 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %98 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 2
  store i64 %99, i64* %100, align 8
  %101 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %102 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 1
  store i32 0, i32* %105, align 8
  %106 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %107 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__clear_bit(i32 %106, i32 %108)
  br label %129

110:                                              ; preds = %29
  %111 = load %struct.phylink*, %struct.phylink** %4, align 8
  %112 = getelementptr inbounds %struct.phylink, %struct.phylink* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MLO_AN_FIXED, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %235

119:                                              ; preds = %110
  %120 = load i64, i64* @SPEED_UNKNOWN, align 8
  %121 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 2
  store i64 %120, i64* %121, align 8
  %122 = load i64, i64* @DUPLEX_UNKNOWN, align 8
  %123 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 0
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 1
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* @ETHTOOL_LINK_MODE_Autoneg_BIT, align 4
  %126 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @__set_bit(i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %119, %96
  %130 = load %struct.phylink*, %struct.phylink** %4, align 8
  %131 = load i32, i32* @support, align 4
  %132 = call i64 @phylink_validate(%struct.phylink* %130, i32 %131, %struct.phylink_link_state* %7)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %235

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @phylink_is_empty_linkmode(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %235

149:                                              ; preds = %141, %137
  %150 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %151 = bitcast %struct.ethtool_link_ksettings* %6 to i8*
  %152 = bitcast %struct.ethtool_link_ksettings* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 32, i1 false)
  %153 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @linkmode_copy(i32 %155, i32 %157)
  %159 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.phylink*, %struct.phylink** %4, align 8
  %168 = getelementptr inbounds %struct.phylink, %struct.phylink* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %149
  %172 = load %struct.phylink*, %struct.phylink** %4, align 8
  %173 = getelementptr inbounds %struct.phylink, %struct.phylink* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @phy_ethtool_ksettings_set(i64 %174, %struct.ethtool_link_ksettings* %6)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %235

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %149
  %182 = load %struct.phylink*, %struct.phylink** %4, align 8
  %183 = getelementptr inbounds %struct.phylink, %struct.phylink* %182, i32 0, i32 1
  %184 = call i32 @mutex_lock(i32* %183)
  %185 = load %struct.phylink*, %struct.phylink** %4, align 8
  %186 = getelementptr inbounds %struct.phylink, %struct.phylink* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @linkmode_copy(i32 %188, i32 %191)
  %193 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %7, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.phylink*, %struct.phylink** %4, align 8
  %196 = getelementptr inbounds %struct.phylink, %struct.phylink* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %196, i32 0, i32 3
  store i32 %194, i32* %197, align 8
  %198 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.phylink*, %struct.phylink** %4, align 8
  %202 = getelementptr inbounds %struct.phylink, %struct.phylink* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %202, i32 0, i32 2
  store i64 %200, i64* %203, align 8
  %204 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.phylink*, %struct.phylink** %4, align 8
  %208 = getelementptr inbounds %struct.phylink, %struct.phylink* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %208, i32 0, i32 0
  store i64 %206, i64* %209, align 8
  %210 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %6, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @AUTONEG_DISABLE, align 8
  %214 = icmp ne i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load %struct.phylink*, %struct.phylink** %4, align 8
  %217 = getelementptr inbounds %struct.phylink, %struct.phylink* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %217, i32 0, i32 1
  store i32 %215, i32* %218, align 8
  %219 = load i32, i32* @PHYLINK_DISABLE_STOPPED, align 4
  %220 = load %struct.phylink*, %struct.phylink** %4, align 8
  %221 = getelementptr inbounds %struct.phylink, %struct.phylink* %220, i32 0, i32 3
  %222 = call i32 @test_bit(i32 %219, i32* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %181
  %225 = load %struct.phylink*, %struct.phylink** %4, align 8
  %226 = load %struct.phylink*, %struct.phylink** %4, align 8
  %227 = getelementptr inbounds %struct.phylink, %struct.phylink* %226, i32 0, i32 2
  %228 = call i32 @phylink_mac_config(%struct.phylink* %225, %struct.phylink_link_state* %227)
  %229 = load %struct.phylink*, %struct.phylink** %4, align 8
  %230 = call i32 @phylink_mac_an_restart(%struct.phylink* %229)
  br label %231

231:                                              ; preds = %224, %181
  %232 = load %struct.phylink*, %struct.phylink** %4, align 8
  %233 = getelementptr inbounds %struct.phylink, %struct.phylink* %232, i32 0, i32 1
  %234 = call i32 @mutex_unlock(i32* %233)
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %231, %178, %146, %134, %116, %93, %66, %26
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local %struct.phy_setting* @phy_lookup_setting(i64, i64, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i64 @phylink_validate(%struct.phylink*, i32, %struct.phylink_link_state*) #1

declare dso_local i64 @phylink_is_empty_linkmode(i32) #1

declare dso_local i32 @phy_ethtool_ksettings_set(i64, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @phylink_mac_config(%struct.phylink*, %struct.phylink_link_state*) #1

declare dso_local i32 @phylink_mac_an_restart(%struct.phylink*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
