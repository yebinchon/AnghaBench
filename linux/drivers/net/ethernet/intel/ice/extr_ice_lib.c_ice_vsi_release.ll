; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32*, i32, i32, i32, i64, i32, %struct.ice_pf* }
%struct.ice_pf = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ICE_FLAG_RSS_ENA = common dso_local global i32 0, align 4
@ICE_VSI_LB = common dso_local global i64 0, align 8
@ICE_VSI_VF = common dso_local global i64 0, align 8
@ICE_VSI_PF = common dso_local global i64 0, align 8
@ICE_FLAG_FW_LLDP_AGENT = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_release(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %6 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %5, i32 0, i32 7
  %7 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %8 = icmp ne %struct.ice_pf* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %154

12:                                               ; preds = %1
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 7
  %15 = load %struct.ice_pf*, %struct.ice_pf** %14, align 8
  store %struct.ice_pf* %15, %struct.ice_pf** %4, align 8
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ice_is_reset_in_progress(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @unregister_netdev(i32* %29)
  br label %31

31:                                               ; preds = %26, %20, %12
  %32 = load i32, i32* @ICE_FLAG_RSS_ENA, align 4
  %33 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %34 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @test_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %40 = call i32 @ice_rss_clean(%struct.ice_vsi* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %43 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ICE_VSI_LB, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %49 = call i32 @ice_vsi_dis_irq(%struct.ice_vsi* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %52 = call i32 @ice_vsi_close(%struct.ice_vsi* %51)
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ICE_VSI_VF, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %60 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %63 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ice_free_res(i32 %61, i32 %64, i32 %67)
  %69 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %70 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %73 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %78

78:                                               ; preds = %58, %50
  %79 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %80 = call i32 @ice_is_safe_mode(%struct.ice_pf* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %78
  %83 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %84 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ICE_VSI_PF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %90 = call i32 @ice_vsi_add_rem_eth_mac(%struct.ice_vsi* %89, i32 0)
  %91 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %92 = call i32 @ice_cfg_sw_lldp(%struct.ice_vsi* %91, i32 1, i32 0)
  %93 = load i32, i32* @ICE_FLAG_FW_LLDP_AGENT, align 4
  %94 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %95 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @test_bit(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %101 = call i32 @ice_cfg_sw_lldp(%struct.ice_vsi* %100, i32 0, i32 0)
  br label %102

102:                                              ; preds = %99, %88
  br label %103

103:                                              ; preds = %102, %82
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %106 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %105, i32 0, i32 1
  %107 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %108 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ice_remove_vsi_fltr(i32* %106, i32 %109)
  %111 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %112 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %115 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ice_rm_vsi_lan_cfg(i32 %113, i32 %116)
  %118 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %119 = call i32 @ice_vsi_delete(%struct.ice_vsi* %118)
  %120 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %121 = call i32 @ice_vsi_free_q_vectors(%struct.ice_vsi* %120)
  %122 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %123 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %140

126:                                              ; preds = %104
  %127 = load i32, i32* @__ICE_DOWN, align 4
  %128 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %129 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @test_bit(i32 %127, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %135 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @free_netdev(i32* %136)
  %138 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %139 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %133, %126, %104
  %141 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %142 = call i32 @ice_vsi_clear_rings(%struct.ice_vsi* %141)
  %143 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %144 = call i32 @ice_vsi_put_qs(%struct.ice_vsi* %143)
  %145 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %146 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ice_is_reset_in_progress(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %152 = call i32 @ice_vsi_clear(%struct.ice_vsi* %151)
  br label %153

153:                                              ; preds = %150, %140
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %9
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @ice_is_reset_in_progress(i32) #1

declare dso_local i32 @unregister_netdev(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_rss_clean(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_dis_irq(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_close(%struct.ice_vsi*) #1

declare dso_local i32 @ice_free_res(i32, i32, i32) #1

declare dso_local i32 @ice_is_safe_mode(%struct.ice_pf*) #1

declare dso_local i32 @ice_vsi_add_rem_eth_mac(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_cfg_sw_lldp(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_remove_vsi_fltr(i32*, i32) #1

declare dso_local i32 @ice_rm_vsi_lan_cfg(i32, i32) #1

declare dso_local i32 @ice_vsi_delete(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_free_q_vectors(%struct.ice_vsi*) #1

declare dso_local i32 @free_netdev(i32*) #1

declare dso_local i32 @ice_vsi_clear_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_put_qs(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_clear(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
