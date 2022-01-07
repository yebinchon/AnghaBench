; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_4__*, %struct.bna_rxf }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.bna_rxf = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@BFI_INVALID_RID = common dso_local global i64 0, align 8
@RXF_E_CONFIG = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNA_CB_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_rx_mode_set(%struct.bna_rx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bna_rx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bna_rxf*, align 8
  %9 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %11 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %10, i32 0, i32 1
  store %struct.bna_rxf* %11, %struct.bna_rxf** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @is_promisc_enable(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %3
  %17 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %18 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BFI_INVALID_RID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %26 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %153

37:                                               ; preds = %24, %16
  %38 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %39 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BFI_INVALID_RID, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %153

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @is_default_enable(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %153

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @is_default_enable(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %60 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BFI_INVALID_RID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %68 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %73 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %153

79:                                               ; preds = %66, %58
  %80 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %81 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BFI_INVALID_RID, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %153

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %53
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i64 @is_promisc_enable(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %96 = call i64 @bna_rxf_promisc_enable(%struct.bna_rxf* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %94
  br label %112

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @is_promisc_disable(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %107 = call i64 @bna_rxf_promisc_disable(%struct.bna_rxf* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %105
  br label %111

111:                                              ; preds = %110, %100
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @is_allmulti_enable(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %119 = call i64 @bna_rxf_allmulti_enable(%struct.bna_rxf* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 1, i32* %9, align 4
  br label %122

122:                                              ; preds = %121, %117
  br label %135

123:                                              ; preds = %112
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @is_allmulti_disable(i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %130 = call i64 @bna_rxf_allmulti_disable(%struct.bna_rxf* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %128
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %140 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %139, i32 0, i32 1
  store i32* null, i32** %140, align 8
  %141 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %142 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %147 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %149 = load i32, i32* @RXF_E_CONFIG, align 4
  %150 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %148, i32 %149)
  br label %151

151:                                              ; preds = %138, %135
  %152 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %152, i32* %4, align 4
  br label %155

153:                                              ; preds = %87, %78, %51, %45, %36
  %154 = load i32, i32* @BNA_CB_FAIL, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64 @is_promisc_enable(i32, i32) #1

declare dso_local i64 @is_default_enable(i32, i32) #1

declare dso_local i64 @bna_rxf_promisc_enable(%struct.bna_rxf*) #1

declare dso_local i64 @is_promisc_disable(i32, i32) #1

declare dso_local i64 @bna_rxf_promisc_disable(%struct.bna_rxf*) #1

declare dso_local i64 @is_allmulti_enable(i32, i32) #1

declare dso_local i64 @bna_rxf_allmulti_enable(%struct.bna_rxf*) #1

declare dso_local i64 @is_allmulti_disable(i32, i32) #1

declare dso_local i64 @bna_rxf_allmulti_disable(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
