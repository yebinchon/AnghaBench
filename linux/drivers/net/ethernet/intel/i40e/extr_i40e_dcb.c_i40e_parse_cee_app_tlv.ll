; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_parse_cee_app_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_dcb.c_i40e_parse_cee_app_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_cee_feat_tlv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_dcbx_config = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i64, i64 }
%struct.i40e_cee_app_prio = type { i32, i64, i32 }

@I40E_LLDP_TLV_LEN_MASK = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_LEN_SHIFT = common dso_local global i32 0, align 4
@I40E_DCBX_MAX_APPS = common dso_local global i32 0, align 4
@I40E_MAX_USER_PRIORITY = common dso_local global i64 0, align 8
@I40E_CEE_APP_SELECTOR_MASK = common dso_local global i64 0, align 8
@I40E_APP_SEL_ETHTYPE = common dso_local global i64 0, align 8
@I40E_APP_SEL_TCPIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_cee_feat_tlv*, %struct.i40e_dcbx_config*)* @i40e_parse_cee_app_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_parse_cee_app_tlv(%struct.i40e_cee_feat_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_cee_feat_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_cee_app_prio*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.i40e_cee_feat_tlv* %0, %struct.i40e_cee_feat_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_cee_feat_tlv, %struct.i40e_cee_feat_tlv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @ntohs(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @I40E_LLDP_TLV_LEN_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @I40E_LLDP_TLV_LEN_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 24
  %26 = trunc i64 %25 to i32
  %27 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %133

34:                                               ; preds = %2
  %35 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %36 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I40E_DCBX_MAX_APPS, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @I40E_DCBX_MAX_APPS, align 4
  %42 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %130, %44
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %133

52:                                               ; preds = %45
  %53 = load %struct.i40e_cee_feat_tlv*, %struct.i40e_cee_feat_tlv** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_cee_feat_tlv, %struct.i40e_cee_feat_tlv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.i40e_cee_app_prio*
  store %struct.i40e_cee_app_prio* %59, %struct.i40e_cee_app_prio** %8, align 8
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %74, %52
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @I40E_MAX_USER_PRIORITY, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.i40e_cee_app_prio*, %struct.i40e_cee_app_prio** %8, align 8
  %66 = getelementptr inbounds %struct.i40e_cee_app_prio, %struct.i40e_cee_app_prio* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @BIT(i64 %68)
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %60

77:                                               ; preds = %72, %60
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %80 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i64 %78, i64* %84, align 8
  %85 = load %struct.i40e_cee_app_prio*, %struct.i40e_cee_app_prio** %8, align 8
  %86 = getelementptr inbounds %struct.i40e_cee_app_prio, %struct.i40e_cee_app_prio* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @I40E_CEE_APP_SELECTOR_MASK, align 8
  %89 = and i64 %87, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  switch i64 %90, label %107 [
    i64 129, label %91
    i64 128, label %99
  ]

91:                                               ; preds = %77
  %92 = load i64, i64* @I40E_APP_SEL_ETHTYPE, align 8
  %93 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %94 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %92, i64* %98, align 8
  br label %115

99:                                               ; preds = %77
  %100 = load i64, i64* @I40E_APP_SEL_TCPIP, align 8
  %101 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %102 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i64 %100, i64* %106, align 8
  br label %115

107:                                              ; preds = %77
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %110 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %99, %91
  %116 = load %struct.i40e_cee_app_prio*, %struct.i40e_cee_app_prio** %8, align 8
  %117 = getelementptr inbounds %struct.i40e_cee_app_prio, %struct.i40e_cee_app_prio* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @ntohs(i32 %118)
  %120 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %121 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i8* %119, i8** %125, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %127, 24
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %115
  %131 = load i64, i64* %9, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %45

133:                                              ; preds = %33, %45
  ret void
}

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
