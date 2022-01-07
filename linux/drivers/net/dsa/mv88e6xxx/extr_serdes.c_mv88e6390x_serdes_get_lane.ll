; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6390x_serdes_get_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_serdes.c_mv88e6390x_serdes_get_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MV88E6XXX_PORT_STS_CMODE_1000BASEX = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_SGMII = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_2500BASEX = common dso_local global i32 0, align 4
@MV88E6390_PORT9_LANE1 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_RXAUI = common dso_local global i32 0, align 4
@MV88E6390_PORT9_LANE2 = common dso_local global i32 0, align 4
@MV88E6390_PORT9_LANE3 = common dso_local global i32 0, align 4
@MV88E6390_PORT10_LANE1 = common dso_local global i32 0, align 4
@MV88E6390_PORT10_LANE2 = common dso_local global i32 0, align 4
@MV88E6390_PORT10_LANE3 = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_STS_CMODE_XAUI = common dso_local global i32 0, align 4
@MV88E6390_PORT9_LANE0 = common dso_local global i32 0, align 4
@MV88E6390_PORT10_LANE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6390x_serdes_get_lane(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %10 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %18 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 10
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 9
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %212 [
    i32 2, label %30
    i32 3, label %50
    i32 4, label %74
    i32 5, label %98
    i32 6, label %118
    i32 7, label %142
    i32 9, label %166
    i32 10, label %189
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @MV88E6390_PORT9_LANE1, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %42
  br label %49

49:                                               ; preds = %48, %38
  br label %212

50:                                               ; preds = %2
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %58, %54, %50
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @MV88E6390_PORT9_LANE2, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %62
  br label %212

74:                                               ; preds = %2
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86, %82, %78, %74
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @MV88E6390_PORT9_LANE3, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96, %86
  br label %212

98:                                               ; preds = %2
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106, %102, %98
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* @MV88E6390_PORT10_LANE1, align 4
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %106
  br label %212

118:                                              ; preds = %2
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130, %126, %122, %118
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @MV88E6390_PORT10_LANE2, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %138, %134
  br label %141

141:                                              ; preds = %140, %130
  br label %212

142:                                              ; preds = %2
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154, %150, %146, %142
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @MV88E6390_PORT10_LANE3, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %162, %158
  br label %165

165:                                              ; preds = %164, %154
  br label %212

166:                                              ; preds = %2
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %186, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %186, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_XAUI, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182, %178, %174, %170, %166
  %187 = load i32, i32* @MV88E6390_PORT9_LANE0, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %182
  br label %212

189:                                              ; preds = %2
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_1000BASEX, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %209, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_SGMII, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %209, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_2500BASEX, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %209, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_XAUI, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @MV88E6XXX_PORT_STS_CMODE_RXAUI, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205, %201, %197, %193, %189
  %210 = load i32, i32* @MV88E6390_PORT10_LANE0, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %209, %205
  br label %212

212:                                              ; preds = %2, %211, %188, %165, %141, %117, %97, %73, %49
  %213 = load i32, i32* %8, align 4
  ret i32 %213
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
