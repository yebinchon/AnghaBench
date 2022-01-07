; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_xdp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_xdp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__**, i32, %struct.TYPE_4__**, %struct.i40e_pf* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_pf = type { i32 }
%struct.bpf_prog = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XDP_WAKEUP_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.bpf_prog*)* @i40e_xdp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xdp_setup(%struct.i40e_vsi* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_HLEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @ETH_FCS_LEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @VLAN_HLEN, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %22, i32 0, i32 6
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %23, align 8
  store %struct.i40e_pf* %24, %struct.i40e_pf** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %133

33:                                               ; preds = %2
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %35 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %39 = icmp ne %struct.bpf_prog* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %133

41:                                               ; preds = %37, %33
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %43 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %42)
  %44 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %45 = icmp ne %struct.bpf_prog* %44, null
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = icmp ne i32 %43, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %55 = call i32 @i40e_prep_for_reset(%struct.i40e_pf* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %41
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %58 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %57, i32 0, i32 4
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %60 = call %struct.bpf_prog* @xchg(i32* %58, %struct.bpf_prog* %59)
  store %struct.bpf_prog* %60, %struct.bpf_prog** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %65 = call i32 @i40e_reset_and_rebuild(%struct.i40e_pf* %64, i32 1, i32 1)
  br label %66

66:                                               ; preds = %63, %56
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %70 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %75 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %78
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %84 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WRITE_ONCE(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %92 = icmp ne %struct.bpf_prog* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %95 = call i32 @bpf_prog_put(%struct.bpf_prog* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %96
  %100 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %101 = icmp ne %struct.bpf_prog* %100, null
  br i1 %101, label %102, label %132

102:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %128, %102
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %106 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %122 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @XDP_WAKEUP_RX, align 4
  %126 = call i32 @i40e_xsk_wakeup(%struct.TYPE_6__* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %120, %109
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %103

131:                                              ; preds = %103
  br label %132

132:                                              ; preds = %131, %99, %96
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %40, %30
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_prep_for_reset(%struct.i40e_pf*, i32) #1

declare dso_local %struct.bpf_prog* @xchg(i32*, %struct.bpf_prog*) #1

declare dso_local i32 @i40e_reset_and_rebuild(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @i40e_xsk_wakeup(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
