; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_from_fw_port_mod_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_from_fw_port_mod_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FW_PORT_TYPE_BT_SGMII = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BT_XFI = common dso_local global i32 0, align 4
@FW_PORT_TYPE_BT_XAUI = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_FIBER_XFI = common dso_local global i32 0, align 4
@FW_PORT_TYPE_FIBER_XAUI = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@FW_PORT_TYPE_SFP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_QSFP_10G = common dso_local global i32 0, align 4
@FW_PORT_TYPE_QSA = common dso_local global i32 0, align 4
@FW_PORT_TYPE_QSFP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_CR4_QSFP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_CR_QSFP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_CR2_QSFP = common dso_local global i32 0, align 4
@FW_PORT_TYPE_SFP28 = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_LR = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_SR = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_ER = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_LRM = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_TWINAX_PASSIVE = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_TWINAX_ACTIVE = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@FW_PORT_TYPE_KR4_100G = common dso_local global i32 0, align 4
@FW_PORT_TYPE_KR_SFP28 = common dso_local global i32 0, align 4
@FW_PORT_TYPE_KR_XLAUI = common dso_local global i32 0, align 4
@PORT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @from_fw_port_mod_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_fw_port_mod_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FW_PORT_TYPE_BT_SGMII, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FW_PORT_TYPE_BT_XFI, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FW_PORT_TYPE_BT_XAUI, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %9, %2
  %18 = load i32, i32* @PORT_TP, align 4
  store i32 %18, i32* %3, align 4
  br label %110

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FW_PORT_TYPE_FIBER_XFI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FW_PORT_TYPE_FIBER_XAUI, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @FW_PORT_TYPE_SFP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %61, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FW_PORT_TYPE_QSFP_10G, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %61, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @FW_PORT_TYPE_QSA, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @FW_PORT_TYPE_QSFP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @FW_PORT_TYPE_CR4_QSFP, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FW_PORT_TYPE_CR_QSFP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @FW_PORT_TYPE_CR2_QSFP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @FW_PORT_TYPE_SFP28, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %29
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FW_PORT_MOD_TYPE_LR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @FW_PORT_MOD_TYPE_SR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @FW_PORT_MOD_TYPE_ER, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @FW_PORT_MOD_TYPE_LRM, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69, %65, %61
  %78 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %78, i32* %3, align 4
  br label %110

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @FW_PORT_MOD_TYPE_TWINAX_PASSIVE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @FW_PORT_MOD_TYPE_TWINAX_ACTIVE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @PORT_DA, align 4
  store i32 %88, i32* %3, align 4
  br label %110

89:                                               ; preds = %83
  %90 = load i32, i32* @PORT_OTHER, align 4
  store i32 %90, i32* %3, align 4
  br label %110

91:                                               ; preds = %57
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @FW_PORT_TYPE_KR4_100G, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @FW_PORT_TYPE_KR_SFP28, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @FW_PORT_TYPE_KR_XLAUI, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99, %95, %91
  %104 = load i32, i32* @PORT_NONE, align 4
  store i32 %104, i32* %3, align 4
  br label %110

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* @PORT_OTHER, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %103, %89, %87, %77, %27, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
