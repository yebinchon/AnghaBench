; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_parse_fixedlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_parse_fixedlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { %struct.TYPE_2__, i32, %struct.gpio_desc* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i8*, i32 }
%struct.gpio_desc = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.phy_setting = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fixed-link\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"full-duplex\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@MLO_PAUSE_SYM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"asym-pause\00", align 1
@MLO_PAUSE_ASYM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"link-gpios\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"broken fixed-link?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [51 x i8] c"fixed link specifies half duplex for %dMbps link?\0A\00", align 1
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@MII = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"fixed link %s duplex %dMbps not recognised\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, %struct.fwnode_handle*)* @phylink_parse_fixedlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_parse_fixedlink(%struct.phylink* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.phy_setting*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8*], align 16
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %13 = call %struct.fwnode_handle* @fwnode_get_named_child_node(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %6, align 8
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %15 = icmp ne %struct.fwnode_handle* %14, null
  br i1 %15, label %16, label %90

16:                                               ; preds = %2
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %18 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.phylink*, %struct.phylink** %4, align 8
  %21 = getelementptr inbounds %struct.phylink, %struct.phylink* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i8* %19, i8** %22, align 8
  %23 = load i64, i64* @DUPLEX_HALF, align 8
  %24 = load %struct.phylink*, %struct.phylink** %4, align 8
  %25 = getelementptr inbounds %struct.phylink, %struct.phylink* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %28 = call i64 @fwnode_property_read_bool(%struct.fwnode_handle* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load i64, i64* @DUPLEX_FULL, align 8
  %32 = load %struct.phylink*, %struct.phylink** %4, align 8
  %33 = getelementptr inbounds %struct.phylink, %struct.phylink* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %16
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %37 = call i64 @fwnode_property_read_bool(%struct.fwnode_handle* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %41 = load %struct.phylink*, %struct.phylink** %4, align 8
  %42 = getelementptr inbounds %struct.phylink, %struct.phylink* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %35
  %47 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %48 = call i64 @fwnode_property_read_bool(%struct.fwnode_handle* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* @MLO_PAUSE_ASYM, align 4
  %52 = load %struct.phylink*, %struct.phylink** %4, align 8
  %53 = getelementptr inbounds %struct.phylink, %struct.phylink* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %62 = load i32, i32* @GPIOD_IN, align 4
  %63 = call %struct.gpio_desc* @fwnode_get_named_gpiod(%struct.fwnode_handle* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct.gpio_desc* %63, %struct.gpio_desc** %8, align 8
  %64 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %65 = call i32 @IS_ERR(%struct.gpio_desc* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %69 = load %struct.phylink*, %struct.phylink** %4, align 8
  %70 = getelementptr inbounds %struct.phylink, %struct.phylink* %69, i32 0, i32 2
  store %struct.gpio_desc* %68, %struct.gpio_desc** %70, align 8
  br label %81

71:                                               ; preds = %60
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %73 = load i32, i32* @EPROBE_DEFER, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.gpio_desc* @ERR_PTR(i32 %74)
  %76 = icmp eq %struct.gpio_desc* %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EPROBE_DEFER, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %77, %71
  br label %81

81:                                               ; preds = %80, %67
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %84 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %268

89:                                               ; preds = %82
  br label %151

90:                                               ; preds = %2
  %91 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %92 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** null, i32 0)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %95 = call i32 @ARRAY_SIZE(i8** %94)
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.phylink*, %struct.phylink** %4, align 8
  %99 = call i32 @phylink_err(%struct.phylink* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %268

102:                                              ; preds = %90
  %103 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %104 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %105 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 0
  %106 = call i32 @ARRAY_SIZE(i8** %105)
  %107 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %104, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %150, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i64, i64* @DUPLEX_FULL, align 8
  br label %118

116:                                              ; preds = %110
  %117 = load i64, i64* @DUPLEX_HALF, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = load %struct.phylink*, %struct.phylink** %4, align 8
  %121 = getelementptr inbounds %struct.phylink, %struct.phylink* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 2
  %124 = load i8*, i8** %123, align 16
  %125 = load %struct.phylink*, %struct.phylink** %4, align 8
  %126 = getelementptr inbounds %struct.phylink, %struct.phylink* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  store i8* %124, i8** %127, align 8
  %128 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 3
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %133 = load %struct.phylink*, %struct.phylink** %4, align 8
  %134 = getelementptr inbounds %struct.phylink, %struct.phylink* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %131, %118
  %139 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 4
  %140 = load i8*, i8** %139, align 16
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i32, i32* @MLO_PAUSE_ASYM, align 4
  %144 = load %struct.phylink*, %struct.phylink** %4, align 8
  %145 = getelementptr inbounds %struct.phylink, %struct.phylink* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %142, %138
  br label %150

150:                                              ; preds = %149, %102
  br label %151

151:                                              ; preds = %150, %89
  %152 = load %struct.phylink*, %struct.phylink** %4, align 8
  %153 = getelementptr inbounds %struct.phylink, %struct.phylink* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** @SPEED_1000, align 8
  %157 = icmp ugt i8* %155, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %151
  %159 = load %struct.phylink*, %struct.phylink** %4, align 8
  %160 = getelementptr inbounds %struct.phylink, %struct.phylink* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DUPLEX_FULL, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load %struct.phylink*, %struct.phylink** %4, align 8
  %167 = load %struct.phylink*, %struct.phylink** %4, align 8
  %168 = getelementptr inbounds %struct.phylink, %struct.phylink* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (%struct.phylink*, i8*, i8*, ...) @phylink_warn(%struct.phylink* %166, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %165, %158, %151
  %173 = load %struct.phylink*, %struct.phylink** %4, align 8
  %174 = getelementptr inbounds %struct.phylink, %struct.phylink* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %177 = call i32 @bitmap_fill(i32 %175, i32 %176)
  %178 = load %struct.phylink*, %struct.phylink** %4, align 8
  %179 = getelementptr inbounds %struct.phylink, %struct.phylink* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.phylink*, %struct.phylink** %4, align 8
  %183 = getelementptr inbounds %struct.phylink, %struct.phylink* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @linkmode_copy(i32 %181, i32 %184)
  %186 = load %struct.phylink*, %struct.phylink** %4, align 8
  %187 = load %struct.phylink*, %struct.phylink** %4, align 8
  %188 = getelementptr inbounds %struct.phylink, %struct.phylink* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.phylink*, %struct.phylink** %4, align 8
  %191 = getelementptr inbounds %struct.phylink, %struct.phylink* %190, i32 0, i32 0
  %192 = call i32 @phylink_validate(%struct.phylink* %186, i32 %189, %struct.TYPE_2__* %191)
  %193 = load %struct.phylink*, %struct.phylink** %4, align 8
  %194 = getelementptr inbounds %struct.phylink, %struct.phylink* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 4
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.phylink*, %struct.phylink** %4, align 8
  %198 = getelementptr inbounds %struct.phylink, %struct.phylink* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.phylink*, %struct.phylink** %4, align 8
  %202 = getelementptr inbounds %struct.phylink, %struct.phylink* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call %struct.phy_setting* @phy_lookup_setting(i8* %196, i64 %200, i32 %203, i32 1)
  store %struct.phy_setting* %204, %struct.phy_setting** %7, align 8
  %205 = load %struct.phylink*, %struct.phylink** %4, align 8
  %206 = getelementptr inbounds %struct.phylink, %struct.phylink* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @linkmode_zero(i32 %207)
  %209 = load %struct.phylink*, %struct.phylink** %4, align 8
  %210 = getelementptr inbounds %struct.phylink, %struct.phylink* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @MII, align 4
  %213 = call i32 @phylink_set(i32 %211, i32 %212)
  %214 = load %struct.phylink*, %struct.phylink** %4, align 8
  %215 = getelementptr inbounds %struct.phylink, %struct.phylink* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @Pause, align 4
  %218 = call i32 @phylink_set(i32 %216, i32 %217)
  %219 = load %struct.phylink*, %struct.phylink** %4, align 8
  %220 = getelementptr inbounds %struct.phylink, %struct.phylink* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @Asym_Pause, align 4
  %223 = call i32 @phylink_set(i32 %221, i32 %222)
  %224 = load %struct.phy_setting*, %struct.phy_setting** %7, align 8
  %225 = icmp ne %struct.phy_setting* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %172
  %227 = load %struct.phy_setting*, %struct.phy_setting** %7, align 8
  %228 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.phylink*, %struct.phylink** %4, align 8
  %231 = getelementptr inbounds %struct.phylink, %struct.phylink* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @__set_bit(i32 %229, i32 %232)
  br label %249

234:                                              ; preds = %172
  %235 = load %struct.phylink*, %struct.phylink** %4, align 8
  %236 = load %struct.phylink*, %struct.phylink** %4, align 8
  %237 = getelementptr inbounds %struct.phylink, %struct.phylink* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @DUPLEX_FULL, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %244 = load %struct.phylink*, %struct.phylink** %4, align 8
  %245 = getelementptr inbounds %struct.phylink, %struct.phylink* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 4
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 (%struct.phylink*, i8*, i8*, ...) @phylink_warn(%struct.phylink* %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %243, i8* %247)
  br label %249

249:                                              ; preds = %234, %226
  %250 = load %struct.phylink*, %struct.phylink** %4, align 8
  %251 = getelementptr inbounds %struct.phylink, %struct.phylink* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.phylink*, %struct.phylink** %4, align 8
  %255 = getelementptr inbounds %struct.phylink, %struct.phylink* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.phylink*, %struct.phylink** %4, align 8
  %259 = getelementptr inbounds %struct.phylink, %struct.phylink* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @linkmode_and(i32 %253, i32 %257, i32 %260)
  %262 = load %struct.phylink*, %struct.phylink** %4, align 8
  %263 = getelementptr inbounds %struct.phylink, %struct.phylink* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  store i32 1, i32* %264, align 8
  %265 = load %struct.phylink*, %struct.phylink** %4, align 8
  %266 = getelementptr inbounds %struct.phylink, %struct.phylink* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 2
  store i32 1, i32* %267, align 4
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %249, %97, %87
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.fwnode_handle* @fwnode_get_named_child_node(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i8**) #1

declare dso_local i64 @fwnode_property_read_bool(%struct.fwnode_handle*, i8*) #1

declare dso_local %struct.gpio_desc* @fwnode_get_named_gpiod(%struct.fwnode_handle*, i8*, i32, i32, i8*) #1

declare dso_local i32 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @phylink_err(%struct.phylink*, i8*) #1

declare dso_local i32 @phylink_warn(%struct.phylink*, i8*, i8*, ...) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @phylink_validate(%struct.phylink*, i32, %struct.TYPE_2__*) #1

declare dso_local %struct.phy_setting* @phy_lookup_setting(i8*, i64, i32, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

declare dso_local i32 @phylink_set(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
