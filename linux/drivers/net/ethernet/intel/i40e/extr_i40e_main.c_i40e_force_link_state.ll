; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_force_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_force_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw, %struct.TYPE_3__* }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_aq_get_phy_abilities_resp = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.i40e_aq_set_phy_config = type { i64, i32, i32, i32, i32, i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"failed to get phy cap., ret =  %s last_status =  %s\0A\00", align 1
@I40E_SUCCESS = common dso_local global i64 0, align 8
@I40E_PHY_TYPES_BITMASK = common dso_local global i32 0, align 4
@I40E_AQ_PHY_FEC_CONFIG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"set phy config ret =  %s last_status =  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_pf*, i32)* @i40e_force_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_force_link_state(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_aq_get_phy_abilities_resp, align 8
  %7 = alloca %struct.i40e_aq_set_phy_config, align 8
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.i40e_aq_set_phy_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  store %struct.i40e_hw* %14, %struct.i40e_hw** %8, align 8
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %16 = call i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %15, i32 0, i32 1, %struct.i40e_aq_get_phy_abilities_resp* %6, i32* null)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @i40e_stat_str(%struct.i40e_hw* %24, i64 %25)
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %28 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %29 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i40e_aq_str(%struct.i40e_hw* %27, i32 %31)
  %33 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %32)
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %3, align 8
  br label %160

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %40 = call i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw* %39, i32 0, i32 0, %struct.i40e_aq_get_phy_abilities_resp* %6, i32* null)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @i40e_stat_str(%struct.i40e_hw* %48, i64 %49)
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %53 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i40e_aq_str(%struct.i40e_hw* %51, i32 %55)
  %57 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %56)
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %3, align 8
  br label %160

59:                                               ; preds = %35
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* @I40E_SUCCESS, align 8
  store i64 %71, i64* %3, align 8
  br label %160

72:                                               ; preds = %66, %62, %59
  %73 = load i32, i32* @I40E_PHY_TYPES_BITMASK, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  br label %80

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  %82 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 7
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 32
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %85
  %93 = phi i8* [ %90, %85 ], [ null, %91 ]
  %94 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 6
  store i8* %93, i8** %94, align 8
  %95 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 5
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  br label %109

105:                                              ; preds = %92
  %106 = load i8*, i8** %11, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 4
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 3
  store i32 %114, i32* %115, align 8
  %116 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.i40e_aq_get_phy_abilities_resp, %struct.i40e_aq_get_phy_abilities_resp* %6, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @I40E_AQ_PHY_FEC_CONFIG_MASK, align 4
  %122 = and i32 %120, %121
  %123 = getelementptr inbounds %struct.i40e_aq_set_phy_config, %struct.i40e_aq_set_phy_config* %7, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %125 = call i64 @i40e_aq_set_phy_config(%struct.i40e_hw* %124, %struct.i40e_aq_set_phy_config* %7, i32* null)
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %109
  %129 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %130 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %134 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %133, i32 0, i32 0
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @i40e_stat_str(%struct.i40e_hw* %134, i64 %135)
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 0
  %139 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %140 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @i40e_aq_str(%struct.i40e_hw* %138, i32 %143)
  %145 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %144)
  %146 = load i64, i64* %9, align 8
  store i64 %146, i64* %3, align 8
  br label %160

147:                                              ; preds = %109
  %148 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %149 = call i64 @i40e_update_link_info(%struct.i40e_hw* %148)
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = call i32 @msleep(i32 1000)
  %154 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %155 = call i64 @i40e_update_link_info(%struct.i40e_hw* %154)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %158 = call i32 @i40e_aq_set_link_restart_an(%struct.i40e_hw* %157, i32 1, i32* null)
  %159 = load i64, i64* @I40E_SUCCESS, align 8
  store i64 %159, i64* %3, align 8
  br label %160

160:                                              ; preds = %156, %128, %70, %43, %19
  %161 = load i64, i64* %3, align 8
  ret i64 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @i40e_aq_get_phy_capabilities(%struct.i40e_hw*, i32, i32, %struct.i40e_aq_get_phy_abilities_resp*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i64) #2

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i64 @i40e_aq_set_phy_config(%struct.i40e_hw*, %struct.i40e_aq_set_phy_config*, i32*) #2

declare dso_local i64 @i40e_update_link_info(%struct.i40e_hw*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @i40e_aq_set_link_restart_an(%struct.i40e_hw*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
