; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_pf_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_setup_pf_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64, i64, i32, %struct.TYPE_13__, %struct.TYPE_17__*, %struct.TYPE_20__**, i32, i8*, %struct.TYPE_15__**, i8*, i8* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_19__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i8* }
%struct.i40e_vsi = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"couldn't fetch switch config, err %s aq_err %s\0A\00", align 1
@I40E_FLAG_TRUE_PROMISC_SUPPORT = common dso_local global i32 0, align 4
@I40E_AQ_SET_SWITCH_CFG_PROMISC = common dso_local global i8* null, align 8
@I40E_AQ_RC_ESRCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"couldn't set switch config bits, err %s aq_err %s\0A\00", align 1
@I40E_NO_VSI = common dso_local global i64 0, align 8
@I40E_MAX_VEB = common dso_local global i64 0, align 8
@I40E_VSI_MAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"setup of MAIN VSI failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"setup_pf_filter_control failed: %d\0A\00", align 1
@I40E_FLAG_RSS_ENABLED = common dso_local global i32 0, align 4
@I40E_AQ_AN_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32)* @i40e_setup_pf_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_setup_pf_switch(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.i40e_vsi*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = call i32 @i40e_fetch_switch_configuration(%struct.i40e_pf* %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 5
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @i40e_stat_str(%struct.TYPE_13__* %22, i32 %23)
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 4
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @i40e_aq_str(%struct.TYPE_13__* %26, i64 %31)
  %33 = call i32 (i32*, i8*, ...) @dev_info(i32* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %279

35:                                               ; preds = %2
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %37 = call i32 @i40e_pf_reset_stats(%struct.i40e_pf* %36)
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @I40E_FLAG_TRUE_PROMISC_SUPPORT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** @I40E_AQ_SET_SWITCH_CFG_PROMISC, align 8
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 11
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %43, %35
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %55
  %62 = load i8*, i8** @I40E_AQ_SET_SWITCH_CFG_PROMISC, align 8
  store i8* %62, i8** %8, align 8
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @i40e_aq_set_switch_config(%struct.TYPE_13__* %64, i8* %65, i8* %66, i32 0, i32* null)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %61
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @I40E_AQ_RC_ESRCH, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %70
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 5
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @i40e_stat_str(%struct.TYPE_13__* %84, i32 %85)
  %87 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %88 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %87, i32 0, i32 4
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @i40e_aq_str(%struct.TYPE_13__* %88, i64 %93)
  %95 = call i32 (i32*, i8*, ...) @dev_info(i32* %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %94)
  br label %96

96:                                               ; preds = %78, %70, %61
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %55
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %102 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @I40E_NO_VSI, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %181

109:                                              ; preds = %106, %100
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %9, align 8
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @I40E_MAX_VEB, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %117 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %116, i32 0, i32 9
  %118 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %117, align 8
  %119 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %120 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %118, i64 %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = icmp ne %struct.TYPE_15__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %115
  %126 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %127 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %126, i32 0, i32 9
  %128 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %127, align 8
  %129 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %130 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %128, i64 %131
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %10, align 8
  br label %140

136:                                              ; preds = %115, %109
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 8
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %10, align 8
  br label %140

140:                                              ; preds = %136, %125
  %141 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %142 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @I40E_NO_VSI, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %148 = load i32, i32* @I40E_VSI_MAIN, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = call %struct.i40e_vsi* @i40e_vsi_setup(%struct.i40e_pf* %147, i32 %148, i8* %149, i32 0)
  store %struct.i40e_vsi* %150, %struct.i40e_vsi** %9, align 8
  br label %165

151:                                              ; preds = %140
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %156 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %155, i32 0, i32 6
  %157 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %156, align 8
  %158 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %159 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %157, i64 %160
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = call %struct.i40e_vsi* @i40e_vsi_reinit_setup(%struct.TYPE_20__* %162)
  store %struct.i40e_vsi* %163, %struct.i40e_vsi** %9, align 8
  br label %164

164:                                              ; preds = %154, %151
  br label %165

165:                                              ; preds = %164, %146
  %166 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %167 = icmp ne %struct.i40e_vsi* %166, null
  br i1 %167, label %180, label %168

168:                                              ; preds = %165
  %169 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %170 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %169, i32 0, i32 5
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = call i32 (i32*, i8*, ...) @dev_info(i32* %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %174 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %175 = call i32 @i40e_cloud_filter_exit(%struct.i40e_pf* %174)
  %176 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %177 = call i32 @i40e_fdir_teardown(%struct.i40e_pf* %176)
  %178 = load i32, i32* @EAGAIN, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %279

180:                                              ; preds = %165
  br label %225

181:                                              ; preds = %106
  %182 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %183 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %182, i32 0, i32 6
  %184 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %183, align 8
  %185 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %186 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %184, i64 %187
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %11, align 8
  %193 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %194 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %193, i32 0, i32 6
  %195 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %194, align 8
  %196 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %197 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %195, i64 %198
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  %203 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %204 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %207 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %206, i32 0, i32 6
  %208 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %207, align 8
  %209 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %210 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %208, i64 %211
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 0
  store i32 %205, i32* %214, align 8
  %215 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %216 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %215, i32 0, i32 6
  %217 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %216, align 8
  %218 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %219 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %217, i64 %220
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %221, align 8
  %223 = load i64, i64* %11, align 8
  %224 = call i32 @i40e_vsi_config_tc(%struct.TYPE_20__* %222, i64 %223)
  br label %225

225:                                              ; preds = %181, %180
  %226 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %227 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %226, i32 0, i32 6
  %228 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %227, align 8
  %229 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %230 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %228, i64 %231
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = call i32 @i40e_vlan_stripping_disable(%struct.TYPE_20__* %233)
  %235 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %236 = call i32 @i40e_fdir_sb_setup(%struct.i40e_pf* %235)
  %237 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %238 = call i32 @i40e_setup_pf_filter_control(%struct.i40e_pf* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %225
  %242 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %243 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %242, i32 0, i32 5
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i32, i32* %7, align 4
  %247 = call i32 (i32*, i8*, ...) @dev_info(i32* %245, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %241, %225
  %249 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %250 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @I40E_FLAG_RSS_ENABLED, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %257 = call i32 @i40e_pf_config_rss(%struct.i40e_pf* %256)
  br label %258

258:                                              ; preds = %255, %248
  %259 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %260 = call i32 @i40e_link_event(%struct.i40e_pf* %259)
  %261 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %262 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @I40E_AQ_AN_COMPLETED, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i32 1, i32 0
  %272 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %273 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %272, i32 0, i32 3
  store i32 %271, i32* %273, align 8
  %274 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %275 = call i32 @i40e_ptp_init(%struct.i40e_pf* %274)
  %276 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %277 = call i32 @i40e_sync_udp_filters(%struct.i40e_pf* %276)
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %3, align 4
  br label %279

279:                                              ; preds = %258, %168, %16
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i32 @i40e_fetch_switch_configuration(%struct.i40e_pf*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @i40e_pf_reset_stats(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_aq_set_switch_config(%struct.TYPE_13__*, i8*, i8*, i32, i32*) #1

declare dso_local %struct.i40e_vsi* @i40e_vsi_setup(%struct.i40e_pf*, i32, i8*, i32) #1

declare dso_local %struct.i40e_vsi* @i40e_vsi_reinit_setup(%struct.TYPE_20__*) #1

declare dso_local i32 @i40e_cloud_filter_exit(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_fdir_teardown(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_vsi_config_tc(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @i40e_vlan_stripping_disable(%struct.TYPE_20__*) #1

declare dso_local i32 @i40e_fdir_sb_setup(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_setup_pf_filter_control(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_pf_config_rss(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_link_event(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_ptp_init(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_sync_udp_filters(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
