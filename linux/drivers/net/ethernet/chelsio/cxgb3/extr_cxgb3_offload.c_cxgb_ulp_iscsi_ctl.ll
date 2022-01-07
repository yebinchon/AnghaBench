; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb_ulp_iscsi_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb_ulp_iscsi_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ulp_iscsi_info = type { i32, i32, i32, i32*, i32, i32, i32 }

@A_ULPRX_ISCSI_LLIMIT = common dso_local global i32 0, align 4
@A_ULPRX_ISCSI_ULIMIT = common dso_local global i32 0, align 4
@A_ULPRX_ISCSI_TAGMASK = common dso_local global i32 0, align 4
@A_ULPRX_ISCSI_PSZ = common dso_local global i32 0, align 4
@A_TP_PARA_REG7 = common dso_local global i32 0, align 4
@S_PMMAXXFERLEN0 = common dso_local global i32 0, align 4
@M_PMMAXXFERLEN0 = common dso_local global i32 0, align 4
@S_PMMAXXFERLEN1 = common dso_local global i32 0, align 4
@M_PMMAXXFERLEN1 = common dso_local global i32 0, align 4
@A_PM1_TX_CFG = common dso_local global i32 0, align 4
@A_TP_PARA_REG2 = common dso_local global i32 0, align 4
@S_MAXRXDATA = common dso_local global i32 0, align 4
@M_RXCOALESCESIZE = common dso_local global i32 0, align 4
@S_RXCOALESCESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s, iscsi set MaxRxData to 16224 (0x%x)\0A\00", align 1
@M_MAXRXDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s, setting iscsi pgsz 0x%x, %u,%u,%u,%u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i8*)* @cxgb_ulp_iscsi_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_ulp_iscsi_ctl(%struct.adapter* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ulp_iscsi_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ulp_iscsi_info*
  store %struct.ulp_iscsi_info* %12, %struct.ulp_iscsi_info** %10, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %209 [
    i32 129, label %14
    i32 128, label %142
  ]

14:                                               ; preds = %3
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %19 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load i32, i32* @A_ULPRX_ISCSI_LLIMIT, align 4
  %22 = call i32 @t3_read_reg(%struct.adapter* %20, i32 %21)
  %23 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %24 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = load i32, i32* @A_ULPRX_ISCSI_ULIMIT, align 4
  %27 = call i32 @t3_read_reg(%struct.adapter* %25, i32 %26)
  %28 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %29 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load i32, i32* @A_ULPRX_ISCSI_TAGMASK, align 4
  %32 = call i32 @t3_read_reg(%struct.adapter* %30, i32 %31)
  %33 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %34 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = load i32, i32* @A_ULPRX_ISCSI_PSZ, align 4
  %37 = call i32 @t3_read_reg(%struct.adapter* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %50, %14
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 255
  %44 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %45 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = lshr i32 %53, 8
  store i32 %54, i32* %9, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = load i32, i32* @A_TP_PARA_REG7, align 4
  %58 = call i32 @t3_read_reg(%struct.adapter* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @S_PMMAXXFERLEN0, align 4
  %61 = lshr i32 %59, %60
  %62 = load i32, i32* @M_PMMAXXFERLEN0, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @S_PMMAXXFERLEN1, align 4
  %66 = lshr i32 %64, %65
  %67 = load i32, i32* @M_PMMAXXFERLEN1, align 4
  %68 = and i32 %66, %67
  %69 = call i8* @min(i32 %63, i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %72 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %74 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %73, i32 0, i32 4
  store i32 %70, i32* %74, align 8
  %75 = load %struct.adapter*, %struct.adapter** %4, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.adapter*, %struct.adapter** %4, align 8
  %81 = load i32, i32* @A_PM1_TX_CFG, align 4
  %82 = call i32 @t3_read_reg(%struct.adapter* %80, i32 %81)
  %83 = lshr i32 %82, 17
  %84 = call i8* @min(i32 %79, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %88 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @min(i32 %86, i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %93 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.adapter*, %struct.adapter** %4, align 8
  %95 = load i32, i32* @A_TP_PARA_REG2, align 4
  %96 = call i32 @t3_read_reg(%struct.adapter* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @S_MAXRXDATA, align 4
  %99 = lshr i32 %97, %98
  %100 = icmp ne i32 %99, 16224
  br i1 %100, label %101, label %119

101:                                              ; preds = %55
  %102 = load i32, i32* @M_RXCOALESCESIZE, align 4
  %103 = load i32, i32* @S_RXCOALESCESIZE, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = call i32 @V_MAXRXDATA(i32 16224)
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.adapter*, %struct.adapter** %4, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = load i32, i32* @A_TP_PARA_REG2, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @t3_write_reg(%struct.adapter* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %101, %55
  %120 = load %struct.adapter*, %struct.adapter** %4, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.adapter*, %struct.adapter** %4, align 8
  %126 = load i32, i32* @A_TP_PARA_REG2, align 4
  %127 = call i32 @t3_read_reg(%struct.adapter* %125, i32 %126)
  %128 = load i32, i32* @S_MAXRXDATA, align 4
  %129 = lshr i32 %127, %128
  %130 = load i32, i32* @M_MAXRXDATA, align 4
  %131 = and i32 %129, %130
  %132 = call i8* @min(i32 %124, i32 %131)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %136 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @min(i32 %134, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %141 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  br label %212

142:                                              ; preds = %3
  %143 = load %struct.adapter*, %struct.adapter** %4, align 8
  %144 = load i32, i32* @A_ULPRX_ISCSI_TAGMASK, align 4
  %145 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %146 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @t3_write_reg(%struct.adapter* %143, i32 %144, i32 %147)
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %166, %142
  %150 = load i32, i32* %7, align 4
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %169

152:                                              ; preds = %149
  %153 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %154 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 8, %161
  %163 = shl i32 %160, %162
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %149

169:                                              ; preds = %149
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %208

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.adapter*, %struct.adapter** %4, align 8
  %175 = load i32, i32* @A_ULPRX_ISCSI_PSZ, align 4
  %176 = call i32 @t3_read_reg(%struct.adapter* %174, i32 %175)
  %177 = icmp ne i32 %173, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %172
  %179 = load %struct.adapter*, %struct.adapter** %4, align 8
  %180 = getelementptr inbounds %struct.adapter, %struct.adapter* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %184 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %189 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %194 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ulp_iscsi_info*, %struct.ulp_iscsi_info** %10, align 8
  %199 = getelementptr inbounds %struct.ulp_iscsi_info, %struct.ulp_iscsi_info* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %181, i32 %182, i32 %187, i32 %192, i32 %197, i32 %202)
  %204 = load %struct.adapter*, %struct.adapter** %4, align 8
  %205 = load i32, i32* @A_ULPRX_ISCSI_PSZ, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @t3_write_reg(%struct.adapter* %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %178, %172, %169
  br label %212

209:                                              ; preds = %3
  %210 = load i32, i32* @EOPNOTSUPP, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %209, %208, %119
  %213 = load i32, i32* %8, align 4
  ret i32 %213
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @V_MAXRXDATA(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
