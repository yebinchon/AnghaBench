; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_get_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_get_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_port = type { i32, i32, %struct.ksz_port_info*, %struct.ksz_hw* }
%struct.ksz_port_info = type { i64, i64, i32, i32, i64 }
%struct.ksz_hw = type { %struct.TYPE_2__*, i64, %struct.ksz_port_info* }
%struct.TYPE_2__ = type { i32, i64 }

@KS884X_PORT_CTRL_4_OFFSET = common dso_local global i32 0, align 4
@KS884X_PORT_STATUS_OFFSET = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_COMPLETE = common dso_local global i32 0, align 4
@PORT_STATUS_LINK_GOOD = common dso_local global i32 0, align 4
@TX_RATE_UNIT = common dso_local global i32 0, align 4
@PORT_STATUS_SPEED_100MBIT = common dso_local global i32 0, align 4
@PORT_STATUS_FULL_DUPLEX = common dso_local global i32 0, align 4
@media_connected = common dso_local global i64 0, align 8
@KS884X_PHY_AUTO_NEG_OFFSET = common dso_local global i32 0, align 4
@KS884X_PHY_REMOTE_CAP_OFFSET = common dso_local global i32 0, align 4
@media_disconnected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_port*)* @port_get_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_get_link_speed(%struct.ksz_port* %0) #0 {
  %2 = alloca %struct.ksz_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz_port_info*, align 8
  %5 = alloca %struct.ksz_port_info*, align 8
  %6 = alloca %struct.ksz_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ksz_port* %0, %struct.ksz_port** %2, align 8
  store %struct.ksz_port_info* null, %struct.ksz_port_info** %5, align 8
  %14 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %15 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %14, i32 0, i32 3
  %16 = load %struct.ksz_hw*, %struct.ksz_hw** %15, align 8
  store %struct.ksz_hw* %16, %struct.ksz_hw** %6, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %18 = call i32 @hw_block_intr(%struct.ksz_hw* %17)
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %20 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %183, %1
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %25 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %188

28:                                               ; preds = %22
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %30 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %29, i32 0, i32 2
  %31 = load %struct.ksz_port_info*, %struct.ksz_port_info** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %31, i64 %33
  store %struct.ksz_port_info* %34, %struct.ksz_port_info** %4, align 8
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @KS884X_PORT_CTRL_4_OFFSET, align 4
  %38 = call i32 @port_r16(%struct.ksz_hw* %35, i32 %36, i32 %37, i32* %7)
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @KS884X_PORT_STATUS_OFFSET, align 4
  %42 = call i32 @port_r16(%struct.ksz_hw* %39, i32 %40, i32 %41, i32* %8)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PORT_AUTO_NEG_COMPLETE, align 4
  %45 = load i32, i32* @PORT_STATUS_LINK_GOOD, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %53 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %28
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %59 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %183

63:                                               ; preds = %56, %28
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %66 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %69 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @PORT_STATUS_LINK_GOOD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %150

74:                                               ; preds = %63
  %75 = load %struct.ksz_port_info*, %struct.ksz_port_info** %5, align 8
  %76 = icmp ne %struct.ksz_port_info* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  store %struct.ksz_port_info* %78, %struct.ksz_port_info** %5, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* @TX_RATE_UNIT, align 4
  %81 = mul nsw i32 10, %80
  %82 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %83 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @PORT_STATUS_SPEED_100MBIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32, i32* @TX_RATE_UNIT, align 4
  %90 = mul nsw i32 100, %89
  %91 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %92 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %79
  %94 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %95 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %94, i32 0, i32 3
  store i32 1, i32* %95, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @PORT_STATUS_FULL_DUPLEX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %102 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %101, i32 0, i32 3
  store i32 2, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i64, i64* @media_connected, align 8
  %105 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %106 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %146

109:                                              ; preds = %103
  %110 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @KS884X_PHY_AUTO_NEG_OFFSET, align 4
  %113 = call i32 @hw_r_phy(%struct.ksz_hw* %110, i32 %111, i32 %112, i32* %7)
  %114 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @KS884X_PHY_REMOTE_CAP_OFFSET, align 4
  %117 = call i32 @hw_r_phy(%struct.ksz_hw* %114, i32 %115, i32 %116, i32* %8)
  %118 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %119 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @determine_flow_ctrl(%struct.ksz_hw* %118, %struct.ksz_port* %119, i32 %120, i32 %121)
  %123 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %124 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %109
  %128 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %131 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 1, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @port_cfg_back_pressure(%struct.ksz_hw* %128, i32 %129, i32 %134)
  br label %136

136:                                              ; preds = %127, %109
  %137 = load i32, i32* %11, align 4
  %138 = shl i32 1, %137
  %139 = load i32, i32* %13, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %142 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %143 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @port_cfg_change(%struct.ksz_hw* %141, %struct.ksz_port* %142, %struct.ksz_port_info* %143, i32 %144)
  br label %146

146:                                              ; preds = %136, %103
  %147 = load i64, i64* @media_connected, align 8
  %148 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %149 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  br label %172

150:                                              ; preds = %63
  %151 = load i64, i64* @media_disconnected, align 8
  %152 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %153 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load i32, i32* %11, align 4
  %158 = shl i32 1, %157
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %162 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  br label %168

168:                                              ; preds = %156, %150
  %169 = load i64, i64* @media_disconnected, align 8
  %170 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %171 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %146
  %173 = load %struct.ksz_port_info*, %struct.ksz_port_info** %4, align 8
  %174 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %177 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %176, i32 0, i32 0
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  store i64 %175, i64* %182, align 8
  br label %183

183:                                              ; preds = %172, %62
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %22

188:                                              ; preds = %22
  %189 = load %struct.ksz_port_info*, %struct.ksz_port_info** %5, align 8
  %190 = icmp ne %struct.ksz_port_info* %189, null
  br i1 %190, label %191, label %203

191:                                              ; preds = %188
  %192 = load i64, i64* @media_disconnected, align 8
  %193 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %194 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %193, i32 0, i32 2
  %195 = load %struct.ksz_port_info*, %struct.ksz_port_info** %194, align 8
  %196 = getelementptr inbounds %struct.ksz_port_info, %struct.ksz_port_info* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %192, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %191
  %200 = load %struct.ksz_port_info*, %struct.ksz_port_info** %5, align 8
  %201 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %202 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %201, i32 0, i32 2
  store %struct.ksz_port_info* %200, %struct.ksz_port_info** %202, align 8
  br label %203

203:                                              ; preds = %199, %191, %188
  %204 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @hw_restore_intr(%struct.ksz_hw* %204, i32 %205)
  ret void
}

declare dso_local i32 @hw_block_intr(%struct.ksz_hw*) #1

declare dso_local i32 @port_r16(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @hw_r_phy(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @determine_flow_ctrl(%struct.ksz_hw*, %struct.ksz_port*, i32, i32) #1

declare dso_local i32 @port_cfg_back_pressure(%struct.ksz_hw*, i32, i32) #1

declare dso_local i32 @port_cfg_change(%struct.ksz_hw*, %struct.ksz_port*, %struct.ksz_port_info*, i32) #1

declare dso_local i32 @hw_restore_intr(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
