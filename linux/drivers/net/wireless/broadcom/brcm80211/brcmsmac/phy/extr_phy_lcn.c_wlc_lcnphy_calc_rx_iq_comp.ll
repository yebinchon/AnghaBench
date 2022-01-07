; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_calc_rx_iq_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_calc_rx_iq_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.lcnphy_iq_est = type { i64, i64, i64, i32, i32, i32 }

@LCNPHY_MIN_RXIQ_PWR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i8*)* @wlc_lcnphy_calc_rx_iq_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_calc_rx_iq_comp(%struct.brcms_phy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lcnphy_iq_est, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = bitcast %struct.lcnphy_iq_est* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %24, align 8
  store %struct.brcms_phy_lcnphy* %25, %struct.brcms_phy_lcnphy** %20, align 8
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = call i32 @read_phy_reg(%struct.brcms_phy* %26, i32 1605)
  %28 = and i32 %27, 1023
  %29 = ashr i32 %28, 0
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %7, align 8
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %33 = call i32 @read_phy_reg(%struct.brcms_phy* %32, i32 1606)
  %34 = and i32 %33, 1023
  %35 = ashr i32 %34, 0
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %39 = call i32 @mod_phy_reg(%struct.brcms_phy* %38, i32 1745, i32 4, i32 0)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %41 = call i32 @mod_phy_reg(%struct.brcms_phy* %40, i32 1611, i32 64, i32 64)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %43 = call i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy* %42, i8* null, i8* null)
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy* %44, i8* %45, i32 32, %struct.lcnphy_iq_est* %9)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  br label %186

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %9, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %17, align 4
  %54 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %18, align 8
  %56 = getelementptr inbounds %struct.lcnphy_iq_est, %struct.lcnphy_iq_est* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %19, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %19, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp slt i64 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %186

63:                                               ; preds = %50
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @wlc_phy_nbits(i64 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @wlc_phy_nbits(i64 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 30, %69
  %71 = sub nsw i32 10, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %63
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 30, %76
  %78 = shl i32 %75, %77
  %79 = sub nsw i32 0, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %18, align 8
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 1, %82
  %84 = zext i32 %83 to i64
  %85 = ashr i64 %81, %84
  %86 = add nsw i64 %80, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* %18, align 8
  %89 = load i32, i32* %15, align 4
  %90 = zext i32 %89 to i64
  %91 = ashr i64 %88, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %204

96:                                               ; preds = %74
  br label %121

97:                                               ; preds = %63
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 30, %99
  %101 = shl i32 %98, %100
  %102 = sub nsw i32 0, %101
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %18, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 -1, %105
  %107 = zext i32 %106 to i64
  %108 = shl i64 %104, %107
  %109 = add nsw i64 %103, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %10, align 4
  %111 = load i64, i64* %18, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 0, %112
  %114 = zext i32 %113 to i64
  %115 = shl i64 %111, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %204

120:                                              ; preds = %97
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %10, align 4
  %124 = sdiv i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %125, 31
  %127 = add nsw i32 %126, 20
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %121
  %131 = load i64, i64* %19, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 31, %132
  %134 = zext i32 %133 to i64
  %135 = shl i64 %131, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %11, align 4
  %137 = load i64, i64* %18, align 8
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = ashr i64 %137, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %204

145:                                              ; preds = %130
  br label %163

146:                                              ; preds = %121
  %147 = load i64, i64* %19, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sub nsw i32 31, %148
  %150 = zext i32 %149 to i64
  %151 = shl i64 %147, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %11, align 4
  %153 = load i64, i64* %18, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 0, %154
  %156 = zext i32 %155 to i64
  %157 = shl i64 %153, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %204

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162, %145
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %11, align 4
  %166 = sdiv i32 %165, %164
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = call i64 @int_sqrt(i64 %173)
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = sub nsw i32 %176, 1024
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, 1023
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  store i8* %181, i8** %7, align 8
  %182 = load i32, i32* %11, align 4
  %183 = and i32 %182, 1023
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  store i8* %185, i8** %8, align 8
  br label %186

186:                                              ; preds = %163, %62, %49
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy* %187, i8* %188, i8* %189)
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %192 = call i32 @mod_phy_reg(%struct.brcms_phy* %191, i32 1611, i32 1, i32 1)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %194 = call i32 @mod_phy_reg(%struct.brcms_phy* %193, i32 1611, i32 8, i32 8)
  %195 = load i8*, i8** %7, align 8
  %196 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %20, align 8
  %197 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %20, align 8
  %201 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %186, %161, %144, %119, %95
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #2

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy*, i8*, i8*) #2

declare dso_local i32 @wlc_lcnphy_rx_iq_est(%struct.brcms_phy*, i8*, i32, %struct.lcnphy_iq_est*) #2

declare dso_local i32 @wlc_phy_nbits(i64) #2

declare dso_local i64 @int_sqrt(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
