; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_send_unload_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_send_unload_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.pci_dev*, %struct.TYPE_2__*, i64 }
%struct.pci_dev = type { i64 }
%struct.TYPE_2__ = type { i32* }

@UNLOAD_NORMAL = common dso_local global i32 0, align 4
@DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS = common dso_local global i32 0, align 4
@NO_WOL_FLAG = common dso_local global i32 0, align 4
@DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP = common dso_local global i32 0, align 4
@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MAC_MATCH = common dso_local global i32 0, align 4
@PCI_PM_CTRL = common dso_local global i64 0, align 8
@PCI_PM_CTRL_PME_ENABLE = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_STATUS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_UNLOAD_REQ_WOL_EN = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NO MCP - load counts[%d]      %d, %d, %d\0A\00", align 1
@bnx2x_load_count = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"NO MCP - new load counts[%d]  %d, %d, %d\0A\00", align 1
@FW_MSG_CODE_DRV_UNLOAD_COMMON = common dso_local global i32 0, align 4
@FW_MSG_CODE_DRV_UNLOAD_PORT = common dso_local global i32 0, align 4
@FW_MSG_CODE_DRV_UNLOAD_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_send_unload_req(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = call i32 @BP_PORT(%struct.bnx2x* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @UNLOAD_NORMAL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS, align 4
  store i32 %20, i32* %5, align 4
  br label %120

21:                                               ; preds = %2
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NO_WOL_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP, align 4
  store i32 %29, i32* %5, align 4
  br label %119

30:                                               ; preds = %21
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %116

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %7, align 4
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %8, align 8
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 1
  %51 = load %struct.pci_dev*, %struct.pci_dev** %50, align 8
  store %struct.pci_dev* %51, %struct.pci_dev** %9, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = call i32 @BP_VN(%struct.bnx2x* %52)
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %54, 8
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = load i32, i32* @EMAC_REG_EMAC_MAC_MATCH, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @EMAC_WR(%struct.bnx2x* %64, i32 %67, i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %73, %77
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %78, %82
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  store i32 %87, i32* %10, align 4
  %88 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %89 = load i32, i32* @EMAC_REG_EMAC_MAC_MATCH, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @EMAC_WR(%struct.bnx2x* %88, i32 %92, i32 %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %96 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PCI_PM_CTRL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @pci_read_config_word(%struct.pci_dev* %95, i64 %100, i32* %11)
  %102 = load i32, i32* @PCI_PM_CTRL_PME_ENABLE, align 4
  %103 = load i32, i32* @PCI_PM_CTRL_PME_STATUS, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PCI_PM_CTRL, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @pci_write_config_word(%struct.pci_dev* %107, i64 %112, i32 %113)
  %115 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_EN, align 4
  store i32 %115, i32* %5, align 4
  br label %118

116:                                              ; preds = %30
  %117 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %42
  br label %119

119:                                              ; preds = %118, %28
  br label %120

120:                                              ; preds = %119, %19
  %121 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %122 = call i32 @BP_NOMCP(%struct.bnx2x* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @bnx2x_fw_command(%struct.bnx2x* %125, i32 %126, i32 0)
  store i32 %127, i32* %5, align 4
  br label %226

128:                                              ; preds = %120
  %129 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %130 = call i32 @BP_PATH(%struct.bnx2x* %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i64**, i64*** @bnx2x_load_count, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64*, i64** %133, i64 %135
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64**, i64*** @bnx2x_load_count, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64*, i64** %140, i64 %142
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64**, i64*** @bnx2x_load_count, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64*, i64** %147, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @DP(i32 %131, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %132, i64 %139, i64 %146, i64 %153)
  %155 = load i64**, i64*** @bnx2x_load_count, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64*, i64** %155, i64 %157
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, -1
  store i64 %162, i64* %160, align 8
  %163 = load i64**, i64*** @bnx2x_load_count, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64*, i64** %163, i64 %165
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 1, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  %174 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i64**, i64*** @bnx2x_load_count, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64*, i64** %176, i64 %178
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64**, i64*** @bnx2x_load_count, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64*, i64** %183, i64 %185
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64**, i64*** @bnx2x_load_count, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64*, i64** %190, i64 %192
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 2
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @DP(i32 %174, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %175, i64 %182, i64 %189, i64 %196)
  %198 = load i64**, i64*** @bnx2x_load_count, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64*, i64** %198, i64 %200
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %128
  %207 = load i32, i32* @FW_MSG_CODE_DRV_UNLOAD_COMMON, align 4
  store i32 %207, i32* %5, align 4
  br label %225

208:                                              ; preds = %128
  %209 = load i64**, i64*** @bnx2x_load_count, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64*, i64** %209, i64 %211
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 1, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %213, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %208
  %221 = load i32, i32* @FW_MSG_CODE_DRV_UNLOAD_PORT, align 4
  store i32 %221, i32* %5, align 4
  br label %224

222:                                              ; preds = %208
  %223 = load i32, i32* @FW_MSG_CODE_DRV_UNLOAD_FUNCTION, align 4
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %222, %220
  br label %225

225:                                              ; preds = %224, %206
  br label %226

226:                                              ; preds = %225, %124
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @EMAC_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
