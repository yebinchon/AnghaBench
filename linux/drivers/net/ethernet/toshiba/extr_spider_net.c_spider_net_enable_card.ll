; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_enable_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_enable_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32 }

@SPIDER_NET_GRESUMINTNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GREINTNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GFAFRMNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GFXFRAMES_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GFBFRMNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GFCFRMNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GFDFRMNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GFFRMNUM = common dso_local global i32 0, align 4
@SPIDER_NET_FRAMENUM_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GFREECNNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GONETIMENUM = common dso_local global i32 0, align 4
@SPIDER_NET_GTOUTFRMNUM = common dso_local global i32 0, align 4
@SPIDER_NET_GRXMDSET = common dso_local global i32 0, align 4
@SPIDER_NET_RXMODE_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GTXMDSET = common dso_local global i32 0, align 4
@SPIDER_NET_TXMODE_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GIPSECINIT = common dso_local global i32 0, align 4
@SPIDER_NET_IPSECINIT_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GFTRESTRT = common dso_local global i32 0, align 4
@SPIDER_NET_RESTART_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GMRWOLCTRL = common dso_local global i32 0, align 4
@SPIDER_NET_GTESTMD = common dso_local global i32 0, align 4
@SPIDER_NET_GTTQMSK = common dso_local global i32 0, align 4
@SPIDER_NET_GMACINTEN = common dso_local global i32 0, align 4
@SPIDER_NET_GMACAPAUSE = common dso_local global i32 0, align 4
@SPIDER_NET_MACAPAUSE_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GMACTXPAUSE = common dso_local global i32 0, align 4
@SPIDER_NET_TXPAUSE_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GMACBSTLMT = common dso_local global i32 0, align 4
@SPIDER_NET_BURSTLMT_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GMRUAFILnR = common dso_local global i32 0, align 4
@SPIDER_NET_GMRUA0FIL15R = common dso_local global i32 0, align 4
@SPIDER_NET_ECMODE = common dso_local global i32 0, align 4
@SPIDER_NET_ECMODE_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GRXDMAEN = common dso_local global i32 0, align 4
@SPIDER_NET_WOL_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GMACLENLMT = common dso_local global i32 0, align 4
@SPIDER_NET_LENLMT_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GMACOPEMD = common dso_local global i32 0, align 4
@SPIDER_NET_OPMODE_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_GDTDMACCNTR = common dso_local global i32 0, align 4
@SPIDER_NET_GDTBSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*)* @spider_net_enable_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_enable_card(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [22 x [2 x i32]], align 16
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %5 = getelementptr inbounds [22 x [2 x i32]], [22 x [2 x i32]]* %4, i64 0, i64 0
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %7 = load i32, i32* @SPIDER_NET_GRESUMINTNUM, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* @SPIDER_NET_GREINTNUM, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 1
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %15 = load i32, i32* @SPIDER_NET_GFAFRMNUM, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @SPIDER_NET_GFXFRAMES_VALUE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %20 = load i32, i32* @SPIDER_NET_GFBFRMNUM, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @SPIDER_NET_GFXFRAMES_VALUE, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 1
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* @SPIDER_NET_GFCFRMNUM, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %24, i64 1
  %27 = load i32, i32* @SPIDER_NET_GFXFRAMES_VALUE, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 1
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* @SPIDER_NET_GFDFRMNUM, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @SPIDER_NET_GFXFRAMES_VALUE, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 1
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %35 = load i32, i32* @SPIDER_NET_GFFRMNUM, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @SPIDER_NET_FRAMENUM_VALUE, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 1
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* @SPIDER_NET_GFREECNNUM, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 1
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 0
  %44 = load i32, i32* @SPIDER_NET_GONETIMENUM, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 1
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 0
  %48 = load i32, i32* @SPIDER_NET_GTOUTFRMNUM, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 1
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 0
  %52 = load i32, i32* @SPIDER_NET_GRXMDSET, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %51, i64 1
  %54 = load i32, i32* @SPIDER_NET_RXMODE_VALUE, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 1
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* @SPIDER_NET_GTXMDSET, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @SPIDER_NET_TXMODE_VALUE, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 1
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* @SPIDER_NET_GIPSECINIT, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds i32, i32* %61, i64 1
  %64 = load i32, i32* @SPIDER_NET_IPSECINIT_VALUE, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 1
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 0, i64 0
  %67 = load i32, i32* @SPIDER_NET_GFTRESTRT, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds i32, i32* %66, i64 1
  %69 = load i32, i32* @SPIDER_NET_RESTART_VALUE, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 1
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* @SPIDER_NET_GMRWOLCTRL, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 1
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 0
  %76 = load i32, i32* @SPIDER_NET_GTESTMD, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 268435456, i32* %77, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 1
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 0
  %80 = load i32, i32* @SPIDER_NET_GTTQMSK, align 4
  store i32 %80, i32* %79, align 4
  %81 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 4194368, i32* %81, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 1
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 0
  %84 = load i32, i32* @SPIDER_NET_GMACINTEN, align 4
  store i32 %84, i32* %83, align 4
  %85 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 1
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 0, i64 0
  %88 = load i32, i32* @SPIDER_NET_GMACAPAUSE, align 4
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds i32, i32* %87, i64 1
  %90 = load i32, i32* @SPIDER_NET_MACAPAUSE_VALUE, align 4
  store i32 %90, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %86, i64 1
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* @SPIDER_NET_GMACTXPAUSE, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds i32, i32* %92, i64 1
  %95 = load i32, i32* @SPIDER_NET_TXPAUSE_VALUE, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 1
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i64 0, i64 0
  %98 = load i32, i32* @SPIDER_NET_GMACBSTLMT, align 4
  store i32 %98, i32* %97, align 4
  %99 = getelementptr inbounds i32, i32* %97, i64 1
  %100 = load i32, i32* @SPIDER_NET_BURSTLMT_VALUE, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i64 1
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %101, i64 0, i64 0
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 0, i32* %103, align 4
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %111, %1
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [22 x [2 x i32]], [22 x [2 x i32]]* %4, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  %112 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [22 x [2 x i32]], [22 x [2 x i32]]* %4, i64 0, i64 %114
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [22 x [2 x i32]], [22 x [2 x i32]]* %4, i64 0, i64 %119
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %120, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @spider_net_write_reg(%struct.spider_net_card* %112, i32 %117, i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %104

126:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %127

127:                                              ; preds = %144, %126
  %128 = load i32, i32* %3, align 4
  %129 = icmp sle i32 %128, 14
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %132 = load i32, i32* @SPIDER_NET_GMRUAFILnR, align 4
  %133 = load i32, i32* %3, align 4
  %134 = mul nsw i32 %133, 8
  %135 = add nsw i32 %132, %134
  %136 = call i32 @spider_net_write_reg(%struct.spider_net_card* %131, i32 %135, i32 524288)
  %137 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %138 = load i32, i32* @SPIDER_NET_GMRUAFILnR, align 4
  %139 = load i32, i32* %3, align 4
  %140 = mul nsw i32 %139, 8
  %141 = add nsw i32 %138, %140
  %142 = add nsw i32 %141, 4
  %143 = call i32 @spider_net_write_reg(%struct.spider_net_card* %137, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %127

147:                                              ; preds = %127
  %148 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %149 = load i32, i32* @SPIDER_NET_GMRUA0FIL15R, align 4
  %150 = call i32 @spider_net_write_reg(%struct.spider_net_card* %148, i32 %149, i32 134742016)
  %151 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %152 = load i32, i32* @SPIDER_NET_ECMODE, align 4
  %153 = load i32, i32* @SPIDER_NET_ECMODE_VALUE, align 4
  %154 = call i32 @spider_net_write_reg(%struct.spider_net_card* %151, i32 %152, i32 %153)
  %155 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %156 = call i32 @spider_net_enable_rxchtails(%struct.spider_net_card* %155)
  %157 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %158 = call i32 @spider_net_enable_rxdmac(%struct.spider_net_card* %157)
  %159 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %160 = load i32, i32* @SPIDER_NET_GRXDMAEN, align 4
  %161 = load i32, i32* @SPIDER_NET_WOL_VALUE, align 4
  %162 = call i32 @spider_net_write_reg(%struct.spider_net_card* %159, i32 %160, i32 %161)
  %163 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %164 = load i32, i32* @SPIDER_NET_GMACLENLMT, align 4
  %165 = load i32, i32* @SPIDER_NET_LENLMT_VALUE, align 4
  %166 = call i32 @spider_net_write_reg(%struct.spider_net_card* %163, i32 %164, i32 %165)
  %167 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %168 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %169 = load i32, i32* @SPIDER_NET_OPMODE_VALUE, align 4
  %170 = call i32 @spider_net_write_reg(%struct.spider_net_card* %167, i32 %168, i32 %169)
  %171 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %172 = load i32, i32* @SPIDER_NET_GDTDMACCNTR, align 4
  %173 = load i32, i32* @SPIDER_NET_GDTBSTA, align 4
  %174 = call i32 @spider_net_write_reg(%struct.spider_net_card* %171, i32 %172, i32 %173)
  ret void
}

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_enable_rxchtails(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_enable_rxdmac(%struct.spider_net_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
