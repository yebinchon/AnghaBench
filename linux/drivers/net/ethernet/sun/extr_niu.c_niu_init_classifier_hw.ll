; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_classifier_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_classifier_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_classifier, %struct.niu_parent* }
%struct.niu_classifier = type { i32, %struct.niu_altmac_rdc*, %struct.niu_vlan_rdc*, i32, i32 }
%struct.niu_altmac_rdc = type { i32, i32, i32 }
%struct.niu_vlan_rdc = type { i32, i32 }
%struct.niu_parent = type { i32*, i32* }

@H1POLY = common dso_local global i32 0, align 4
@H2POLY = common dso_local global i32 0, align 4
@ENET_VLAN_TBL_NUM_ENTRIES = common dso_local global i32 0, align 4
@CLASS_CODE_USER_PROG1 = common dso_local global i32 0, align 4
@CLASS_CODE_SCTP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_classifier_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_classifier_hw(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca %struct.niu_classifier*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.niu_vlan_rdc*, align 8
  %9 = alloca %struct.niu_altmac_rdc*, align 8
  %10 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %11 = load %struct.niu*, %struct.niu** %3, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 2
  %13 = load %struct.niu_parent*, %struct.niu_parent** %12, align 8
  store %struct.niu_parent* %13, %struct.niu_parent** %4, align 8
  %14 = load %struct.niu*, %struct.niu** %3, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 1
  store %struct.niu_classifier* %15, %struct.niu_classifier** %5, align 8
  %16 = load i32, i32* @H1POLY, align 4
  %17 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %18 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nw64(i32 %16, i32 %19)
  %21 = load i32, i32* @H2POLY, align 4
  %22 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %23 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nw64(i32 %21, i32 %24)
  %26 = load %struct.niu*, %struct.niu** %3, align 8
  %27 = call i32 @niu_init_hostinfo(%struct.niu* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %145

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENET_VLAN_TBL_NUM_ENTRIES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %39 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %38, i32 0, i32 2
  %40 = load %struct.niu_vlan_rdc*, %struct.niu_vlan_rdc** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.niu_vlan_rdc, %struct.niu_vlan_rdc* %40, i64 %42
  store %struct.niu_vlan_rdc* %43, %struct.niu_vlan_rdc** %8, align 8
  %44 = load %struct.niu*, %struct.niu** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.niu*, %struct.niu** %3, align 8
  %47 = getelementptr inbounds %struct.niu, %struct.niu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.niu_vlan_rdc*, %struct.niu_vlan_rdc** %8, align 8
  %50 = getelementptr inbounds %struct.niu_vlan_rdc, %struct.niu_vlan_rdc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.niu_vlan_rdc*, %struct.niu_vlan_rdc** %8, align 8
  %53 = getelementptr inbounds %struct.niu_vlan_rdc, %struct.niu_vlan_rdc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vlan_tbl_write(%struct.niu* %44, i32 %45, i32 %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %33

59:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %89, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %63 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load %struct.niu_classifier*, %struct.niu_classifier** %5, align 8
  %68 = getelementptr inbounds %struct.niu_classifier, %struct.niu_classifier* %67, i32 0, i32 1
  %69 = load %struct.niu_altmac_rdc*, %struct.niu_altmac_rdc** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.niu_altmac_rdc, %struct.niu_altmac_rdc* %69, i64 %71
  store %struct.niu_altmac_rdc* %72, %struct.niu_altmac_rdc** %9, align 8
  %73 = load %struct.niu*, %struct.niu** %3, align 8
  %74 = load %struct.niu_altmac_rdc*, %struct.niu_altmac_rdc** %9, align 8
  %75 = getelementptr inbounds %struct.niu_altmac_rdc, %struct.niu_altmac_rdc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.niu_altmac_rdc*, %struct.niu_altmac_rdc** %9, align 8
  %78 = getelementptr inbounds %struct.niu_altmac_rdc, %struct.niu_altmac_rdc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.niu_altmac_rdc*, %struct.niu_altmac_rdc** %9, align 8
  %81 = getelementptr inbounds %struct.niu_altmac_rdc, %struct.niu_altmac_rdc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @niu_set_alt_mac_rdc_table(%struct.niu* %73, i32 %76, i32 %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %66
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %145

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %60

92:                                               ; preds = %60
  %93 = load i32, i32* @CLASS_CODE_USER_PROG1, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %132, %92
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @CLASS_CODE_SCTP_IPV6, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @CLASS_CODE_USER_PROG1, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.niu*, %struct.niu** %3, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %105 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @niu_set_tcam_key(%struct.niu* %102, i32 %103, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %145

116:                                              ; preds = %98
  %117 = load %struct.niu*, %struct.niu** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %120 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @niu_set_flow_key(%struct.niu* %117, i32 %118, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %145

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %94

135:                                              ; preds = %94
  %136 = load %struct.niu*, %struct.niu** %3, align 8
  %137 = call i32 @niu_set_ip_frag_rule(%struct.niu* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %145

142:                                              ; preds = %135
  %143 = load %struct.niu*, %struct.niu** %3, align 8
  %144 = call i32 @tcam_enable(%struct.niu* %143, i32 1)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %140, %129, %114, %86, %30
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @niu_init_hostinfo(%struct.niu*) #1

declare dso_local i32 @vlan_tbl_write(%struct.niu*, i32, i32, i32, i32) #1

declare dso_local i32 @niu_set_alt_mac_rdc_table(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @niu_set_tcam_key(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_set_flow_key(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_set_ip_frag_rule(%struct.niu*) #1

declare dso_local i32 @tcam_enable(%struct.niu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
