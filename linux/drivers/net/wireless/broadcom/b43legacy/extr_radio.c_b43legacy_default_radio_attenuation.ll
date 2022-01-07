; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_default_radio_attenuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_default_radio_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_8__*, %struct.b43legacy_phy }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32, i32 }

@B43legacy_PHYTYPE_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_default_radio_attenuation(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 1
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  store i32 65535, i32* %4, align 4
  %7 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %167 [
    i32 8275, label %10
    i32 8272, label %16
  ]

10:                                               ; preds = %1
  %11 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 1, label %14
  ]

14:                                               ; preds = %10
  store i32 6, i32* %4, align 4
  br label %15

15:                                               ; preds = %10, %14
  br label %167

16:                                               ; preds = %1
  %17 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %18 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %165 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %98
    i32 3, label %160
    i32 4, label %161
    i32 5, label %161
    i32 6, label %162
    i32 7, label %162
    i32 8, label %163
    i32 9, label %164
  ]

20:                                               ; preds = %16
  store i32 5, i32* %4, align 4
  br label %166

21:                                               ; preds = %16
  %22 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %23 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @B43legacy_PHYTYPE_G, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %29 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1057
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 30
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 3, i32* %4, align 4
  br label %69

52:                                               ; preds = %41, %31, %27
  %53 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %54 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %58 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1046
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 3, i32* %4, align 4
  br label %68

67:                                               ; preds = %56, %52
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %51
  br label %97

70:                                               ; preds = %21
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %72 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1057
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %86 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 30
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 7, i32* %4, align 4
  br label %96

95:                                               ; preds = %84, %74, %70
  store i32 6, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %94
  br label %97

97:                                               ; preds = %96, %69
  br label %166

98:                                               ; preds = %16
  %99 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %100 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @B43legacy_PHYTYPE_G, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %158

104:                                              ; preds = %98
  %105 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %106 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %110 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1057
  br i1 %117, label %118, label %129

118:                                              ; preds = %108
  %119 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %120 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 30
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  store i32 3, i32* %4, align 4
  br label %157

129:                                              ; preds = %118, %108, %104
  %130 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %131 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %135 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1046
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  store i32 5, i32* %4, align 4
  br label %156

144:                                              ; preds = %133, %129
  %145 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %146 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 17184
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i32 4, i32* %4, align 4
  br label %155

154:                                              ; preds = %144
  store i32 3, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %153
  br label %156

156:                                              ; preds = %155, %143
  br label %157

157:                                              ; preds = %156, %128
  br label %159

158:                                              ; preds = %98
  store i32 6, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %157
  br label %166

160:                                              ; preds = %16
  store i32 5, i32* %4, align 4
  br label %166

161:                                              ; preds = %16, %16
  store i32 1, i32* %4, align 4
  br label %166

162:                                              ; preds = %16, %16
  store i32 5, i32* %4, align 4
  br label %166

163:                                              ; preds = %16
  store i32 26, i32* %4, align 4
  br label %166

164:                                              ; preds = %16
  br label %165

165:                                              ; preds = %16, %164
  store i32 5, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %163, %162, %161, %160, %159, %97, %20
  br label %167

167:                                              ; preds = %166, %1, %15
  %168 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %169 = call i64 @is_bcm_board_vendor(%struct.b43legacy_wldev* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %167
  %172 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %173 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1057
  br i1 %180, label %181, label %205

181:                                              ; preds = %171
  %182 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %183 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, 67
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  store i32 2, i32* %4, align 4
  br label %204

192:                                              ; preds = %181
  %193 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %194 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %193, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %200, 81
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  store i32 3, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %192
  br label %204

204:                                              ; preds = %203, %191
  br label %205

205:                                              ; preds = %204, %171, %167
  %206 = load i32, i32* %4, align 4
  %207 = icmp eq i32 %206, 65535
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 5, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i64 @is_bcm_board_vendor(%struct.b43legacy_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
