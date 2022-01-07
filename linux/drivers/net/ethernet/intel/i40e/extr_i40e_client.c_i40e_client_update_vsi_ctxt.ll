; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_update_vsi_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_update_vsi_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.TYPE_12__, %struct.TYPE_10__*, i32, %struct.i40e_vsi** }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i40e_vsi = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40e_vsi_context = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@I40E_AQ_VSI_TYPE_PF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"couldn't get PF vsi config, err %s aq_err %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@I40E_CLIENT_VSI_FLAG_TCP_ENABLE = common dso_local global i32 0, align 4
@I40E_AQ_VSI_PROP_QUEUE_OPT_VALID = common dso_local global i32 0, align 4
@I40E_AQ_VSI_QUE_OPT_TCP_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Client for PF id %d request an unsupported Config: %x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"update VSI ctxt for PE failed, err %s aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_info*, %struct.i40e_client*, i32, i32, i32, i32)* @i40e_client_update_vsi_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_client_update_vsi_ctxt(%struct.i40e_info* %0, %struct.i40e_client* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_info*, align 8
  %9 = alloca %struct.i40e_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_pf*, align 8
  %15 = alloca %struct.i40e_vsi*, align 8
  %16 = alloca %struct.i40e_vsi_context, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i40e_info* %0, %struct.i40e_info** %8, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.i40e_info*, %struct.i40e_info** %8, align 8
  %20 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %19, i32 0, i32 0
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %20, align 8
  store %struct.i40e_pf* %21, %struct.i40e_pf** %14, align 8
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 4
  %24 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %23, align 8
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %24, i64 %27
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %28, align 8
  store %struct.i40e_vsi* %29, %struct.i40e_vsi** %15, align 8
  store i32 1, i32* %17, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %157

35:                                               ; preds = %6
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 1
  %47 = call i32 @i40e_aq_get_vsi_params(%struct.TYPE_12__* %46, %struct.i40e_vsi_context* %16, i32* null)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* @I40E_AQ_VSI_TYPE_PF, align 4
  %49 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %35
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %58 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %57, i32 0, i32 1
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @i40e_stat_str(%struct.TYPE_12__* %58, i32 %59)
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 1
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @i40e_aq_str(%struct.TYPE_12__* %62, i32 %67)
  %69 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %157

72:                                               ; preds = %35
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* @I40E_AQ_VSI_PROP_QUEUE_OPT_VALID, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @I40E_AQ_VSI_QUE_OPT_TCP_ENA, align 4
  %88 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %125

92:                                               ; preds = %77, %72
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @I40E_CLIENT_VSI_FLAG_TCP_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @I40E_AQ_VSI_PROP_QUEUE_OPT_VALID, align 4
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @I40E_AQ_VSI_QUE_OPT_TCP_ENA, align 4
  %108 = xor i32 %107, -1
  %109 = getelementptr inbounds %struct.i40e_vsi_context, %struct.i40e_vsi_context* %16, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %124

113:                                              ; preds = %97, %92
  store i32 0, i32* %17, align 4
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %119 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @dev_warn(i32* %117, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %102
  br label %125

125:                                              ; preds = %124, %82
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %125
  %129 = load %struct.i40e_vsi*, %struct.i40e_vsi** %15, align 8
  %130 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = call i32 @i40e_aq_update_vsi_params(i32* %132, %struct.i40e_vsi_context* %16, i32* null)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %128
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 2
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %142 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %141, i32 0, i32 1
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @i40e_stat_str(%struct.TYPE_12__* %142, i32 %143)
  %145 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %146 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %145, i32 0, i32 1
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @i40e_aq_str(%struct.TYPE_12__* %146, i32 %151)
  %153 = call i32 @dev_info(i32* %140, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %152)
  br label %154

154:                                              ; preds = %136, %128
  br label %155

155:                                              ; preds = %154, %125
  %156 = load i32, i32* %18, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %155, %52, %32
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @i40e_aq_get_vsi_params(%struct.TYPE_12__*, %struct.i40e_vsi_context*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_aq_update_vsi_params(i32*, %struct.i40e_vsi_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
