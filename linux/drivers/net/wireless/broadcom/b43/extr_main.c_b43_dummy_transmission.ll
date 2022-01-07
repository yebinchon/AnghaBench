; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_dummy_transmission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_dummy_transmission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__*, %struct.b43_phy }
%struct.TYPE_2__ = type { i32 }
%struct.b43_phy = type { i32, i32, i32 }

@__const.b43_dummy_transmission.buffer = private unnamed_addr constant [5 x i32] [i32 0, i32 13893632, i32 0, i32 16777216, i32 0], align 16
@B43_MMIO_XMTSEL = common dso_local global i32 0, align 4
@B43_MMIO_WEPCTL = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_PHYCTL = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_PHYCTL1 = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_WM_0 = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_WM_1 = common dso_local global i32 0, align 4
@B43_MMIO_XMTTPLATETXPTR = common dso_local global i32 0, align 4
@B43_MMIO_XMTTXCNT = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_CTL = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_AUX = common dso_local global i32 0, align 4
@B43_MMIO_TXE0_STATUS = common dso_local global i32 0, align 4
@B43_MMIO_IFSSTAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_dummy_transmission(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  store %struct.b43_phy* %13, %struct.b43_phy** %7, align 8
  %14 = bitcast [5 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([5 x i32]* @__const.b43_dummy_transmission.buffer to i8*), i64 20, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  store i32 30, i32* %9, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 131532, i32* %18, align 16
  br label %21

19:                                               ; preds = %3
  store i32 250, i32* %9, align 4
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 754798, i32* %20, align 16
  br label %21

21:                                               ; preds = %19, %17
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %27, 4
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @b43_ram_write(%struct.b43_wldev* %26, i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %39 = load i32, i32* @B43_MMIO_XMTSEL, align 4
  %40 = call i32 @b43_write16(%struct.b43_wldev* %38, i32 %39, i32 0)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 11
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = load i32, i32* @B43_MMIO_WEPCTL, align 4
  %50 = call i32 @b43_write16(%struct.b43_wldev* %48, i32 %49, i32 0)
  br label %55

51:                                               ; preds = %37
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %53 = load i32, i32* @B43_MMIO_WEPCTL, align 4
  %54 = call i32 @b43_write16(%struct.b43_wldev* %52, i32 %53, i32 256)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 65, i32 64
  store i32 %59, i32* %10, align 4
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %61 = load i32, i32* @B43_MMIO_TXE0_PHYCTL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @b43_write16(%struct.b43_wldev* %60, i32 %61, i32 %62)
  %64 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %65 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %78, label %68

68:                                               ; preds = %55
  %69 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %70 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %75 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 130
  br i1 %77, label %78, label %82

78:                                               ; preds = %73, %68, %55
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %80 = load i32, i32* @B43_MMIO_TXE0_PHYCTL1, align 4
  %81 = call i32 @b43_write16(%struct.b43_wldev* %79, i32 %80, i32 6658)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %84 = load i32, i32* @B43_MMIO_TXE0_WM_0, align 4
  %85 = call i32 @b43_write16(%struct.b43_wldev* %83, i32 %84, i32 0)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %87 = load i32, i32* @B43_MMIO_TXE0_WM_1, align 4
  %88 = call i32 @b43_write16(%struct.b43_wldev* %86, i32 %87, i32 0)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %90 = load i32, i32* @B43_MMIO_XMTTPLATETXPTR, align 4
  %91 = call i32 @b43_write16(%struct.b43_wldev* %89, i32 %90, i32 0)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %93 = load i32, i32* @B43_MMIO_XMTTXCNT, align 4
  %94 = call i32 @b43_write16(%struct.b43_wldev* %92, i32 %93, i32 20)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %96 = load i32, i32* @B43_MMIO_XMTSEL, align 4
  %97 = call i32 @b43_write16(%struct.b43_wldev* %95, i32 %96, i32 2086)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %99 = load i32, i32* @B43_MMIO_TXE0_CTL, align 4
  %100 = call i32 @b43_write16(%struct.b43_wldev* %98, i32 %99, i32 0)
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %82
  %104 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %105 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %103, %82
  %110 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %111 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %121 [
    i32 128, label %113
    i32 130, label %113
    i32 129, label %117
  ]

113:                                              ; preds = %109, %109
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %115 = load i32, i32* @B43_MMIO_TXE0_AUX, align 4
  %116 = call i32 @b43_write16(%struct.b43_wldev* %114, i32 %115, i32 208)
  br label %125

117:                                              ; preds = %109
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %119 = load i32, i32* @B43_MMIO_TXE0_AUX, align 4
  %120 = call i32 @b43_write16(%struct.b43_wldev* %118, i32 %119, i32 80)
  br label %125

121:                                              ; preds = %109
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %123 = load i32, i32* @B43_MMIO_TXE0_AUX, align 4
  %124 = call i32 @b43_write16(%struct.b43_wldev* %122, i32 %123, i32 48)
  br label %125

125:                                              ; preds = %121, %117, %113
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %127 = load i32, i32* @B43_MMIO_TXE0_AUX, align 4
  %128 = call i32 @b43_read16(%struct.b43_wldev* %126, i32 %127)
  %129 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %130 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 8272
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp sle i32 %136, 5
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %140 = call i32 @b43_radio_write16(%struct.b43_wldev* %139, i32 81, i32 23)
  br label %141

141:                                              ; preds = %138, %133, %125
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %148 = load i32, i32* @B43_MMIO_TXE0_STATUS, align 4
  %149 = call i32 @b43_read16(%struct.b43_wldev* %147, i32 %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %159

154:                                              ; preds = %146
  %155 = call i32 @udelay(i32 10)
  br label %156

156:                                              ; preds = %154
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %142

159:                                              ; preds = %153, %142
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %173, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp ult i32 %161, 10
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %165 = load i32, i32* @B43_MMIO_TXE0_STATUS, align 4
  %166 = call i32 @b43_read16(%struct.b43_wldev* %164, i32 %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = and i32 %167, 1024
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %176

171:                                              ; preds = %163
  %172 = call i32 @udelay(i32 10)
  br label %173

173:                                              ; preds = %171
  %174 = load i32, i32* %8, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %160

176:                                              ; preds = %170, %160
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %190, %176
  %178 = load i32, i32* %8, align 4
  %179 = icmp ult i32 %178, 25
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %182 = load i32, i32* @B43_MMIO_IFSSTAT, align 4
  %183 = call i32 @b43_read16(%struct.b43_wldev* %181, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = and i32 %184, 256
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %180
  br label %193

188:                                              ; preds = %180
  %189 = call i32 @udelay(i32 10)
  br label %190

190:                                              ; preds = %188
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %177

193:                                              ; preds = %187, %177
  %194 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %195 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 8272
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %200 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp sle i32 %201, 5
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %205 = call i32 @b43_radio_write16(%struct.b43_wldev* %204, i32 81, i32 55)
  br label %206

206:                                              ; preds = %203, %198, %193
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_ram_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
