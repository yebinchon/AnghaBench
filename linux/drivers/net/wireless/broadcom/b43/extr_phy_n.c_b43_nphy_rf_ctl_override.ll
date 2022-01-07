; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_rf_control_override_rev3 = type { i32, i32, i32, i32, i32, i32 }
%struct.nphy_rf_control_override_rev2 = type { i32, i32, i32, i32 }
%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Unsupported RF Ctrl Override call\0A\00", align 1
@tbl_rf_control_override_rev3 = common dso_local global %struct.nphy_rf_control_override_rev3* null, align 8
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@tbl_rf_control_override_rev2 = common dso_local global %struct.nphy_rf_control_override_rev2* null, align 8
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32)* @b43_nphy_rf_ctl_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_override(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nphy_rf_control_override_rev3*, align 8
  %17 = alloca %struct.nphy_rf_control_override_rev2*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @fls(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = call i32 @B43_WARN_ON(i32 %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 3
  br i1 %31, label %32, label %126

32:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %122, %32
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %125

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %47

42:                                               ; preds = %39, %36
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @b43err(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %221

47:                                               ; preds = %39
  %48 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** @tbl_rf_control_override_rev3, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %48, i64 %51
  store %struct.nphy_rf_control_override_rev3* %52, %struct.nphy_rf_control_override_rev3** %16, align 8
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %57 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  br label %63

59:                                               ; preds = %47
  %60 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %61 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %58, %55 ], [ %62, %59 ]
  %65 = call i32 @B43_PHY_N(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %70 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  br label %76

72:                                               ; preds = %63
  %73 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %74 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %71, %68 ], [ %75, %72 ]
  %78 = call i32 @B43_PHY_N(i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %7, align 4
  %85 = xor i32 %84, -1
  %86 = call i32 @b43_phy_mask(%struct.b43_wldev* %82, i32 %83, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %90 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = call i32 @b43_phy_mask(%struct.b43_wldev* %87, i32 %88, i32 %92)
  br label %121

94:                                               ; preds = %76
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 1, %98
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %97, %94
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @b43_phy_set(%struct.b43_wldev* %104, i32 %105, i32 %106)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %111 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.nphy_rf_control_override_rev3*, %struct.nphy_rf_control_override_rev3** %16, align 8
  %116 = getelementptr inbounds %struct.nphy_rf_control_override_rev3, %struct.nphy_rf_control_override_rev3* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %114, %117
  %119 = call i32 @b43_phy_maskset(%struct.b43_wldev* %108, i32 %109, i32 %113, i32 %118)
  br label %120

120:                                              ; preds = %103, %97
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %33

125:                                              ; preds = %33
  br label %221

126:                                              ; preds = %5
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %131 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %132 = load i32, i32* %7, align 4
  %133 = xor i32 %132, -1
  %134 = call i32 @b43_phy_mask(%struct.b43_wldev* %130, i32 %131, i32 %133)
  store i32 0, i32* %8, align 4
  br label %140

135:                                              ; preds = %126
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %137 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @b43_phy_set(%struct.b43_wldev* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %129
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %217, %140
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %220

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4
  %146 = icmp sle i32 %145, 1
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 16
  br i1 %149, label %150, label %155

150:                                              ; preds = %147, %144
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %152 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @b43err(i32 %153, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %221

155:                                              ; preds = %147
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 10
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = icmp sge i32 %162, 13
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* %12, align 4
  %166 = icmp sle i32 %165, 15
  br i1 %166, label %167, label %168

167:                                              ; preds = %164, %158, %155
  store i32 1, i32* %9, align 4
  br label %168

168:                                              ; preds = %167, %164, %161
  %169 = load %struct.nphy_rf_control_override_rev2*, %struct.nphy_rf_control_override_rev2** @tbl_rf_control_override_rev2, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sub nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.nphy_rf_control_override_rev2, %struct.nphy_rf_control_override_rev2* %169, i64 %172
  store %struct.nphy_rf_control_override_rev2* %173, %struct.nphy_rf_control_override_rev2** %17, align 8
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load %struct.nphy_rf_control_override_rev2*, %struct.nphy_rf_control_override_rev2** %17, align 8
  %178 = getelementptr inbounds %struct.nphy_rf_control_override_rev2, %struct.nphy_rf_control_override_rev2* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  br label %184

180:                                              ; preds = %168
  %181 = load %struct.nphy_rf_control_override_rev2*, %struct.nphy_rf_control_override_rev2** %17, align 8
  %182 = getelementptr inbounds %struct.nphy_rf_control_override_rev2, %struct.nphy_rf_control_override_rev2* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %179, %176 ], [ %183, %180 ]
  %186 = call i32 @B43_PHY_N(i32 %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %11, align 4
  %188 = shl i32 1, %187
  %189 = load i32, i32* %9, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %184
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.nphy_rf_control_override_rev2*, %struct.nphy_rf_control_override_rev2** %17, align 8
  %196 = getelementptr inbounds %struct.nphy_rf_control_override_rev2, %struct.nphy_rf_control_override_rev2* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.nphy_rf_control_override_rev2*, %struct.nphy_rf_control_override_rev2** %17, align 8
  %201 = getelementptr inbounds %struct.nphy_rf_control_override_rev2, %struct.nphy_rf_control_override_rev2* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %199, %202
  %204 = call i32 @b43_phy_maskset(%struct.b43_wldev* %193, i32 %194, i32 %198, i32 %203)
  br label %205

205:                                              ; preds = %192, %184
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %207 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %208 = call i32 @b43_phy_set(%struct.b43_wldev* %206, i32 %207, i32 1)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %210 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %211 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %212 = call i32 @b43_phy_set(%struct.b43_wldev* %209, i32 %210, i32 %211)
  %213 = call i32 @udelay(i32 1)
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %215 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %216 = call i32 @b43_phy_mask(%struct.b43_wldev* %214, i32 %215, i32 65534)
  br label %217

217:                                              ; preds = %205
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %141

220:                                              ; preds = %141
  br label %221

221:                                              ; preds = %42, %150, %220, %125
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @B43_PHY_N(i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
