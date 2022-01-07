; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_create_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_fw_create_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@QLCNIC_NEED_FLR = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@__QLCNIC_FW_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @QLCNIC_NEED_FLR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_reset_function(i32 %16)
  %18 = load i32, i32* @QLCNIC_NEED_FLR, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = call i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter* %44, i32 1)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %190

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %28, %24
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = call i32 @qlcnic_82xx_mq_intrpt(%struct.qlcnic_adapter* %75, i32 1)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %190

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %67, %63, %56, %52
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %84 = call i32 @qlcnic_fw_cmd_create_rx_ctx(%struct.qlcnic_adapter* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %140

88:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %132, %88
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %135

95:                                               ; preds = %89
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @qlcnic_fw_cmd_create_tx_ctx(%struct.qlcnic_adapter* %96, i32* %102, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %95
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %109 = call i32 @qlcnic_fw_cmd_del_rx_ctx(%struct.qlcnic_adapter* %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %140

113:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @qlcnic_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter* %119, i32* %125)
  br label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %114

130:                                              ; preds = %114
  br label %140

131:                                              ; preds = %95
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %89

135:                                              ; preds = %89
  %136 = load i32, i32* @__QLCNIC_FW_ATTACHED, align 4
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 3
  %139 = call i32 @set_bit(i32 %136, i32* %138)
  store i32 0, i32* %2, align 4
  br label %190

140:                                              ; preds = %130, %112, %87
  %141 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %142 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %153 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %164 = call i32 @qlcnic_82xx_config_intrpt(%struct.qlcnic_adapter* %163, i32 0)
  br label %165

165:                                              ; preds = %162, %155, %151, %144, %140
  %166 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %167 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %165
  %170 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %171 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %178 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %186 = call i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter* %185, i32 0)
  br label %187

187:                                              ; preds = %184, %176
  br label %188

188:                                              ; preds = %187, %169, %165
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %135, %79, %48
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @pci_reset_function(i32) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_config_intrpt(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_82xx_mq_intrpt(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_fw_cmd_create_rx_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_cmd_create_tx_ctx(%struct.qlcnic_adapter*, i32*, i32) #1

declare dso_local i32 @qlcnic_fw_cmd_del_rx_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_82xx_config_intrpt(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
