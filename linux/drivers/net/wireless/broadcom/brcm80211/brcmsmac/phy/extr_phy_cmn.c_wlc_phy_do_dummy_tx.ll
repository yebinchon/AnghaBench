; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_do_dummy_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_do_dummy_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__*, %struct.bcma_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bcma_device = type { i32 }

@xmtsel = common dso_local global i32 0, align 4
@wepctl = common dso_local global i32 0, align 4
@txe_phyctl = common dso_local global i32 0, align 4
@PHY_TXC_ANT_0 = common dso_local global i32 0, align 4
@txe_phyctl1 = common dso_local global i32 0, align 4
@txe_wm_0 = common dso_local global i32 0, align 4
@txe_wm_1 = common dso_local global i32 0, align 4
@xmttplatetxptr = common dso_local global i32 0, align 4
@xmttxcnt = common dso_local global i32 0, align 4
@txe_ctl = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@txe_aux = common dso_local global i32 0, align 4
@txe_status = common dso_local global i32 0, align 4
@ifsstat = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@DUMMY_PKT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_do_dummy_tx(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [20 x i32], align 16
  %11 = alloca [20 x i32], align 16
  %12 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 1
  %15 = load %struct.bcma_device*, %struct.bcma_device** %14, align 8
  store %struct.bcma_device* %15, %struct.bcma_device** %7, align 8
  %16 = bitcast [20 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 80, i1 false)
  %17 = bitcast i8* %16 to [20 x i32]*
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i32 0, i32 0
  store i32 204, i32* %18, align 16
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i32 0, i32 2
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i32 0, i32 6
  store i32 212, i32* %21, align 8
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i32 0, i32 15
  store i32 1, i32* %22, align 4
  %23 = bitcast [20 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 80, i1 false)
  %24 = bitcast i8* %23 to [20 x i32]*
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %24, i32 0, i32 0
  store i32 110, i32* %25, align 16
  %26 = getelementptr inbounds [20 x i32], [20 x i32]* %24, i32 0, i32 1
  store i32 132, i32* %26, align 4
  %27 = getelementptr inbounds [20 x i32], [20 x i32]* %24, i32 0, i32 2
  store i32 11, i32* %27, align 8
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %24, i32 0, i32 6
  store i32 212, i32* %28, align 8
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %24, i32 0, i32 15
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  br label %36

34:                                               ; preds = %3
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32* [ %33, %32 ], [ %35, %34 ]
  store i32* %37, i32** %12, align 8
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @wlapi_bmac_write_template_ram(i32 %42, i32 0, i32 20, i32* %43)
  %45 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %46 = load i32, i32* @xmtsel, align 4
  %47 = call i32 @D11REGOFFS(i32 %46)
  %48 = call i32 @bcma_write16(%struct.bcma_device* %45, i32 %47, i32 0)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %50 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @D11REV_GE(i32 %53, i32 11)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %58 = load i32, i32* @wepctl, align 4
  %59 = call i32 @D11REGOFFS(i32 %58)
  %60 = call i32 @bcma_write16(%struct.bcma_device* %57, i32 %59, i32 256)
  br label %66

61:                                               ; preds = %36
  %62 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %63 = load i32, i32* @wepctl, align 4
  %64 = call i32 @D11REGOFFS(i32 %63)
  %65 = call i32 @bcma_write16(%struct.bcma_device* %62, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %68 = load i32, i32* @txe_phyctl, align 4
  %69 = call i32 @D11REGOFFS(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load i32, i32* @PHY_TXC_ANT_0, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @bcma_write16(%struct.bcma_device* %67, i32 %69, i32 %75)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %78 = call i64 @ISNPHY(%struct.brcms_phy* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %66
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %82 = call i64 @ISLCNPHY(%struct.brcms_phy* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %66
  %85 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %86 = load i32, i32* @txe_phyctl1, align 4
  %87 = call i32 @D11REGOFFS(i32 %86)
  %88 = call i32 @bcma_write16(%struct.bcma_device* %85, i32 %87, i32 6658)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %91 = load i32, i32* @txe_wm_0, align 4
  %92 = call i32 @D11REGOFFS(i32 %91)
  %93 = call i32 @bcma_write16(%struct.bcma_device* %90, i32 %92, i32 0)
  %94 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %95 = load i32, i32* @txe_wm_1, align 4
  %96 = call i32 @D11REGOFFS(i32 %95)
  %97 = call i32 @bcma_write16(%struct.bcma_device* %94, i32 %96, i32 0)
  %98 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %99 = load i32, i32* @xmttplatetxptr, align 4
  %100 = call i32 @D11REGOFFS(i32 %99)
  %101 = call i32 @bcma_write16(%struct.bcma_device* %98, i32 %100, i32 0)
  %102 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %103 = load i32, i32* @xmttxcnt, align 4
  %104 = call i32 @D11REGOFFS(i32 %103)
  %105 = call i32 @bcma_write16(%struct.bcma_device* %102, i32 %104, i32 20)
  %106 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %107 = load i32, i32* @xmtsel, align 4
  %108 = call i32 @D11REGOFFS(i32 %107)
  %109 = call i32 @bcma_write16(%struct.bcma_device* %106, i32 %108, i32 2086)
  %110 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %111 = load i32, i32* @txe_ctl, align 4
  %112 = call i32 @D11REGOFFS(i32 %111)
  %113 = call i32 @bcma_write16(%struct.bcma_device* %110, i32 %112, i32 0)
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %89
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %118 = call i64 @ISNPHY(%struct.brcms_phy* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %122 = load i32, i32* @OFF, align 4
  %123 = call i32 @wlc_phy_pa_override_nphy(%struct.brcms_phy* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %89
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %127 = call i64 @ISNPHY(%struct.brcms_phy* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %131 = call i64 @ISLCNPHY(%struct.brcms_phy* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129, %125
  %134 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %135 = load i32, i32* @txe_aux, align 4
  %136 = call i32 @D11REGOFFS(i32 %135)
  %137 = call i32 @bcma_write16(%struct.bcma_device* %134, i32 %136, i32 208)
  br label %143

138:                                              ; preds = %129
  %139 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %140 = load i32, i32* @txe_aux, align 4
  %141 = call i32 @D11REGOFFS(i32 %140)
  %142 = call i32 @bcma_write16(%struct.bcma_device* %139, i32 %141, i32 48)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %145 = load i32, i32* @txe_aux, align 4
  %146 = call i32 @D11REGOFFS(i32 %145)
  %147 = call i32 @bcma_read16(%struct.bcma_device* %144, i32 %146)
  store i32 0, i32* %8, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 30, i32 250
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %166, %143
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %159 = load i32, i32* @txe_status, align 4
  %160 = call i32 @D11REGOFFS(i32 %159)
  %161 = call i32 @bcma_read16(%struct.bcma_device* %158, i32 %160)
  %162 = and i32 %161, 128
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %157, %152
  %165 = phi i1 [ false, %152 ], [ %163, %157 ]
  br i1 %165, label %166, label %168

166:                                              ; preds = %164
  %167 = call i32 @udelay(i32 10)
  br label %152

168:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %182, %168
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  %172 = icmp slt i32 %170, 10
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %175 = load i32, i32* @txe_status, align 4
  %176 = call i32 @D11REGOFFS(i32 %175)
  %177 = call i32 @bcma_read16(%struct.bcma_device* %174, i32 %176)
  %178 = and i32 %177, 1024
  %179 = icmp eq i32 %178, 0
  br label %180

180:                                              ; preds = %173, %169
  %181 = phi i1 [ false, %169 ], [ %179, %173 ]
  br i1 %181, label %182, label %184

182:                                              ; preds = %180
  %183 = call i32 @udelay(i32 10)
  br label %169

184:                                              ; preds = %180
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %198, %184
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  %188 = icmp slt i32 %186, 10
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %191 = load i32, i32* @ifsstat, align 4
  %192 = call i32 @D11REGOFFS(i32 %191)
  %193 = call i32 @bcma_read16(%struct.bcma_device* %190, i32 %192)
  %194 = and i32 %193, 256
  %195 = icmp ne i32 %194, 0
  br label %196

196:                                              ; preds = %189, %185
  %197 = phi i1 [ false, %185 ], [ %195, %189 ]
  br i1 %197, label %198, label %200

198:                                              ; preds = %196
  %199 = call i32 @udelay(i32 10)
  br label %185

200:                                              ; preds = %196
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %200
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %205 = call i64 @ISNPHY(%struct.brcms_phy* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %209 = load i32, i32* @ON, align 4
  %210 = call i32 @wlc_phy_pa_override_nphy(%struct.brcms_phy* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %203
  br label %212

212:                                              ; preds = %211, %200
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wlapi_bmac_write_template_ram(i32, i32, i32, i32*) #2

declare dso_local i32 @bcma_write16(%struct.bcma_device*, i32, i32) #2

declare dso_local i32 @D11REGOFFS(i32) #2

declare dso_local i64 @D11REV_GE(i32, i32) #2

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #2

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_pa_override_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @bcma_read16(%struct.bcma_device*, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
