; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32* }
%struct.local_info = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"fjn_reset() called\0A\00", align 1
@sram_config = common dso_local global i64 0, align 8
@CONFIG0_RST = common dso_local global i32 0, align 4
@CONFIG_0 = common dso_local global i64 0, align 8
@CONFIG0_RST_1 = common dso_local global i32 0, align 4
@MBH10302 = common dso_local global i64 0, align 8
@BANK_0 = common dso_local global i32 0, align 4
@CONFIG_1 = common dso_local global i64 0, align 8
@BANK_0U = common dso_local global i32 0, align 4
@D_TX_MODE = common dso_local global i32 0, align 4
@TX_MODE = common dso_local global i64 0, align 8
@ID_MATCHED = common dso_local global i32 0, align 4
@RX_MODE = common dso_local global i64 0, align 8
@NODE_ID = common dso_local global i64 0, align 8
@BANK_2 = common dso_local global i32 0, align 4
@BANK_2U = common dso_local global i32 0, align 4
@TDK = common dso_local global i64 0, align 8
@CONTEC = common dso_local global i64 0, align 8
@TDK_AUTO_MODE = common dso_local global i32 0, align 4
@COL_CTRL = common dso_local global i64 0, align 8
@AUTO_MODE = common dso_local global i32 0, align 4
@BMPR12 = common dso_local global i64 0, align 8
@BMPR13 = common dso_local global i64 0, align 8
@RX_SKIP = common dso_local global i64 0, align 8
@CONFIG0_DFL = common dso_local global i32 0, align 4
@CONFIG0_DFL_1 = common dso_local global i32 0, align 4
@DATAPORT = common dso_local global i64 0, align 8
@TX_STATUS = common dso_local global i64 0, align 8
@RX_STATUS = common dso_local global i64 0, align 8
@INTR_OFF = common dso_local global i32 0, align 4
@LAN_CTRL = common dso_local global i64 0, align 8
@D_TX_INTR = common dso_local global i32 0, align 4
@TX_INTR = common dso_local global i64 0, align 8
@D_RX_INTR = common dso_local global i32 0, align 4
@RX_INTR = common dso_local global i64 0, align 8
@INTR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fjn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjn_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.local_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.local_info* @netdev_priv(%struct.net_device* %6)
  store %struct.local_info* %7, %struct.local_info** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netdev_dbg(%struct.net_device* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @sram_config, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @CONFIG0_RST, align 4
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @CONFIG_0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %16, i64 %20)
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @CONFIG0_RST_1, align 4
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @CONFIG_0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %23, i64 %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.local_info*, %struct.local_info** %3, align 8
  %31 = getelementptr inbounds %struct.local_info, %struct.local_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MBH10302, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* @BANK_0, align 4
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @CONFIG_1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %36, i64 %40)
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* @BANK_0U, align 4
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @CONFIG_1, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %43, i64 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* @D_TX_MODE, align 4
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* @TX_MODE, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %50, i64 %54)
  %56 = load i32, i32* @ID_MATCHED, align 4
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* @RX_MODE, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outb(i32 %56, i64 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %81, %49
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 6
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @NODE_ID, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @outb(i32 %72, i64 %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %62

84:                                               ; preds = %62
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = call i32 @set_rx_mode(%struct.net_device* %85)
  %87 = load %struct.local_info*, %struct.local_info** %3, align 8
  %88 = getelementptr inbounds %struct.local_info, %struct.local_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MBH10302, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* @BANK_2, align 4
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* @CONFIG_1, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb(i32 %93, i64 %97)
  br label %106

99:                                               ; preds = %84
  %100 = load i32, i32* @BANK_2U, align 4
  %101 = load i32, i32* %4, align 4
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* @CONFIG_1, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @outb(i32 %100, i64 %104)
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.local_info*, %struct.local_info** %3, align 8
  %108 = getelementptr inbounds %struct.local_info, %struct.local_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TDK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.local_info*, %struct.local_info** %3, align 8
  %114 = getelementptr inbounds %struct.local_info, %struct.local_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CONTEC, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112, %106
  %119 = load i32, i32* @TDK_AUTO_MODE, align 4
  %120 = load i32, i32* %4, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* @COL_CTRL, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @outb(i32 %119, i64 %123)
  br label %132

125:                                              ; preds = %112
  %126 = load i32, i32* @AUTO_MODE, align 4
  %127 = load i32, i32* %4, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* @COL_CTRL, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @outb(i32 %126, i64 %130)
  br label %132

132:                                              ; preds = %125, %118
  %133 = load i32, i32* %4, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* @BMPR12, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outb(i32 0, i64 %136)
  %138 = load i32, i32* %4, align 4
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* @BMPR13, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @outb(i32 0, i64 %141)
  %143 = load i32, i32* %4, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @RX_SKIP, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outb(i32 1, i64 %146)
  %148 = load i64, i64* @sram_config, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %132
  %151 = load i32, i32* @CONFIG0_DFL, align 4
  %152 = load i32, i32* %4, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* @CONFIG_0, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @outb(i32 %151, i64 %155)
  br label %164

157:                                              ; preds = %132
  %158 = load i32, i32* @CONFIG0_DFL_1, align 4
  %159 = load i32, i32* %4, align 4
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* @CONFIG_0, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @outb(i32 %158, i64 %162)
  br label %164

164:                                              ; preds = %157, %150
  %165 = load i32, i32* %4, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* @DATAPORT, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @inw(i64 %168)
  %170 = load i32, i32* %4, align 4
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* @DATAPORT, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @inw(i64 %173)
  %175 = load i32, i32* %4, align 4
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* @TX_STATUS, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outb(i32 255, i64 %178)
  %180 = load i32, i32* %4, align 4
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* @RX_STATUS, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @outb(i32 255, i64 %183)
  %185 = load %struct.local_info*, %struct.local_info** %3, align 8
  %186 = getelementptr inbounds %struct.local_info, %struct.local_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MBH10302, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %164
  %191 = load i32, i32* @INTR_OFF, align 4
  %192 = load i32, i32* %4, align 4
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* @LAN_CTRL, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @outb(i32 %191, i64 %195)
  br label %197

197:                                              ; preds = %190, %164
  %198 = load i32, i32* @D_TX_INTR, align 4
  %199 = load i32, i32* %4, align 4
  %200 = zext i32 %199 to i64
  %201 = load i64, i64* @TX_INTR, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @outb(i32 %198, i64 %202)
  %204 = load i32, i32* @D_RX_INTR, align 4
  %205 = load i32, i32* %4, align 4
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* @RX_INTR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @outb(i32 %204, i64 %208)
  %210 = load %struct.local_info*, %struct.local_info** %3, align 8
  %211 = getelementptr inbounds %struct.local_info, %struct.local_info* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MBH10302, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %197
  %216 = load i32, i32* @INTR_ON, align 4
  %217 = load i32, i32* %4, align 4
  %218 = zext i32 %217 to i64
  %219 = load i64, i64* @LAN_CTRL, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @outb(i32 %216, i64 %220)
  br label %222

222:                                              ; preds = %215, %197
  ret void
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
