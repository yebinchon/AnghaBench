; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i32, i32 }

@BNXT_FLAG_ALL_CONFIG_FEATS = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@BNXT_FLAG_GRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@BNXT_FLAG_LRO = common dso_local global i32 0, align 4
@BNXT_FLAG_NO_AGG_RINGS = common dso_local global i32 0, align 4
@BNXT_FLAG_TPA = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@BNXT_FLAG_STRIP_VLAN = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@BNXT_FLAG_RFS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnxt_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.bnxt* @netdev_priv(%struct.net_device* %13)
  store %struct.bnxt* %14, %struct.bnxt** %6, align 8
  %15 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @BNXT_FLAG_ALL_CONFIG_FEATS, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @BNXT_FLAG_GRO, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NETIF_F_LRO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @BNXT_FLAG_LRO, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %30
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BNXT_FLAG_NO_AGG_RINGS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @BNXT_FLAG_STRIP_VLAN, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @BNXT_FLAG_RFS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %73 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %71, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  %81 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %82 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %94 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92, %87, %80
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %92
  br label %101

101:                                              ; preds = %100, %70
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %10, align 4
  br label %108

108:                                              ; preds = %107, %101
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %111 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %174

114:                                              ; preds = %108
  %115 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %116 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %119 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 1
  %121 = call i32 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %126 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %131 = call i32 @bnxt_set_ring_params(%struct.bnxt* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %3, align 4
  br label %176

134:                                              ; preds = %114
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %139 = call i32 @bnxt_close_nic(%struct.bnxt* %138, i32 0, i32 0)
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %142 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %147 = call i32 @bnxt_set_ring_params(%struct.bnxt* %146)
  br label %148

148:                                              ; preds = %145, %137
  %149 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %150 = call i32 @bnxt_open_nic(%struct.bnxt* %149, i32 0, i32 0)
  store i32 %150, i32* %3, align 4
  br label %176

151:                                              ; preds = %134
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %157 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 1, i32 0
  %165 = call i32 @bnxt_set_tpa(%struct.bnxt* %158, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %154
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %171 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %154
  br label %173

173:                                              ; preds = %172, %151
  br label %174

174:                                              ; preds = %173, %108
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %148, %132
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bnxt_set_ring_params(%struct.bnxt*) #1

declare dso_local i32 @bnxt_close_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_open_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_set_tpa(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
