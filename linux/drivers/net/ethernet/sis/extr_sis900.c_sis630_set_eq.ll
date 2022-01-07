; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis630_set_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis630_set_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sis900_private = type { i64, i32 }

@SIS630E_900_REV = common dso_local global i64 0, align 8
@SIS630EA1_900_REV = common dso_local global i64 0, align 8
@SIS630A_900_REV = common dso_local global i64 0, align 8
@SIS630ET_900_REV = common dso_local global i64 0, align 8
@MII_RESV = common dso_local global i32 0, align 4
@SIS630B0 = common dso_local global i64 0, align 8
@SIS630B1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @sis630_set_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis630_set_eq(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sis900_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.sis900_private* @netdev_priv(%struct.net_device* %12)
  store %struct.sis900_private* %13, %struct.sis900_private** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 10, i32* %11, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @SIS630E_900_REV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @SIS630EA1_900_REV, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SIS630A_900_REV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @SIS630ET_900_REV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %235

30:                                               ; preds = %25, %21, %17, %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i64 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %192

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %37 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MII_RESV, align 4
  %40 = call i32 @mdio_read(%struct.net_device* %35, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %43 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MII_RESV, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 8704, %46
  %48 = and i32 %47, 49151
  %49 = call i32 @mdio_write(%struct.net_device* %41, i32 %44, i32 %45, i32 %48)
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %86, %34
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %57 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MII_RESV, align 4
  %60 = call i32 @mdio_read(%struct.net_device* %55, i32 %58, i32 %59)
  %61 = and i32 248, %60
  %62 = ashr i32 %61, 3
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %9, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %50

89:                                               ; preds = %50
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @SIS630E_900_REV, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @SIS630EA1_900_REV, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @SIS630ET_900_REV, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %142

101:                                              ; preds = %97, %93, %89
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 5
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %7, align 4
  br label %141

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %107, 5
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 15
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 2
  br label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  store i32 %123, i32* %7, align 4
  br label %140

124:                                              ; preds = %109, %106
  %125 = load i32, i32* %8, align 4
  %126 = icmp sge i32 %125, 15
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 6
  br label %137

134:                                              ; preds = %127
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 5
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i32 [ %133, %131 ], [ %136, %134 ]
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %137, %124
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %104
  br label %142

142:                                              ; preds = %141, %97
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* @SIS630A_900_REV, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %142
  %147 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %148 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @SIS630B0, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %154 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SIS630B1, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %152, %146
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 3, i32* %7, align 4
  br label %168

162:                                              ; preds = %158
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %163, %164
  %166 = add nsw i32 %165, 1
  %167 = sdiv i32 %166, 2
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %162, %161
  br label %169

169:                                              ; preds = %168, %152, %142
  %170 = load %struct.net_device*, %struct.net_device** %3, align 8
  %171 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %172 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @MII_RESV, align 4
  %175 = call i32 @mdio_read(%struct.net_device* %170, i32 %173, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = and i32 %176, 65287
  %178 = load i32, i32* %7, align 4
  %179 = shl i32 %178, 3
  %180 = and i32 %179, 248
  %181 = or i32 %177, %180
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, 24576
  %184 = and i32 %183, 65023
  store i32 %184, i32* %6, align 4
  %185 = load %struct.net_device*, %struct.net_device** %3, align 8
  %186 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %187 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @MII_RESV, align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @mdio_write(%struct.net_device* %185, i32 %188, i32 %189, i32 %190)
  br label %235

192:                                              ; preds = %30
  %193 = load %struct.net_device*, %struct.net_device** %3, align 8
  %194 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %195 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @MII_RESV, align 4
  %198 = call i32 @mdio_read(%struct.net_device* %193, i32 %196, i32 %197)
  store i32 %198, i32* %6, align 4
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @SIS630A_900_REV, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %192
  %203 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %204 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SIS630B0, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %210 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SIS630B1, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %208, %202
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %217 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MII_RESV, align 4
  %220 = load i32, i32* %6, align 4
  %221 = or i32 %220, 8704
  %222 = and i32 %221, 49151
  %223 = call i32 @mdio_write(%struct.net_device* %215, i32 %218, i32 %219, i32 %222)
  br label %234

224:                                              ; preds = %208, %192
  %225 = load %struct.net_device*, %struct.net_device** %3, align 8
  %226 = load %struct.sis900_private*, %struct.sis900_private** %5, align 8
  %227 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @MII_RESV, align 4
  %230 = load i32, i32* %6, align 4
  %231 = or i32 %230, 8192
  %232 = and i32 %231, 49151
  %233 = call i32 @mdio_write(%struct.net_device* %225, i32 %228, i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %224, %214
  br label %235

235:                                              ; preds = %29, %234, %169
  ret void
}

declare dso_local %struct.sis900_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
