; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_start_bnx2x_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_start_bnx2x_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, %struct.cnic_eth_dev* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.cnic_eth_dev = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2x = type { i32, i32 }

@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_KCQ_IDX = common dso_local global i32 0, align 4
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@HC_INDEX_ISCSI_EQ_CONS = common dso_local global i32 0, align 4
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@DEF_RCV_BUF = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_HANDLES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_start_bnx2x_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_start_bnx2x_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.cnic_eth_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 3
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %4, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bnx2x* @netdev_priv(i32 %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %5, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 9
  %18 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %17, align 8
  store %struct.cnic_eth_dev* %18, %struct.cnic_eth_dev** %6, align 8
  %19 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %20 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %23 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %33 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %32, i32 0, i32 7
  %34 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %35 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cnic_init_id_tbl(i32* %33, i32 %34, i32 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %213

44:                                               ; preds = %1
  %45 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %46 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 5
  %51 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %52 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cnic_init_id_tbl(i32* %50, i32 %53, i32 %56, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %213

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %66 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %72 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %74 = call i32 @cnic_init_bnx2x_kcq(%struct.cnic_dev* %73)
  %75 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %76 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @MAX_KCQ_IDX, align 4
  %81 = call i32 @CNIC_WR16(%struct.cnic_dev* %75, i64 %79, i32 %80)
  %82 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %83 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @CSTORM_ISCSI_EQ_CONS_OFFSET(i32 %84, i32 0)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @CNIC_WR(%struct.cnic_dev* %82, i64 %86, i32 0)
  %88 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %89 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(i32 %90, i32 0)
  %92 = add nsw i64 %89, %91
  %93 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %94 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CNIC_WR(%struct.cnic_dev* %88, i64 %92, i32 %99)
  %101 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %102 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(i32 %103, i32 0)
  %105 = add nsw i64 %102, %104
  %106 = add nsw i64 %105, 4
  %107 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %108 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 32
  %115 = call i32 @CNIC_WR(%struct.cnic_dev* %101, i64 %106, i32 %114)
  %116 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %117 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(i32 %118, i32 0)
  %120 = add nsw i64 %117, %119
  %121 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %122 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @CNIC_WR(%struct.cnic_dev* %116, i64 %120, i32 %127)
  %129 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %130 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i64 @CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(i32 %131, i32 0)
  %133 = add nsw i64 %130, %132
  %134 = add nsw i64 %133, 4
  %135 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %136 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 32
  %143 = call i32 @CNIC_WR(%struct.cnic_dev* %129, i64 %134, i32 %142)
  %144 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %145 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_VALID_OFFSET(i32 %146, i32 0)
  %148 = add nsw i64 %145, %147
  %149 = call i32 @CNIC_WR8(%struct.cnic_dev* %144, i64 %148, i32 1)
  %150 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %151 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @CSTORM_ISCSI_EQ_SB_NUM_OFFSET(i32 %152, i32 0)
  %154 = add nsw i64 %151, %153
  %155 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %156 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @CNIC_WR16(%struct.cnic_dev* %150, i64 %154, i32 %157)
  %159 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %160 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @CSTORM_ISCSI_EQ_SB_INDEX_OFFSET(i32 %161, i32 0)
  %163 = add nsw i64 %160, %162
  %164 = load i32, i32* @HC_INDEX_ISCSI_EQ_CONS, align 4
  %165 = call i32 @CNIC_WR8(%struct.cnic_dev* %159, i64 %163, i32 %164)
  %166 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %167 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i64 @USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(i32 %168)
  %170 = add nsw i64 %167, %169
  %171 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %172 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @CNIC_WR(%struct.cnic_dev* %166, i64 %170, i32 %176)
  %178 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %179 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i64 @USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(i32 %180)
  %182 = add nsw i64 %179, %181
  %183 = add nsw i64 %182, 4
  %184 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %185 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 32
  %191 = call i32 @CNIC_WR(%struct.cnic_dev* %178, i64 %183, i32 %190)
  %192 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %193 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i64 @TSTORM_ISCSI_TCP_LOCAL_ADV_WND_OFFSET(i32 %194)
  %196 = add nsw i64 %193, %195
  %197 = load i32, i32* @DEF_RCV_BUF, align 4
  %198 = call i32 @CNIC_WR(%struct.cnic_dev* %192, i64 %196, i32 %197)
  %199 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %200 = call i32 @cnic_setup_bnx2x_context(%struct.cnic_dev* %199)
  %201 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %202 = call i32 @cnic_init_bnx2x_irq(%struct.cnic_dev* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %64
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %2, align 4
  br label %213

207:                                              ; preds = %64
  %208 = load i32, i32* @CNIC_DRV_STATE_HANDLES_IRQ, align 4
  %209 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %210 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  store i32 0, i32* %2, align 4
  br label %213

213:                                              ; preds = %207, %205, %60, %41
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @cnic_init_id_tbl(i32*, i32, i32, i32) #1

declare dso_local i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

declare dso_local i32 @cnic_init_bnx2x_kcq(%struct.cnic_dev*) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_CONS_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(i32, i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_VALID_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_SB_NUM_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_SB_INDEX_OFFSET(i32, i32) #1

declare dso_local i64 @USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_LOCAL_ADV_WND_OFFSET(i32) #1

declare dso_local i32 @cnic_setup_bnx2x_context(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_init_bnx2x_irq(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
