; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_intr_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_intr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.net_device*, %struct.e1000_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@igb_test_intr = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"testing %s interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unshared\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICS = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*)* @igb_intr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_intr_test(%struct.igb_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 5
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @igb_test_intr, align 4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %42 = call i64 @request_irq(i32 %36, i32 %37, i32 0, i32 %40, %struct.igb_adapter* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32*, i32** %5, align 8
  store i32 1, i32* %45, align 4
  store i32 -1, i32* %3, align 4
  br label %231

46:                                               ; preds = %30
  br label %92

47:                                               ; preds = %2
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @igb_test_intr, align 4
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %61 = call i64 @request_irq(i32 %55, i32 %56, i32 0, i32 %59, %struct.igb_adapter* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32*, i32** %5, align 8
  store i32 1, i32* %64, align 4
  store i32 -1, i32* %3, align 4
  br label %231

65:                                               ; preds = %54
  br label %91

66:                                               ; preds = %47
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @igb_test_intr, align 4
  %69 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %70 = load %struct.net_device*, %struct.net_device** %7, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %74 = call i64 @request_irq(i32 %67, i32 %68, i32 %69, i32 %72, %struct.igb_adapter* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %90

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @igb_test_intr, align 4
  %80 = load i32, i32* @IRQF_SHARED, align 4
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %85 = call i64 @request_irq(i32 %78, i32 %79, i32 %80, i32 %83, %struct.igb_adapter* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32*, i32** %5, align 8
  store i32 1, i32* %88, align 4
  store i32 -1, i32* %3, align 4
  br label %231

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %76
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %46
  %93 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @E1000_IMC, align 4
  %103 = call i32 @wr32(i32 %102, i32 -1)
  %104 = call i32 (...) @wrfl()
  %105 = call i32 @usleep_range(i32 10000, i32 11000)
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %114 [
    i32 134, label %110
    i32 133, label %111
    i32 132, label %112
    i32 129, label %113
    i32 128, label %113
    i32 131, label %113
    i32 130, label %113
  ]

110:                                              ; preds = %92
  store i32 938770141, i32* %9, align 4
  br label %115

111:                                              ; preds = %92
  store i32 2010446845, i32* %9, align 4
  br label %115

112:                                              ; preds = %92
  store i32 2010971861, i32* %9, align 4
  br label %115

113:                                              ; preds = %92, %92, %92, %92
  store i32 2010971861, i32* %9, align 4
  br label %115

114:                                              ; preds = %92
  store i32 2147483647, i32* %9, align 4
  br label %115

115:                                              ; preds = %114, %113, %112, %111, %110
  br label %116

116:                                              ; preds = %201, %115
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 31
  br i1 %118, label %119, label %204

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @BIT(i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  br label %201

127:                                              ; preds = %119
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %127
  %131 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %132 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* @E1000_ICR, align 4
  %134 = call i32 @wr32(i32 %133, i32 -1)
  %135 = load i32, i32* @E1000_IMC, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @wr32(i32 %135, i32 %136)
  %138 = load i32, i32* @E1000_ICS, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @wr32(i32 %138, i32 %139)
  %141 = call i32 (...) @wrfl()
  %142 = call i32 @usleep_range(i32 10000, i32 11000)
  %143 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %130
  %150 = load i32*, i32** %5, align 8
  store i32 3, i32* %150, align 4
  br label %204

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %127
  %153 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %154 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load i32, i32* @E1000_ICR, align 4
  %156 = call i32 @wr32(i32 %155, i32 -1)
  %157 = load i32, i32* @E1000_IMS, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @wr32(i32 %157, i32 %158)
  %160 = load i32, i32* @E1000_ICS, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @wr32(i32 %160, i32 %161)
  %163 = call i32 (...) @wrfl()
  %164 = call i32 @usleep_range(i32 10000, i32 11000)
  %165 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %166 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %152
  %172 = load i32*, i32** %5, align 8
  store i32 4, i32* %172, align 4
  br label %204

173:                                              ; preds = %152
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %200, label %176

176:                                              ; preds = %173
  %177 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %178 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = load i32, i32* @E1000_ICR, align 4
  %180 = call i32 @wr32(i32 %179, i32 -1)
  %181 = load i32, i32* @E1000_IMC, align 4
  %182 = load i32, i32* %8, align 4
  %183 = xor i32 %182, -1
  %184 = call i32 @wr32(i32 %181, i32 %183)
  %185 = load i32, i32* @E1000_ICS, align 4
  %186 = load i32, i32* %8, align 4
  %187 = xor i32 %186, -1
  %188 = call i32 @wr32(i32 %185, i32 %187)
  %189 = call i32 (...) @wrfl()
  %190 = call i32 @usleep_range(i32 10000, i32 11000)
  %191 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %192 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %176
  %198 = load i32*, i32** %5, align 8
  store i32 5, i32* %198, align 4
  br label %204

199:                                              ; preds = %176
  br label %200

200:                                              ; preds = %199, %173
  br label %201

201:                                              ; preds = %200, %126
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %116

204:                                              ; preds = %197, %171, %149, %116
  %205 = load i32, i32* @E1000_IMC, align 4
  %206 = call i32 @wr32(i32 %205, i32 -1)
  %207 = call i32 (...) @wrfl()
  %208 = call i32 @usleep_range(i32 10000, i32 11000)
  %209 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %210 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %204
  %216 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %217 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %216, i32 0, i32 2
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %223 = call i32 @free_irq(i32 %221, %struct.igb_adapter* %222)
  br label %228

224:                                              ; preds = %204
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.igb_adapter*, %struct.igb_adapter** %4, align 8
  %227 = call i32 @free_irq(i32 %225, %struct.igb_adapter* %226)
  br label %228

228:                                              ; preds = %224, %215
  %229 = load i32*, i32** %5, align 8
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %228, %87, %63, %44
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.igb_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @free_irq(i32, %struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
