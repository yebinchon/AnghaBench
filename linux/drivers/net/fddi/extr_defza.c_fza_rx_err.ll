; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_rx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_rx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fza_private = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@FZA_RING_PBC_MASK = common dso_local global i32 0, align 4
@FZA_RING_RX_BAD = common dso_local global i32 0, align 4
@FZA_RING_RX_CRC = common dso_local global i32 0, align 4
@FZA_RING_RX_RRR_MASK = common dso_local global i32 0, align 4
@FZA_RING_RX_DA_MASK = common dso_local global i32 0, align 4
@FZA_RING_RX_SA_MASK = common dso_local global i32 0, align 4
@FZA_RING_RX_DA_CAM = common dso_local global i32 0, align 4
@FZA_RING_RX_SA_ALIAS = common dso_local global i32 0, align 4
@FZA_RING_RX_SA_CAM = common dso_local global i32 0, align 4
@FZA_CONTROL_A_HALT = common dso_local global i32 0, align 4
@FZA_RING_RX_FSC_MASK = common dso_local global i32 0, align 4
@FZA_RING_RX_FSB_ERR = common dso_local global i32 0, align 4
@FDDI_FC_K_FORMAT_MASK = common dso_local global i32 0, align 4
@FDDI_FC_K_CLASS_MASK = common dso_local global i32 0, align 4
@FDDI_FC_K_CLASS_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fza_private*, i32, i32)* @fza_rx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fza_rx_err(%struct.fza_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fza_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fza_private* %0, %struct.fza_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FZA_RING_PBC_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FZA_RING_RX_BAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %134

21:                                               ; preds = %3
  %22 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %23 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FZA_RING_RX_CRC, align 4
  %29 = load i32, i32* @FZA_RING_RX_RRR_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FZA_RING_RX_DA_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FZA_RING_RX_SA_MASK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %27, %34
  %36 = load i32, i32* @FZA_RING_RX_CRC, align 4
  %37 = or i32 %36, 131
  %38 = load i32, i32* @FZA_RING_RX_DA_CAM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FZA_RING_RX_SA_ALIAS, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %21
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 8190
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %48 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %43
  store i32 1, i32* %4, align 4
  br label %169

53:                                               ; preds = %21
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FZA_RING_RX_CRC, align 4
  %56 = load i32, i32* @FZA_RING_RX_RRR_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FZA_RING_RX_DA_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FZA_RING_RX_SA_MASK, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %54, %61
  %63 = load i32, i32* @FZA_RING_RX_CRC, align 4
  %64 = or i32 %63, 131
  %65 = load i32, i32* @FZA_RING_RX_DA_CAM, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FZA_RING_RX_SA_CAM, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %53
  %71 = load i32, i32* @FZA_CONTROL_A_HALT, align 4
  %72 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %73 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @writew_o(i32 %71, i32* %75)
  %77 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %78 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @readw_o(i32* %80)
  store i32 1, i32* %4, align 4
  br label %169

82:                                               ; preds = %53
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @FZA_RING_RX_RRR_MASK, align 4
  %85 = and i32 %83, %84
  switch i32 %85, label %133 [
    i32 129, label %86
    i32 128, label %115
    i32 131, label %115
    i32 132, label %115
    i32 130, label %127
  ]

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @FZA_RING_RX_CRC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %93 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %114

97:                                               ; preds = %86
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @FZA_RING_RX_FSC_MASK, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @FZA_RING_RX_FSB_ERR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102, %97
  %108 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %109 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %102
  br label %114

114:                                              ; preds = %113, %91
  store i32 1, i32* %4, align 4
  br label %169

115:                                              ; preds = %82, %82, %82
  %116 = load i32, i32* @FZA_CONTROL_A_HALT, align 4
  %117 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %118 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = call i32 @writew_o(i32 %116, i32* %120)
  %122 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %123 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = call i32 @readw_o(i32* %125)
  store i32 1, i32* %4, align 4
  br label %169

127:                                              ; preds = %82
  %128 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %129 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  store i32 1, i32* %4, align 4
  br label %169

133:                                              ; preds = %82
  store i32 1, i32* %4, align 4
  br label %169

134:                                              ; preds = %3
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @FDDI_FC_K_FORMAT_MASK, align 4
  %137 = and i32 %135, %136
  switch i32 %137, label %148 [
    i32 133, label %138
    i32 134, label %147
  ]

138:                                              ; preds = %134
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @FDDI_FC_K_CLASS_MASK, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @FDDI_FC_K_CLASS_ASYNC, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 37, i32* %9, align 4
  br label %146

145:                                              ; preds = %138
  store i32 17, i32* %9, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %149

147:                                              ; preds = %134
  store i32 20, i32* %9, align 4
  br label %149

148:                                              ; preds = %134
  store i32 17, i32* %9, align 4
  br label %149

149:                                              ; preds = %148, %147, %146
  store i32 4495, i32* %10, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153, %149
  %158 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %159 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.fza_private*, %struct.fza_private** %5, align 8
  %164 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  store i32 1, i32* %4, align 4
  br label %169

168:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %157, %133, %127, %115, %114, %70, %52
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writew_o(i32, i32*) #1

declare dso_local i32 @readw_o(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
