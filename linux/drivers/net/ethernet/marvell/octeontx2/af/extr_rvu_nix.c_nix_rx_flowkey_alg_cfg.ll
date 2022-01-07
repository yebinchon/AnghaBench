; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_rx_flowkey_alg_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_rx_flowkey_alg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }

@NIX_FLOW_KEY_ALG_MAX = common dso_local global i32 0, align 4
@FIELDS_PER_ALG = common dso_local global i32 0, align 4
@NIX_FLOW_KEY_TYPE_IPV4 = common dso_local global i32 0, align 4
@NIX_FLOW_KEY_TYPE_IPV6 = common dso_local global i32 0, align 4
@NIX_FLOW_KEY_TYPE_TCP = common dso_local global i32 0, align 4
@NIX_FLOW_KEY_TYPE_UDP = common dso_local global i32 0, align 4
@NIX_FLOW_KEY_TYPE_SCTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32)* @nix_rx_flowkey_alg_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_rx_flowkey_alg_cfg(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @NIX_FLOW_KEY_ALG_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @FIELDS_PER_ALG, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.rvu*, %struct.rvu** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @NIX_AF_RX_FLOW_KEY_ALGX_FIELDX(i32 %23, i32 %24)
  %26 = call i32 @rvu_write64(%struct.rvu* %21, i32 %22, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %16

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load i32, i32* @NIX_FLOW_KEY_TYPE_IPV4, align 4
  %36 = load i32, i32* @NIX_FLOW_KEY_TYPE_IPV6, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.rvu*, %struct.rvu** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %142

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @NIX_FLOW_KEY_TYPE_TCP, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.rvu*, %struct.rvu** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %51, i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %142

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @NIX_FLOW_KEY_TYPE_UDP, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.rvu*, %struct.rvu** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %63, i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %142

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NIX_FLOW_KEY_TYPE_SCTP, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %6, align 4
  %75 = load %struct.rvu*, %struct.rvu** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %75, i32 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %142

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @NIX_FLOW_KEY_TYPE_TCP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NIX_FLOW_KEY_TYPE_UDP, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %6, align 4
  %89 = load %struct.rvu*, %struct.rvu** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %142

97:                                               ; preds = %83
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @NIX_FLOW_KEY_TYPE_TCP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @NIX_FLOW_KEY_TYPE_SCTP, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.rvu*, %struct.rvu** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %103, i32 %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %142

111:                                              ; preds = %97
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @NIX_FLOW_KEY_TYPE_UDP, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @NIX_FLOW_KEY_TYPE_SCTP, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %6, align 4
  %117 = load %struct.rvu*, %struct.rvu** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %117, i32 %118, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %142

125:                                              ; preds = %111
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @NIX_FLOW_KEY_TYPE_TCP, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @NIX_FLOW_KEY_TYPE_UDP, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @NIX_FLOW_KEY_TYPE_SCTP, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %6, align 4
  %133 = load %struct.rvu*, %struct.rvu** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @reserve_flowkey_alg_idx(%struct.rvu* %133, i32 %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %125
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %3, align 4
  br label %142

141:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %139, %123, %109, %95, %81, %69, %57, %44
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_RX_FLOW_KEY_ALGX_FIELDX(i32, i32) #1

declare dso_local i32 @reserve_flowkey_alg_idx(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
