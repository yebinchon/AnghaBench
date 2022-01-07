; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_can_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@RCAR_CAN_CTLR_SLPM = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_CANM_FORCE_RESET = common dso_local global i32 0, align 4
@MAX_STR_READS = common dso_local global i32 0, align 4
@RCAR_CAN_STR_RSTST = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_IDFM_MIXED = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_BOM_ENT = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_MBM = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_MLM = common dso_local global i32 0, align 4
@RCAR_CAN_FIDCR_IDE = common dso_local global i32 0, align 4
@RCAR_CAN_FIDCR_RTR = common dso_local global i32 0, align 4
@RCAR_CAN_MIER1_RXFIE = common dso_local global i32 0, align 4
@RCAR_CAN_MIER1_TXFIE = common dso_local global i32 0, align 4
@RCAR_CAN_IER_ERSIE = common dso_local global i32 0, align 4
@RCAR_CAN_IER_RXFIE = common dso_local global i32 0, align 4
@RCAR_CAN_IER_TXFIE = common dso_local global i32 0, align 4
@RCAR_CAN_ECSR_EDPM = common dso_local global i32 0, align 4
@RCAR_CAN_EIER_EWIE = common dso_local global i32 0, align 4
@RCAR_CAN_EIER_EPIE = common dso_local global i32 0, align 4
@RCAR_CAN_EIER_BOEIE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_BERR_REPORTING = common dso_local global i32 0, align 4
@RCAR_CAN_EIER_BEIE = common dso_local global i32 0, align 4
@RCAR_CAN_EIER_ORIE = common dso_local global i32 0, align 4
@RCAR_CAN_EIER_OLIE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@RCAR_CAN_CTLR_CANM = common dso_local global i32 0, align 4
@RCAR_CAN_RFCR_RFE = common dso_local global i32 0, align 4
@RCAR_CAN_TFCR_TFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_can_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_can_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_can_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.rcar_can_priv* %7, %struct.rcar_can_priv** %3, align 8
  %8 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = call i32 @readw(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RCAR_CAN_CTLR_SLPM, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @writew(i32 %17, i32* %21)
  %23 = load i32, i32* @RCAR_CAN_CTLR_CANM_FORCE_RESET, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = call i32 @writew(i32 %26, i32* %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %47, %1
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MAX_STR_READS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = call i32 @readw(i32* %40)
  %42 = load i32, i32* @RCAR_CAN_STR_RSTST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %32

50:                                               ; preds = %45, %32
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @rcar_can_set_bittiming(%struct.net_device* %51)
  %53 = load i32, i32* @RCAR_CAN_CTLR_IDFM_MIXED, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @RCAR_CAN_CTLR_BOM_ENT, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @RCAR_CAN_CTLR_MBM, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @RCAR_CAN_CTLR_MLM, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = call i32 @writew(i32 %65, i32* %69)
  %71 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %72 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 10
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = call i32 @writel(i32 0, i32* %76)
  %78 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 10
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = call i32 @writel(i32 0, i32* %83)
  %85 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %86 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 9
  %89 = call i32 @writel(i32 0, i32* %88)
  %90 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %91 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 8
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = call i32 @writel(i32 0, i32* %95)
  %97 = load i32, i32* @RCAR_CAN_FIDCR_IDE, align 4
  %98 = load i32, i32* @RCAR_CAN_FIDCR_RTR, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %101 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 8
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = call i32 @writel(i32 %99, i32* %105)
  %107 = load i32, i32* @RCAR_CAN_MIER1_RXFIE, align 4
  %108 = load i32, i32* @RCAR_CAN_MIER1_TXFIE, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %111 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 7
  %114 = call i32 @writel(i32 %109, i32* %113)
  %115 = load i32, i32* @RCAR_CAN_IER_ERSIE, align 4
  %116 = load i32, i32* @RCAR_CAN_IER_RXFIE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @RCAR_CAN_IER_TXFIE, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %123 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %126 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 6
  %129 = call i32 @writeb(i32 %124, i32* %128)
  %130 = load i32, i32* @RCAR_CAN_ECSR_EDPM, align 4
  %131 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %132 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 5
  %135 = call i32 @writeb(i32 %130, i32* %134)
  %136 = load i32, i32* @RCAR_CAN_EIER_EWIE, align 4
  %137 = load i32, i32* @RCAR_CAN_EIER_EPIE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @RCAR_CAN_EIER_BOEIE, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %142 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CAN_CTRLMODE_BERR_REPORTING, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %50
  %149 = load i32, i32* @RCAR_CAN_EIER_BEIE, align 4
  br label %151

150:                                              ; preds = %50
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32 [ %149, %148 ], [ 0, %150 ]
  %153 = or i32 %140, %152
  %154 = load i32, i32* @RCAR_CAN_EIER_ORIE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RCAR_CAN_EIER_OLIE, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %159 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = call i32 @writeb(i32 %157, i32* %161)
  %163 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %164 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %165 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @RCAR_CAN_CTLR_CANM, align 4
  %169 = xor i32 %168, -1
  %170 = and i32 %167, %169
  %171 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %172 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = call i32 @writew(i32 %170, i32* %174)
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %191, %151
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @MAX_STR_READS, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %176
  %181 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %182 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = call i32 @readw(i32* %184)
  %186 = load i32, i32* @RCAR_CAN_STR_RSTST, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %180
  br label %194

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %176

194:                                              ; preds = %189, %176
  %195 = load i32, i32* @RCAR_CAN_RFCR_RFE, align 4
  %196 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %197 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = call i32 @writeb(i32 %195, i32* %199)
  %201 = load i32, i32* @RCAR_CAN_TFCR_TFE, align 4
  %202 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %3, align 8
  %203 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = call i32 @writeb(i32 %201, i32* %205)
  ret void
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readw(i32*) #1

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @rcar_can_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
