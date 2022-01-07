; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32*, i32, i32, %struct.TYPE_12__, i32, %struct.qed_tunnel_info }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.qed_tunnel_info = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.qed_dev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { i32, %struct.qed_hw_info }
%struct.qed_hw_info = type { i64, i32, i32 }
%struct.qed_ptt = type { i32 }

@QED_TUNN_CLSS_MAC_VLAN = common dso_local global i64 0, align 8
@FW_MAJOR_VERSION = common dso_local global i32 0, align 4
@FW_MINOR_VERSION = common dso_local global i32 0, align 4
@FW_REVISION_VERSION = common dso_local global i32 0, align 4
@FW_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@QED_MF_INTER_PF_SWITCH = common dso_local global i32 0, align 4
@QED_WOL_SUPPORT_PME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_fill_dev_info(%struct.qed_dev* %0, %struct.qed_dev_info* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_dev_info*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_hw_info*, align 8
  %7 = alloca %struct.qed_tunnel_info*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_dev_info* %1, %struct.qed_dev_info** %4, align 8
  %9 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %10 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %9)
  store %struct.qed_hwfn* %10, %struct.qed_hwfn** %5, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 1
  store %struct.qed_hw_info* %12, %struct.qed_hw_info** %6, align 8
  %13 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %14 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %13, i32 0, i32 5
  store %struct.qed_tunnel_info* %14, %struct.qed_tunnel_info** %7, align 8
  %15 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %16 = call i32 @memset(%struct.qed_dev_info* %15, i32 0, i32 92)
  %17 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %18 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QED_TUNN_CLSS_MAC_VLAN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %25 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %31 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %23, %2
  %33 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %34 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %40 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %46 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @QED_TUNN_CLSS_MAC_VLAN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %53 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QED_TUNN_CLSS_MAC_VLAN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %60 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %51, %44, %38, %32
  %62 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %63 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %69 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %75 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @QED_TUNN_CLSS_MAC_VLAN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %7, align 8
  %82 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QED_TUNN_CLSS_MAC_VLAN, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %89 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %80, %73, %67, %61
  %91 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %92 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %95 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %94, i32 0, i32 22
  store i32 %93, i32* %95, align 4
  %96 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %97 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %101 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %100, i32 0, i32 21
  store i32 %99, i32* %101, align 4
  %102 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %103 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %107 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %106, i32 0, i32 20
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %109 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %113 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %112, i32 0, i32 19
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %115 = call i32 @QED_IS_RDMA_PERSONALITY(%struct.qed_hwfn* %114)
  %116 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %117 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %116, i32 0, i32 18
  store i32 %115, i32* %117, align 4
  %118 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %119 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %122 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %121, i32 0, i32 17
  store i32 %120, i32* %122, align 4
  %123 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %124 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %123, i32 0, i32 16
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.qed_hw_info*, %struct.qed_hw_info** %6, align 8
  %127 = getelementptr inbounds %struct.qed_hw_info, %struct.qed_hw_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ether_addr_copy(i32 %125, i32 %128)
  %130 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %131 = call i64 @IS_PF(%struct.qed_dev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %173

133:                                              ; preds = %90
  %134 = load i32, i32* @FW_MAJOR_VERSION, align 4
  %135 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %136 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %135, i32 0, i32 12
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @FW_MINOR_VERSION, align 4
  %138 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %139 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @FW_REVISION_VERSION, align 4
  %141 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %142 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @FW_ENGINEERING_VERSION, align 4
  %144 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %145 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %144, i32 0, i32 9
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @QED_MF_INTER_PF_SWITCH, align 4
  %147 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %148 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %147, i32 0, i32 1
  %149 = call i32 @test_bit(i32 %146, i32* %148)
  %150 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %151 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %150, i32 0, i32 15
  store i32 %149, i32* %151, align 4
  %152 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %153 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  %154 = load %struct.qed_hw_info*, %struct.qed_hw_info** %6, align 8
  %155 = getelementptr inbounds %struct.qed_hw_info, %struct.qed_hw_info* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @QED_WOL_SUPPORT_PME, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %133
  %160 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %161 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %160, i32 0, i32 4
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %133
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %164 = call i32 @qed_mcp_is_smart_an_supported(%struct.qed_hwfn* %163)
  %165 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %166 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %165, i32 0, i32 14
  store i32 %164, i32* %166, align 4
  %167 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %168 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %167)
  %169 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %172 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %171, i32 0, i32 13
  store i32 %170, i32* %172, align 4
  br label %187

173:                                              ; preds = %90
  %174 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %175 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %179 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %178, i32 0, i32 12
  %180 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %181 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %180, i32 0, i32 11
  %182 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %183 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %182, i32 0, i32 10
  %184 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %185 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %184, i32 0, i32 9
  %186 = call i32 @qed_vf_get_fw_version(i32* %177, i32* %179, i32* %181, i32* %183, i32* %185)
  br label %187

187:                                              ; preds = %173, %162
  %188 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %189 = call i64 @IS_PF(%struct.qed_dev* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %221

191:                                              ; preds = %187
  %192 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %193 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %192)
  %194 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %193)
  store %struct.qed_ptt* %194, %struct.qed_ptt** %8, align 8
  %195 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %196 = icmp ne %struct.qed_ptt* %195, null
  br i1 %196, label %197, label %220

197:                                              ; preds = %191
  %198 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %199 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %198)
  %200 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %201 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %202 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %201, i32 0, i32 6
  %203 = call i32 @qed_mcp_get_mfw_ver(%struct.qed_hwfn* %199, %struct.qed_ptt* %200, i32* %202, i32* null)
  %204 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %205 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %204)
  %206 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %207 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %208 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %207, i32 0, i32 8
  %209 = call i32 @qed_mcp_get_mbi_ver(%struct.qed_hwfn* %205, %struct.qed_ptt* %206, i32* %208)
  %210 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %211 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %210)
  %212 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %213 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %214 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %213, i32 0, i32 7
  %215 = call i32 @qed_mcp_get_flash_size(%struct.qed_hwfn* %211, %struct.qed_ptt* %212, i32* %214)
  %216 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %217 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %216)
  %218 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %219 = call i32 @qed_ptt_release(%struct.qed_hwfn* %217, %struct.qed_ptt* %218)
  br label %220

220:                                              ; preds = %197, %191
  br label %227

221:                                              ; preds = %187
  %222 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %223 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %222)
  %224 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %225 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %224, i32 0, i32 6
  %226 = call i32 @qed_mcp_get_mfw_ver(%struct.qed_hwfn* %223, %struct.qed_ptt* null, i32* %225, i32* null)
  br label %227

227:                                              ; preds = %221, %220
  %228 = load %struct.qed_hw_info*, %struct.qed_hw_info** %6, align 8
  %229 = getelementptr inbounds %struct.qed_hw_info, %struct.qed_hw_info* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.qed_dev_info*, %struct.qed_dev_info** %4, align 8
  %232 = getelementptr inbounds %struct.qed_dev_info, %struct.qed_dev_info* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 4
  ret i32 0
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @memset(%struct.qed_dev_info*, i32, i32) #1

declare dso_local i32 @QED_IS_RDMA_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @IS_PF(%struct.qed_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_mcp_is_smart_an_supported(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_vf_get_fw_version(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_get_mfw_ver(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32*) #1

declare dso_local i32 @qed_mcp_get_mbi_ver(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @qed_mcp_get_flash_size(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
